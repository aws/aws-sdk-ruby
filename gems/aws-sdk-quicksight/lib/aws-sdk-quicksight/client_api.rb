# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::QuickSight
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AccountCustomization = Shapes::StructureShape.new(name: 'AccountCustomization')
    AccountInfo = Shapes::StructureShape.new(name: 'AccountInfo')
    AccountSettings = Shapes::StructureShape.new(name: 'AccountSettings')
    ActionList = Shapes::ListShape.new(name: 'ActionList')
    ActiveIAMPolicyAssignment = Shapes::StructureShape.new(name: 'ActiveIAMPolicyAssignment')
    ActiveIAMPolicyAssignmentList = Shapes::ListShape.new(name: 'ActiveIAMPolicyAssignmentList')
    AdHocFilteringOption = Shapes::StructureShape.new(name: 'AdHocFilteringOption')
    AdditionalDashboardIdList = Shapes::ListShape.new(name: 'AdditionalDashboardIdList')
    AggregationFunction = Shapes::StructureShape.new(name: 'AggregationFunction')
    AggregationFunctionParameters = Shapes::MapShape.new(name: 'AggregationFunctionParameters')
    AggregationSortConfiguration = Shapes::StructureShape.new(name: 'AggregationSortConfiguration')
    AggregationSortConfigurationList = Shapes::ListShape.new(name: 'AggregationSortConfigurationList')
    AliasName = Shapes::StringShape.new(name: 'AliasName')
    AmazonElasticsearchParameters = Shapes::StructureShape.new(name: 'AmazonElasticsearchParameters')
    AmazonOpenSearchParameters = Shapes::StructureShape.new(name: 'AmazonOpenSearchParameters')
    Analysis = Shapes::StructureShape.new(name: 'Analysis')
    AnalysisDefaults = Shapes::StructureShape.new(name: 'AnalysisDefaults')
    AnalysisDefinition = Shapes::StructureShape.new(name: 'AnalysisDefinition')
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
    AnchorDateConfiguration = Shapes::StructureShape.new(name: 'AnchorDateConfiguration')
    AnchorOption = Shapes::StringShape.new(name: 'AnchorOption')
    AnonymousUserDashboardEmbeddingConfiguration = Shapes::StructureShape.new(name: 'AnonymousUserDashboardEmbeddingConfiguration')
    AnonymousUserDashboardVisualEmbeddingConfiguration = Shapes::StructureShape.new(name: 'AnonymousUserDashboardVisualEmbeddingConfiguration')
    AnonymousUserEmbeddingExperienceConfiguration = Shapes::StructureShape.new(name: 'AnonymousUserEmbeddingExperienceConfiguration')
    AnonymousUserQSearchBarEmbeddingConfiguration = Shapes::StructureShape.new(name: 'AnonymousUserQSearchBarEmbeddingConfiguration')
    ArcAxisConfiguration = Shapes::StructureShape.new(name: 'ArcAxisConfiguration')
    ArcAxisDisplayRange = Shapes::StructureShape.new(name: 'ArcAxisDisplayRange')
    ArcConfiguration = Shapes::StructureShape.new(name: 'ArcConfiguration')
    ArcOptions = Shapes::StructureShape.new(name: 'ArcOptions')
    ArcThickness = Shapes::StringShape.new(name: 'ArcThickness')
    ArcThicknessOptions = Shapes::StringShape.new(name: 'ArcThicknessOptions')
    Arn = Shapes::StringShape.new(name: 'Arn')
    ArnList = Shapes::ListShape.new(name: 'ArnList')
    AssetBundleCloudFormationOverridePropertyConfiguration = Shapes::StructureShape.new(name: 'AssetBundleCloudFormationOverridePropertyConfiguration')
    AssetBundleExportFormat = Shapes::StringShape.new(name: 'AssetBundleExportFormat')
    AssetBundleExportJobAnalysisOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobAnalysisOverrideProperties')
    AssetBundleExportJobAnalysisOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobAnalysisOverridePropertiesList')
    AssetBundleExportJobAnalysisPropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobAnalysisPropertyToOverride')
    AssetBundleExportJobAnalysisPropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobAnalysisPropertyToOverrideList')
    AssetBundleExportJobDashboardOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobDashboardOverrideProperties')
    AssetBundleExportJobDashboardOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobDashboardOverridePropertiesList')
    AssetBundleExportJobDashboardPropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobDashboardPropertyToOverride')
    AssetBundleExportJobDashboardPropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobDashboardPropertyToOverrideList')
    AssetBundleExportJobDataSetOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobDataSetOverrideProperties')
    AssetBundleExportJobDataSetOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobDataSetOverridePropertiesList')
    AssetBundleExportJobDataSetPropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobDataSetPropertyToOverride')
    AssetBundleExportJobDataSetPropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobDataSetPropertyToOverrideList')
    AssetBundleExportJobDataSourceOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobDataSourceOverrideProperties')
    AssetBundleExportJobDataSourceOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobDataSourceOverridePropertiesList')
    AssetBundleExportJobDataSourcePropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobDataSourcePropertyToOverride')
    AssetBundleExportJobDataSourcePropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobDataSourcePropertyToOverrideList')
    AssetBundleExportJobError = Shapes::StructureShape.new(name: 'AssetBundleExportJobError')
    AssetBundleExportJobErrorList = Shapes::ListShape.new(name: 'AssetBundleExportJobErrorList')
    AssetBundleExportJobRefreshScheduleOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobRefreshScheduleOverrideProperties')
    AssetBundleExportJobRefreshScheduleOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobRefreshScheduleOverridePropertiesList')
    AssetBundleExportJobRefreshSchedulePropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobRefreshSchedulePropertyToOverride')
    AssetBundleExportJobRefreshSchedulePropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobRefreshSchedulePropertyToOverrideList')
    AssetBundleExportJobResourceIdOverrideConfiguration = Shapes::StructureShape.new(name: 'AssetBundleExportJobResourceIdOverrideConfiguration')
    AssetBundleExportJobStatus = Shapes::StringShape.new(name: 'AssetBundleExportJobStatus')
    AssetBundleExportJobSummary = Shapes::StructureShape.new(name: 'AssetBundleExportJobSummary')
    AssetBundleExportJobSummaryList = Shapes::ListShape.new(name: 'AssetBundleExportJobSummaryList')
    AssetBundleExportJobThemeOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobThemeOverrideProperties')
    AssetBundleExportJobThemeOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobThemeOverridePropertiesList')
    AssetBundleExportJobThemePropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobThemePropertyToOverride')
    AssetBundleExportJobThemePropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobThemePropertyToOverrideList')
    AssetBundleExportJobVPCConnectionOverrideProperties = Shapes::StructureShape.new(name: 'AssetBundleExportJobVPCConnectionOverrideProperties')
    AssetBundleExportJobVPCConnectionOverridePropertiesList = Shapes::ListShape.new(name: 'AssetBundleExportJobVPCConnectionOverridePropertiesList')
    AssetBundleExportJobVPCConnectionPropertyToOverride = Shapes::StringShape.new(name: 'AssetBundleExportJobVPCConnectionPropertyToOverride')
    AssetBundleExportJobVPCConnectionPropertyToOverrideList = Shapes::ListShape.new(name: 'AssetBundleExportJobVPCConnectionPropertyToOverrideList')
    AssetBundleImportBodyBlob = Shapes::BlobShape.new(name: 'AssetBundleImportBodyBlob')
    AssetBundleImportFailureAction = Shapes::StringShape.new(name: 'AssetBundleImportFailureAction')
    AssetBundleImportJobAnalysisOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobAnalysisOverrideParameters')
    AssetBundleImportJobAnalysisOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobAnalysisOverrideParametersList')
    AssetBundleImportJobDashboardOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobDashboardOverrideParameters')
    AssetBundleImportJobDashboardOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobDashboardOverrideParametersList')
    AssetBundleImportJobDataSetOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobDataSetOverrideParameters')
    AssetBundleImportJobDataSetOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobDataSetOverrideParametersList')
    AssetBundleImportJobDataSourceCredentialPair = Shapes::StructureShape.new(name: 'AssetBundleImportJobDataSourceCredentialPair')
    AssetBundleImportJobDataSourceCredentials = Shapes::StructureShape.new(name: 'AssetBundleImportJobDataSourceCredentials')
    AssetBundleImportJobDataSourceOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobDataSourceOverrideParameters')
    AssetBundleImportJobDataSourceOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobDataSourceOverrideParametersList')
    AssetBundleImportJobError = Shapes::StructureShape.new(name: 'AssetBundleImportJobError')
    AssetBundleImportJobErrorList = Shapes::ListShape.new(name: 'AssetBundleImportJobErrorList')
    AssetBundleImportJobOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobOverrideParameters')
    AssetBundleImportJobRefreshScheduleOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobRefreshScheduleOverrideParameters')
    AssetBundleImportJobRefreshScheduleOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobRefreshScheduleOverrideParametersList')
    AssetBundleImportJobResourceIdOverrideConfiguration = Shapes::StructureShape.new(name: 'AssetBundleImportJobResourceIdOverrideConfiguration')
    AssetBundleImportJobStatus = Shapes::StringShape.new(name: 'AssetBundleImportJobStatus')
    AssetBundleImportJobSummary = Shapes::StructureShape.new(name: 'AssetBundleImportJobSummary')
    AssetBundleImportJobSummaryList = Shapes::ListShape.new(name: 'AssetBundleImportJobSummaryList')
    AssetBundleImportJobThemeOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobThemeOverrideParameters')
    AssetBundleImportJobThemeOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobThemeOverrideParametersList')
    AssetBundleImportJobVPCConnectionOverrideParameters = Shapes::StructureShape.new(name: 'AssetBundleImportJobVPCConnectionOverrideParameters')
    AssetBundleImportJobVPCConnectionOverrideParametersList = Shapes::ListShape.new(name: 'AssetBundleImportJobVPCConnectionOverrideParametersList')
    AssetBundleImportSource = Shapes::StructureShape.new(name: 'AssetBundleImportSource')
    AssetBundleImportSourceDescription = Shapes::StructureShape.new(name: 'AssetBundleImportSourceDescription')
    AssetBundleResourceArns = Shapes::ListShape.new(name: 'AssetBundleResourceArns')
    AssignmentStatus = Shapes::StringShape.new(name: 'AssignmentStatus')
    AthenaParameters = Shapes::StructureShape.new(name: 'AthenaParameters')
    AuroraParameters = Shapes::StructureShape.new(name: 'AuroraParameters')
    AuroraPostgreSqlParameters = Shapes::StructureShape.new(name: 'AuroraPostgreSqlParameters')
    AuthenticationMethodOption = Shapes::StringShape.new(name: 'AuthenticationMethodOption')
    AuthorSpecifiedAggregation = Shapes::StringShape.new(name: 'AuthorSpecifiedAggregation')
    AuthorSpecifiedAggregations = Shapes::ListShape.new(name: 'AuthorSpecifiedAggregations')
    AwsAccountId = Shapes::StringShape.new(name: 'AwsAccountId')
    AwsAndAccountId = Shapes::StringShape.new(name: 'AwsAndAccountId')
    AwsIotAnalyticsParameters = Shapes::StructureShape.new(name: 'AwsIotAnalyticsParameters')
    AxisBinding = Shapes::StringShape.new(name: 'AxisBinding')
    AxisDataOptions = Shapes::StructureShape.new(name: 'AxisDataOptions')
    AxisDisplayDataDrivenRange = Shapes::StructureShape.new(name: 'AxisDisplayDataDrivenRange')
    AxisDisplayMinMaxRange = Shapes::StructureShape.new(name: 'AxisDisplayMinMaxRange')
    AxisDisplayOptions = Shapes::StructureShape.new(name: 'AxisDisplayOptions')
    AxisDisplayRange = Shapes::StructureShape.new(name: 'AxisDisplayRange')
    AxisLabelOptions = Shapes::StructureShape.new(name: 'AxisLabelOptions')
    AxisLabelOptionsList = Shapes::ListShape.new(name: 'AxisLabelOptionsList')
    AxisLabelReferenceOptions = Shapes::StructureShape.new(name: 'AxisLabelReferenceOptions')
    AxisLinearScale = Shapes::StructureShape.new(name: 'AxisLinearScale')
    AxisLogarithmicScale = Shapes::StructureShape.new(name: 'AxisLogarithmicScale')
    AxisScale = Shapes::StructureShape.new(name: 'AxisScale')
    AxisTickLabelOptions = Shapes::StructureShape.new(name: 'AxisTickLabelOptions')
    BarChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'BarChartAggregatedFieldWells')
    BarChartConfiguration = Shapes::StructureShape.new(name: 'BarChartConfiguration')
    BarChartFieldWells = Shapes::StructureShape.new(name: 'BarChartFieldWells')
    BarChartOrientation = Shapes::StringShape.new(name: 'BarChartOrientation')
    BarChartSortConfiguration = Shapes::StructureShape.new(name: 'BarChartSortConfiguration')
    BarChartVisual = Shapes::StructureShape.new(name: 'BarChartVisual')
    BarsArrangement = Shapes::StringShape.new(name: 'BarsArrangement')
    BaseMapStyleType = Shapes::StringShape.new(name: 'BaseMapStyleType')
    BinCountLimit = Shapes::IntegerShape.new(name: 'BinCountLimit')
    BinCountOptions = Shapes::StructureShape.new(name: 'BinCountOptions')
    BinCountValue = Shapes::IntegerShape.new(name: 'BinCountValue')
    BinWidthOptions = Shapes::StructureShape.new(name: 'BinWidthOptions')
    BinWidthValue = Shapes::FloatShape.new(name: 'BinWidthValue')
    BodySectionConfiguration = Shapes::StructureShape.new(name: 'BodySectionConfiguration')
    BodySectionConfigurationList = Shapes::ListShape.new(name: 'BodySectionConfigurationList')
    BodySectionContent = Shapes::StructureShape.new(name: 'BodySectionContent')
    BookmarksConfigurations = Shapes::StructureShape.new(name: 'BookmarksConfigurations')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BooleanObject = Shapes::BooleanShape.new(name: 'BooleanObject')
    BorderStyle = Shapes::StructureShape.new(name: 'BorderStyle')
    BoxPlotAggregatedFieldWells = Shapes::StructureShape.new(name: 'BoxPlotAggregatedFieldWells')
    BoxPlotChartConfiguration = Shapes::StructureShape.new(name: 'BoxPlotChartConfiguration')
    BoxPlotDimensionFieldList = Shapes::ListShape.new(name: 'BoxPlotDimensionFieldList')
    BoxPlotFieldWells = Shapes::StructureShape.new(name: 'BoxPlotFieldWells')
    BoxPlotFillStyle = Shapes::StringShape.new(name: 'BoxPlotFillStyle')
    BoxPlotMeasureFieldList = Shapes::ListShape.new(name: 'BoxPlotMeasureFieldList')
    BoxPlotOptions = Shapes::StructureShape.new(name: 'BoxPlotOptions')
    BoxPlotSortConfiguration = Shapes::StructureShape.new(name: 'BoxPlotSortConfiguration')
    BoxPlotStyleOptions = Shapes::StructureShape.new(name: 'BoxPlotStyleOptions')
    BoxPlotVisual = Shapes::StructureShape.new(name: 'BoxPlotVisual')
    CIDR = Shapes::StringShape.new(name: 'CIDR')
    CalculatedColumn = Shapes::StructureShape.new(name: 'CalculatedColumn')
    CalculatedColumnList = Shapes::ListShape.new(name: 'CalculatedColumnList')
    CalculatedField = Shapes::StructureShape.new(name: 'CalculatedField')
    CalculatedFieldExpression = Shapes::StringShape.new(name: 'CalculatedFieldExpression')
    CalculatedFields = Shapes::ListShape.new(name: 'CalculatedFields')
    CalculatedMeasureField = Shapes::StructureShape.new(name: 'CalculatedMeasureField')
    CancelIngestionRequest = Shapes::StructureShape.new(name: 'CancelIngestionRequest')
    CancelIngestionResponse = Shapes::StructureShape.new(name: 'CancelIngestionResponse')
    CascadingControlConfiguration = Shapes::StructureShape.new(name: 'CascadingControlConfiguration')
    CascadingControlSource = Shapes::StructureShape.new(name: 'CascadingControlSource')
    CascadingControlSourceList = Shapes::ListShape.new(name: 'CascadingControlSourceList')
    CastColumnTypeOperation = Shapes::StructureShape.new(name: 'CastColumnTypeOperation')
    Catalog = Shapes::StringShape.new(name: 'Catalog')
    CategoricalAggregationFunction = Shapes::StringShape.new(name: 'CategoricalAggregationFunction')
    CategoricalDimensionField = Shapes::StructureShape.new(name: 'CategoricalDimensionField')
    CategoricalMeasureField = Shapes::StructureShape.new(name: 'CategoricalMeasureField')
    CategoryDrillDownFilter = Shapes::StructureShape.new(name: 'CategoryDrillDownFilter')
    CategoryFilter = Shapes::StructureShape.new(name: 'CategoryFilter')
    CategoryFilterConfiguration = Shapes::StructureShape.new(name: 'CategoryFilterConfiguration')
    CategoryFilterFunction = Shapes::StringShape.new(name: 'CategoryFilterFunction')
    CategoryFilterMatchOperator = Shapes::StringShape.new(name: 'CategoryFilterMatchOperator')
    CategoryFilterSelectAllOptions = Shapes::StringShape.new(name: 'CategoryFilterSelectAllOptions')
    CategoryFilterType = Shapes::StringShape.new(name: 'CategoryFilterType')
    CategoryValue = Shapes::StringShape.new(name: 'CategoryValue')
    CategoryValueList = Shapes::ListShape.new(name: 'CategoryValueList')
    CellValueSynonym = Shapes::StructureShape.new(name: 'CellValueSynonym')
    CellValueSynonyms = Shapes::ListShape.new(name: 'CellValueSynonyms')
    ChartAxisLabelOptions = Shapes::StructureShape.new(name: 'ChartAxisLabelOptions')
    ClusterId = Shapes::StringShape.new(name: 'ClusterId')
    ClusterMarker = Shapes::StructureShape.new(name: 'ClusterMarker')
    ClusterMarkerConfiguration = Shapes::StructureShape.new(name: 'ClusterMarkerConfiguration')
    CollectiveConstant = Shapes::StructureShape.new(name: 'CollectiveConstant')
    ColorFillType = Shapes::StringShape.new(name: 'ColorFillType')
    ColorList = Shapes::ListShape.new(name: 'ColorList')
    ColorScale = Shapes::StructureShape.new(name: 'ColorScale')
    ColorScaleColorList = Shapes::ListShape.new(name: 'ColorScaleColorList')
    ColorsConfiguration = Shapes::StructureShape.new(name: 'ColorsConfiguration')
    ColumnConfiguration = Shapes::StructureShape.new(name: 'ColumnConfiguration')
    ColumnConfigurationList = Shapes::ListShape.new(name: 'ColumnConfigurationList')
    ColumnDataRole = Shapes::StringShape.new(name: 'ColumnDataRole')
    ColumnDataType = Shapes::StringShape.new(name: 'ColumnDataType')
    ColumnDescription = Shapes::StructureShape.new(name: 'ColumnDescription')
    ColumnDescriptiveText = Shapes::StringShape.new(name: 'ColumnDescriptiveText')
    ColumnGroup = Shapes::StructureShape.new(name: 'ColumnGroup')
    ColumnGroupColumnSchema = Shapes::StructureShape.new(name: 'ColumnGroupColumnSchema')
    ColumnGroupColumnSchemaList = Shapes::ListShape.new(name: 'ColumnGroupColumnSchemaList')
    ColumnGroupList = Shapes::ListShape.new(name: 'ColumnGroupList')
    ColumnGroupName = Shapes::StringShape.new(name: 'ColumnGroupName')
    ColumnGroupSchema = Shapes::StructureShape.new(name: 'ColumnGroupSchema')
    ColumnGroupSchemaList = Shapes::ListShape.new(name: 'ColumnGroupSchemaList')
    ColumnHierarchy = Shapes::StructureShape.new(name: 'ColumnHierarchy')
    ColumnHierarchyList = Shapes::ListShape.new(name: 'ColumnHierarchyList')
    ColumnId = Shapes::StringShape.new(name: 'ColumnId')
    ColumnIdentifier = Shapes::StructureShape.new(name: 'ColumnIdentifier')
    ColumnLevelPermissionRule = Shapes::StructureShape.new(name: 'ColumnLevelPermissionRule')
    ColumnLevelPermissionRuleList = Shapes::ListShape.new(name: 'ColumnLevelPermissionRuleList')
    ColumnList = Shapes::ListShape.new(name: 'ColumnList')
    ColumnName = Shapes::StringShape.new(name: 'ColumnName')
    ColumnNameList = Shapes::ListShape.new(name: 'ColumnNameList')
    ColumnOrderingType = Shapes::StringShape.new(name: 'ColumnOrderingType')
    ColumnRole = Shapes::StringShape.new(name: 'ColumnRole')
    ColumnSchema = Shapes::StructureShape.new(name: 'ColumnSchema')
    ColumnSchemaList = Shapes::ListShape.new(name: 'ColumnSchemaList')
    ColumnSort = Shapes::StructureShape.new(name: 'ColumnSort')
    ColumnTag = Shapes::StructureShape.new(name: 'ColumnTag')
    ColumnTagList = Shapes::ListShape.new(name: 'ColumnTagList')
    ColumnTagName = Shapes::StringShape.new(name: 'ColumnTagName')
    ColumnTagNames = Shapes::ListShape.new(name: 'ColumnTagNames')
    ColumnTooltipItem = Shapes::StructureShape.new(name: 'ColumnTooltipItem')
    ComboChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'ComboChartAggregatedFieldWells')
    ComboChartConfiguration = Shapes::StructureShape.new(name: 'ComboChartConfiguration')
    ComboChartFieldWells = Shapes::StructureShape.new(name: 'ComboChartFieldWells')
    ComboChartSortConfiguration = Shapes::StructureShape.new(name: 'ComboChartSortConfiguration')
    ComboChartVisual = Shapes::StructureShape.new(name: 'ComboChartVisual')
    ComparativeOrder = Shapes::StructureShape.new(name: 'ComparativeOrder')
    ComparisonConfiguration = Shapes::StructureShape.new(name: 'ComparisonConfiguration')
    ComparisonFormatConfiguration = Shapes::StructureShape.new(name: 'ComparisonFormatConfiguration')
    ComparisonMethod = Shapes::StringShape.new(name: 'ComparisonMethod')
    Computation = Shapes::StructureShape.new(name: 'Computation')
    ComputationList = Shapes::ListShape.new(name: 'ComputationList')
    ConcurrentUpdatingException = Shapes::StructureShape.new(name: 'ConcurrentUpdatingException')
    ConditionalFormattingColor = Shapes::StructureShape.new(name: 'ConditionalFormattingColor')
    ConditionalFormattingCustomIconCondition = Shapes::StructureShape.new(name: 'ConditionalFormattingCustomIconCondition')
    ConditionalFormattingCustomIconOptions = Shapes::StructureShape.new(name: 'ConditionalFormattingCustomIconOptions')
    ConditionalFormattingGradientColor = Shapes::StructureShape.new(name: 'ConditionalFormattingGradientColor')
    ConditionalFormattingIcon = Shapes::StructureShape.new(name: 'ConditionalFormattingIcon')
    ConditionalFormattingIconDisplayConfiguration = Shapes::StructureShape.new(name: 'ConditionalFormattingIconDisplayConfiguration')
    ConditionalFormattingIconDisplayOption = Shapes::StringShape.new(name: 'ConditionalFormattingIconDisplayOption')
    ConditionalFormattingIconSet = Shapes::StructureShape.new(name: 'ConditionalFormattingIconSet')
    ConditionalFormattingIconSetType = Shapes::StringShape.new(name: 'ConditionalFormattingIconSetType')
    ConditionalFormattingSolidColor = Shapes::StructureShape.new(name: 'ConditionalFormattingSolidColor')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ConstantType = Shapes::StringShape.new(name: 'ConstantType')
    ContributionAnalysisDefault = Shapes::StructureShape.new(name: 'ContributionAnalysisDefault')
    ContributionAnalysisDefaultList = Shapes::ListShape.new(name: 'ContributionAnalysisDefaultList')
    ContributorDimensionList = Shapes::ListShape.new(name: 'ContributorDimensionList')
    CopySourceArn = Shapes::StringShape.new(name: 'CopySourceArn')
    CreateAccountCustomizationRequest = Shapes::StructureShape.new(name: 'CreateAccountCustomizationRequest')
    CreateAccountCustomizationResponse = Shapes::StructureShape.new(name: 'CreateAccountCustomizationResponse')
    CreateAccountSubscriptionRequest = Shapes::StructureShape.new(name: 'CreateAccountSubscriptionRequest')
    CreateAccountSubscriptionResponse = Shapes::StructureShape.new(name: 'CreateAccountSubscriptionResponse')
    CreateAnalysisRequest = Shapes::StructureShape.new(name: 'CreateAnalysisRequest')
    CreateAnalysisResponse = Shapes::StructureShape.new(name: 'CreateAnalysisResponse')
    CreateColumnsOperation = Shapes::StructureShape.new(name: 'CreateColumnsOperation')
    CreateDashboardRequest = Shapes::StructureShape.new(name: 'CreateDashboardRequest')
    CreateDashboardResponse = Shapes::StructureShape.new(name: 'CreateDashboardResponse')
    CreateDataSetRequest = Shapes::StructureShape.new(name: 'CreateDataSetRequest')
    CreateDataSetResponse = Shapes::StructureShape.new(name: 'CreateDataSetResponse')
    CreateDataSourceRequest = Shapes::StructureShape.new(name: 'CreateDataSourceRequest')
    CreateDataSourceResponse = Shapes::StructureShape.new(name: 'CreateDataSourceResponse')
    CreateFolderMembershipRequest = Shapes::StructureShape.new(name: 'CreateFolderMembershipRequest')
    CreateFolderMembershipResponse = Shapes::StructureShape.new(name: 'CreateFolderMembershipResponse')
    CreateFolderRequest = Shapes::StructureShape.new(name: 'CreateFolderRequest')
    CreateFolderResponse = Shapes::StructureShape.new(name: 'CreateFolderResponse')
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
    CreateRefreshScheduleRequest = Shapes::StructureShape.new(name: 'CreateRefreshScheduleRequest')
    CreateRefreshScheduleResponse = Shapes::StructureShape.new(name: 'CreateRefreshScheduleResponse')
    CreateTemplateAliasRequest = Shapes::StructureShape.new(name: 'CreateTemplateAliasRequest')
    CreateTemplateAliasResponse = Shapes::StructureShape.new(name: 'CreateTemplateAliasResponse')
    CreateTemplateRequest = Shapes::StructureShape.new(name: 'CreateTemplateRequest')
    CreateTemplateResponse = Shapes::StructureShape.new(name: 'CreateTemplateResponse')
    CreateThemeAliasRequest = Shapes::StructureShape.new(name: 'CreateThemeAliasRequest')
    CreateThemeAliasResponse = Shapes::StructureShape.new(name: 'CreateThemeAliasResponse')
    CreateThemeRequest = Shapes::StructureShape.new(name: 'CreateThemeRequest')
    CreateThemeResponse = Shapes::StructureShape.new(name: 'CreateThemeResponse')
    CreateTopicRefreshScheduleRequest = Shapes::StructureShape.new(name: 'CreateTopicRefreshScheduleRequest')
    CreateTopicRefreshScheduleResponse = Shapes::StructureShape.new(name: 'CreateTopicRefreshScheduleResponse')
    CreateTopicRequest = Shapes::StructureShape.new(name: 'CreateTopicRequest')
    CreateTopicResponse = Shapes::StructureShape.new(name: 'CreateTopicResponse')
    CreateVPCConnectionRequest = Shapes::StructureShape.new(name: 'CreateVPCConnectionRequest')
    CreateVPCConnectionResponse = Shapes::StructureShape.new(name: 'CreateVPCConnectionResponse')
    CredentialPair = Shapes::StructureShape.new(name: 'CredentialPair')
    CrossDatasetTypes = Shapes::StringShape.new(name: 'CrossDatasetTypes')
    CurrencyCode = Shapes::StringShape.new(name: 'CurrencyCode')
    CurrencyDisplayFormatConfiguration = Shapes::StructureShape.new(name: 'CurrencyDisplayFormatConfiguration')
    CustomActionColumnList = Shapes::ListShape.new(name: 'CustomActionColumnList')
    CustomActionFilterOperation = Shapes::StructureShape.new(name: 'CustomActionFilterOperation')
    CustomActionNavigationOperation = Shapes::StructureShape.new(name: 'CustomActionNavigationOperation')
    CustomActionSetParametersOperation = Shapes::StructureShape.new(name: 'CustomActionSetParametersOperation')
    CustomActionURLOperation = Shapes::StructureShape.new(name: 'CustomActionURLOperation')
    CustomColor = Shapes::StructureShape.new(name: 'CustomColor')
    CustomColorsList = Shapes::ListShape.new(name: 'CustomColorsList')
    CustomContentConfiguration = Shapes::StructureShape.new(name: 'CustomContentConfiguration')
    CustomContentImageScalingConfiguration = Shapes::StringShape.new(name: 'CustomContentImageScalingConfiguration')
    CustomContentType = Shapes::StringShape.new(name: 'CustomContentType')
    CustomContentVisual = Shapes::StructureShape.new(name: 'CustomContentVisual')
    CustomFilterConfiguration = Shapes::StructureShape.new(name: 'CustomFilterConfiguration')
    CustomFilterListConfiguration = Shapes::StructureShape.new(name: 'CustomFilterListConfiguration')
    CustomLabel = Shapes::StringShape.new(name: 'CustomLabel')
    CustomNarrativeOptions = Shapes::StructureShape.new(name: 'CustomNarrativeOptions')
    CustomParameterValues = Shapes::StructureShape.new(name: 'CustomParameterValues')
    CustomSql = Shapes::StructureShape.new(name: 'CustomSql')
    CustomSqlName = Shapes::StringShape.new(name: 'CustomSqlName')
    CustomValuesConfiguration = Shapes::StructureShape.new(name: 'CustomValuesConfiguration')
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
    DashboardVersionDefinition = Shapes::StructureShape.new(name: 'DashboardVersionDefinition')
    DashboardVersionSummary = Shapes::StructureShape.new(name: 'DashboardVersionSummary')
    DashboardVersionSummaryList = Shapes::ListShape.new(name: 'DashboardVersionSummaryList')
    DashboardVisualId = Shapes::StructureShape.new(name: 'DashboardVisualId')
    DashboardVisualPublishOptions = Shapes::StructureShape.new(name: 'DashboardVisualPublishOptions')
    DataAggregation = Shapes::StructureShape.new(name: 'DataAggregation')
    DataBarsOptions = Shapes::StructureShape.new(name: 'DataBarsOptions')
    DataColor = Shapes::StructureShape.new(name: 'DataColor')
    DataColorPalette = Shapes::StructureShape.new(name: 'DataColorPalette')
    DataFieldSeriesItem = Shapes::StructureShape.new(name: 'DataFieldSeriesItem')
    DataLabelContent = Shapes::StringShape.new(name: 'DataLabelContent')
    DataLabelOptions = Shapes::StructureShape.new(name: 'DataLabelOptions')
    DataLabelOverlap = Shapes::StringShape.new(name: 'DataLabelOverlap')
    DataLabelPosition = Shapes::StringShape.new(name: 'DataLabelPosition')
    DataLabelType = Shapes::StructureShape.new(name: 'DataLabelType')
    DataLabelTypes = Shapes::ListShape.new(name: 'DataLabelTypes')
    DataPathColor = Shapes::StructureShape.new(name: 'DataPathColor')
    DataPathColorList = Shapes::ListShape.new(name: 'DataPathColorList')
    DataPathLabelType = Shapes::StructureShape.new(name: 'DataPathLabelType')
    DataPathSort = Shapes::StructureShape.new(name: 'DataPathSort')
    DataPathValue = Shapes::StructureShape.new(name: 'DataPathValue')
    DataPathValueList = Shapes::ListShape.new(name: 'DataPathValueList')
    DataPointDrillUpDownOption = Shapes::StructureShape.new(name: 'DataPointDrillUpDownOption')
    DataPointMenuLabelOption = Shapes::StructureShape.new(name: 'DataPointMenuLabelOption')
    DataPointTooltipOption = Shapes::StructureShape.new(name: 'DataPointTooltipOption')
    DataSet = Shapes::StructureShape.new(name: 'DataSet')
    DataSetArnsList = Shapes::ListShape.new(name: 'DataSetArnsList')
    DataSetConfiguration = Shapes::StructureShape.new(name: 'DataSetConfiguration')
    DataSetConfigurationList = Shapes::ListShape.new(name: 'DataSetConfigurationList')
    DataSetFilterAttribute = Shapes::StringShape.new(name: 'DataSetFilterAttribute')
    DataSetIdentifier = Shapes::StringShape.new(name: 'DataSetIdentifier')
    DataSetIdentifierDeclaration = Shapes::StructureShape.new(name: 'DataSetIdentifierDeclaration')
    DataSetIdentifierDeclarationList = Shapes::ListShape.new(name: 'DataSetIdentifierDeclarationList')
    DataSetImportMode = Shapes::StringShape.new(name: 'DataSetImportMode')
    DataSetName = Shapes::StringShape.new(name: 'DataSetName')
    DataSetReference = Shapes::StructureShape.new(name: 'DataSetReference')
    DataSetReferenceList = Shapes::ListShape.new(name: 'DataSetReferenceList')
    DataSetRefreshProperties = Shapes::StructureShape.new(name: 'DataSetRefreshProperties')
    DataSetSchema = Shapes::StructureShape.new(name: 'DataSetSchema')
    DataSetSearchFilter = Shapes::StructureShape.new(name: 'DataSetSearchFilter')
    DataSetSearchFilterList = Shapes::ListShape.new(name: 'DataSetSearchFilterList')
    DataSetSummary = Shapes::StructureShape.new(name: 'DataSetSummary')
    DataSetSummaryList = Shapes::ListShape.new(name: 'DataSetSummaryList')
    DataSetUsageConfiguration = Shapes::StructureShape.new(name: 'DataSetUsageConfiguration')
    DataSource = Shapes::StructureShape.new(name: 'DataSource')
    DataSourceCredentials = Shapes::StructureShape.new(name: 'DataSourceCredentials')
    DataSourceErrorInfo = Shapes::StructureShape.new(name: 'DataSourceErrorInfo')
    DataSourceErrorInfoType = Shapes::StringShape.new(name: 'DataSourceErrorInfoType')
    DataSourceFilterAttribute = Shapes::StringShape.new(name: 'DataSourceFilterAttribute')
    DataSourceList = Shapes::ListShape.new(name: 'DataSourceList')
    DataSourceParameters = Shapes::StructureShape.new(name: 'DataSourceParameters')
    DataSourceParametersList = Shapes::ListShape.new(name: 'DataSourceParametersList')
    DataSourceSearchFilter = Shapes::StructureShape.new(name: 'DataSourceSearchFilter')
    DataSourceSearchFilterList = Shapes::ListShape.new(name: 'DataSourceSearchFilterList')
    DataSourceSummary = Shapes::StructureShape.new(name: 'DataSourceSummary')
    DataSourceSummaryList = Shapes::ListShape.new(name: 'DataSourceSummaryList')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    Database = Shapes::StringShape.new(name: 'Database')
    DatabricksParameters = Shapes::StructureShape.new(name: 'DatabricksParameters')
    DatasetMetadata = Shapes::StructureShape.new(name: 'DatasetMetadata')
    DatasetParameter = Shapes::StructureShape.new(name: 'DatasetParameter')
    DatasetParameterId = Shapes::StringShape.new(name: 'DatasetParameterId')
    DatasetParameterList = Shapes::ListShape.new(name: 'DatasetParameterList')
    DatasetParameterName = Shapes::StringShape.new(name: 'DatasetParameterName')
    DatasetParameterValueType = Shapes::StringShape.new(name: 'DatasetParameterValueType')
    Datasets = Shapes::ListShape.new(name: 'Datasets')
    DateAggregationFunction = Shapes::StringShape.new(name: 'DateAggregationFunction')
    DateAxisOptions = Shapes::StructureShape.new(name: 'DateAxisOptions')
    DateDimensionField = Shapes::StructureShape.new(name: 'DateDimensionField')
    DateMeasureField = Shapes::StructureShape.new(name: 'DateMeasureField')
    DateTimeDatasetParameter = Shapes::StructureShape.new(name: 'DateTimeDatasetParameter')
    DateTimeDatasetParameterDefaultValue = Shapes::TimestampShape.new(name: 'DateTimeDatasetParameterDefaultValue')
    DateTimeDatasetParameterDefaultValues = Shapes::StructureShape.new(name: 'DateTimeDatasetParameterDefaultValues')
    DateTimeDatasetParameterValueList = Shapes::ListShape.new(name: 'DateTimeDatasetParameterValueList')
    DateTimeDefaultValueList = Shapes::ListShape.new(name: 'DateTimeDefaultValueList')
    DateTimeDefaultValues = Shapes::StructureShape.new(name: 'DateTimeDefaultValues')
    DateTimeFormat = Shapes::StringShape.new(name: 'DateTimeFormat')
    DateTimeFormatConfiguration = Shapes::StructureShape.new(name: 'DateTimeFormatConfiguration')
    DateTimeHierarchy = Shapes::StructureShape.new(name: 'DateTimeHierarchy')
    DateTimeParameter = Shapes::StructureShape.new(name: 'DateTimeParameter')
    DateTimeParameterDeclaration = Shapes::StructureShape.new(name: 'DateTimeParameterDeclaration')
    DateTimeParameterList = Shapes::ListShape.new(name: 'DateTimeParameterList')
    DateTimePickerControlDisplayOptions = Shapes::StructureShape.new(name: 'DateTimePickerControlDisplayOptions')
    DateTimeValueWhenUnsetConfiguration = Shapes::StructureShape.new(name: 'DateTimeValueWhenUnsetConfiguration')
    DayOfMonth = Shapes::StringShape.new(name: 'DayOfMonth')
    DayOfWeek = Shapes::StringShape.new(name: 'DayOfWeek')
    DbUsername = Shapes::StringShape.new(name: 'DbUsername')
    DecimalDatasetParameter = Shapes::StructureShape.new(name: 'DecimalDatasetParameter')
    DecimalDatasetParameterDefaultValue = Shapes::FloatShape.new(name: 'DecimalDatasetParameterDefaultValue')
    DecimalDatasetParameterDefaultValues = Shapes::StructureShape.new(name: 'DecimalDatasetParameterDefaultValues')
    DecimalDatasetParameterValueList = Shapes::ListShape.new(name: 'DecimalDatasetParameterValueList')
    DecimalDefaultValueList = Shapes::ListShape.new(name: 'DecimalDefaultValueList')
    DecimalDefaultValues = Shapes::StructureShape.new(name: 'DecimalDefaultValues')
    DecimalParameter = Shapes::StructureShape.new(name: 'DecimalParameter')
    DecimalParameterDeclaration = Shapes::StructureShape.new(name: 'DecimalParameterDeclaration')
    DecimalParameterList = Shapes::ListShape.new(name: 'DecimalParameterList')
    DecimalPlaces = Shapes::IntegerShape.new(name: 'DecimalPlaces')
    DecimalPlacesConfiguration = Shapes::StructureShape.new(name: 'DecimalPlacesConfiguration')
    DecimalValueWhenUnsetConfiguration = Shapes::StructureShape.new(name: 'DecimalValueWhenUnsetConfiguration')
    DefaultAggregation = Shapes::StringShape.new(name: 'DefaultAggregation')
    DefaultFormatting = Shapes::StructureShape.new(name: 'DefaultFormatting')
    DefaultFreeFormLayoutConfiguration = Shapes::StructureShape.new(name: 'DefaultFreeFormLayoutConfiguration')
    DefaultGridLayoutConfiguration = Shapes::StructureShape.new(name: 'DefaultGridLayoutConfiguration')
    DefaultInteractiveLayoutConfiguration = Shapes::StructureShape.new(name: 'DefaultInteractiveLayoutConfiguration')
    DefaultNewSheetConfiguration = Shapes::StructureShape.new(name: 'DefaultNewSheetConfiguration')
    DefaultPaginatedLayoutConfiguration = Shapes::StructureShape.new(name: 'DefaultPaginatedLayoutConfiguration')
    DefaultSectionBasedLayoutConfiguration = Shapes::StructureShape.new(name: 'DefaultSectionBasedLayoutConfiguration')
    DeleteAccountCustomizationRequest = Shapes::StructureShape.new(name: 'DeleteAccountCustomizationRequest')
    DeleteAccountCustomizationResponse = Shapes::StructureShape.new(name: 'DeleteAccountCustomizationResponse')
    DeleteAccountSubscriptionRequest = Shapes::StructureShape.new(name: 'DeleteAccountSubscriptionRequest')
    DeleteAccountSubscriptionResponse = Shapes::StructureShape.new(name: 'DeleteAccountSubscriptionResponse')
    DeleteAnalysisRequest = Shapes::StructureShape.new(name: 'DeleteAnalysisRequest')
    DeleteAnalysisResponse = Shapes::StructureShape.new(name: 'DeleteAnalysisResponse')
    DeleteDashboardRequest = Shapes::StructureShape.new(name: 'DeleteDashboardRequest')
    DeleteDashboardResponse = Shapes::StructureShape.new(name: 'DeleteDashboardResponse')
    DeleteDataSetRefreshPropertiesRequest = Shapes::StructureShape.new(name: 'DeleteDataSetRefreshPropertiesRequest')
    DeleteDataSetRefreshPropertiesResponse = Shapes::StructureShape.new(name: 'DeleteDataSetRefreshPropertiesResponse')
    DeleteDataSetRequest = Shapes::StructureShape.new(name: 'DeleteDataSetRequest')
    DeleteDataSetResponse = Shapes::StructureShape.new(name: 'DeleteDataSetResponse')
    DeleteDataSourceRequest = Shapes::StructureShape.new(name: 'DeleteDataSourceRequest')
    DeleteDataSourceResponse = Shapes::StructureShape.new(name: 'DeleteDataSourceResponse')
    DeleteFolderMembershipRequest = Shapes::StructureShape.new(name: 'DeleteFolderMembershipRequest')
    DeleteFolderMembershipResponse = Shapes::StructureShape.new(name: 'DeleteFolderMembershipResponse')
    DeleteFolderRequest = Shapes::StructureShape.new(name: 'DeleteFolderRequest')
    DeleteFolderResponse = Shapes::StructureShape.new(name: 'DeleteFolderResponse')
    DeleteGroupMembershipRequest = Shapes::StructureShape.new(name: 'DeleteGroupMembershipRequest')
    DeleteGroupMembershipResponse = Shapes::StructureShape.new(name: 'DeleteGroupMembershipResponse')
    DeleteGroupRequest = Shapes::StructureShape.new(name: 'DeleteGroupRequest')
    DeleteGroupResponse = Shapes::StructureShape.new(name: 'DeleteGroupResponse')
    DeleteIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'DeleteIAMPolicyAssignmentRequest')
    DeleteIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'DeleteIAMPolicyAssignmentResponse')
    DeleteNamespaceRequest = Shapes::StructureShape.new(name: 'DeleteNamespaceRequest')
    DeleteNamespaceResponse = Shapes::StructureShape.new(name: 'DeleteNamespaceResponse')
    DeleteRefreshScheduleRequest = Shapes::StructureShape.new(name: 'DeleteRefreshScheduleRequest')
    DeleteRefreshScheduleResponse = Shapes::StructureShape.new(name: 'DeleteRefreshScheduleResponse')
    DeleteTemplateAliasRequest = Shapes::StructureShape.new(name: 'DeleteTemplateAliasRequest')
    DeleteTemplateAliasResponse = Shapes::StructureShape.new(name: 'DeleteTemplateAliasResponse')
    DeleteTemplateRequest = Shapes::StructureShape.new(name: 'DeleteTemplateRequest')
    DeleteTemplateResponse = Shapes::StructureShape.new(name: 'DeleteTemplateResponse')
    DeleteThemeAliasRequest = Shapes::StructureShape.new(name: 'DeleteThemeAliasRequest')
    DeleteThemeAliasResponse = Shapes::StructureShape.new(name: 'DeleteThemeAliasResponse')
    DeleteThemeRequest = Shapes::StructureShape.new(name: 'DeleteThemeRequest')
    DeleteThemeResponse = Shapes::StructureShape.new(name: 'DeleteThemeResponse')
    DeleteTopicRefreshScheduleRequest = Shapes::StructureShape.new(name: 'DeleteTopicRefreshScheduleRequest')
    DeleteTopicRefreshScheduleResponse = Shapes::StructureShape.new(name: 'DeleteTopicRefreshScheduleResponse')
    DeleteTopicRequest = Shapes::StructureShape.new(name: 'DeleteTopicRequest')
    DeleteTopicResponse = Shapes::StructureShape.new(name: 'DeleteTopicResponse')
    DeleteUserByPrincipalIdRequest = Shapes::StructureShape.new(name: 'DeleteUserByPrincipalIdRequest')
    DeleteUserByPrincipalIdResponse = Shapes::StructureShape.new(name: 'DeleteUserByPrincipalIdResponse')
    DeleteUserRequest = Shapes::StructureShape.new(name: 'DeleteUserRequest')
    DeleteUserResponse = Shapes::StructureShape.new(name: 'DeleteUserResponse')
    DeleteVPCConnectionRequest = Shapes::StructureShape.new(name: 'DeleteVPCConnectionRequest')
    DeleteVPCConnectionResponse = Shapes::StructureShape.new(name: 'DeleteVPCConnectionResponse')
    Delimiter = Shapes::StringShape.new(name: 'Delimiter')
    DescribeAccountCustomizationRequest = Shapes::StructureShape.new(name: 'DescribeAccountCustomizationRequest')
    DescribeAccountCustomizationResponse = Shapes::StructureShape.new(name: 'DescribeAccountCustomizationResponse')
    DescribeAccountSettingsRequest = Shapes::StructureShape.new(name: 'DescribeAccountSettingsRequest')
    DescribeAccountSettingsResponse = Shapes::StructureShape.new(name: 'DescribeAccountSettingsResponse')
    DescribeAccountSubscriptionRequest = Shapes::StructureShape.new(name: 'DescribeAccountSubscriptionRequest')
    DescribeAccountSubscriptionResponse = Shapes::StructureShape.new(name: 'DescribeAccountSubscriptionResponse')
    DescribeAnalysisDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeAnalysisDefinitionRequest')
    DescribeAnalysisDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeAnalysisDefinitionResponse')
    DescribeAnalysisPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeAnalysisPermissionsRequest')
    DescribeAnalysisPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeAnalysisPermissionsResponse')
    DescribeAnalysisRequest = Shapes::StructureShape.new(name: 'DescribeAnalysisRequest')
    DescribeAnalysisResponse = Shapes::StructureShape.new(name: 'DescribeAnalysisResponse')
    DescribeAssetBundleExportJobRequest = Shapes::StructureShape.new(name: 'DescribeAssetBundleExportJobRequest')
    DescribeAssetBundleExportJobResponse = Shapes::StructureShape.new(name: 'DescribeAssetBundleExportJobResponse')
    DescribeAssetBundleImportJobRequest = Shapes::StructureShape.new(name: 'DescribeAssetBundleImportJobRequest')
    DescribeAssetBundleImportJobResponse = Shapes::StructureShape.new(name: 'DescribeAssetBundleImportJobResponse')
    DescribeDashboardDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeDashboardDefinitionRequest')
    DescribeDashboardDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeDashboardDefinitionResponse')
    DescribeDashboardPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeDashboardPermissionsRequest')
    DescribeDashboardPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeDashboardPermissionsResponse')
    DescribeDashboardRequest = Shapes::StructureShape.new(name: 'DescribeDashboardRequest')
    DescribeDashboardResponse = Shapes::StructureShape.new(name: 'DescribeDashboardResponse')
    DescribeDataSetPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeDataSetPermissionsRequest')
    DescribeDataSetPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeDataSetPermissionsResponse')
    DescribeDataSetRefreshPropertiesRequest = Shapes::StructureShape.new(name: 'DescribeDataSetRefreshPropertiesRequest')
    DescribeDataSetRefreshPropertiesResponse = Shapes::StructureShape.new(name: 'DescribeDataSetRefreshPropertiesResponse')
    DescribeDataSetRequest = Shapes::StructureShape.new(name: 'DescribeDataSetRequest')
    DescribeDataSetResponse = Shapes::StructureShape.new(name: 'DescribeDataSetResponse')
    DescribeDataSourcePermissionsRequest = Shapes::StructureShape.new(name: 'DescribeDataSourcePermissionsRequest')
    DescribeDataSourcePermissionsResponse = Shapes::StructureShape.new(name: 'DescribeDataSourcePermissionsResponse')
    DescribeDataSourceRequest = Shapes::StructureShape.new(name: 'DescribeDataSourceRequest')
    DescribeDataSourceResponse = Shapes::StructureShape.new(name: 'DescribeDataSourceResponse')
    DescribeFolderPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeFolderPermissionsRequest')
    DescribeFolderPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeFolderPermissionsResponse')
    DescribeFolderRequest = Shapes::StructureShape.new(name: 'DescribeFolderRequest')
    DescribeFolderResolvedPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeFolderResolvedPermissionsRequest')
    DescribeFolderResolvedPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeFolderResolvedPermissionsResponse')
    DescribeFolderResponse = Shapes::StructureShape.new(name: 'DescribeFolderResponse')
    DescribeGroupMembershipRequest = Shapes::StructureShape.new(name: 'DescribeGroupMembershipRequest')
    DescribeGroupMembershipResponse = Shapes::StructureShape.new(name: 'DescribeGroupMembershipResponse')
    DescribeGroupRequest = Shapes::StructureShape.new(name: 'DescribeGroupRequest')
    DescribeGroupResponse = Shapes::StructureShape.new(name: 'DescribeGroupResponse')
    DescribeIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'DescribeIAMPolicyAssignmentRequest')
    DescribeIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'DescribeIAMPolicyAssignmentResponse')
    DescribeIngestionRequest = Shapes::StructureShape.new(name: 'DescribeIngestionRequest')
    DescribeIngestionResponse = Shapes::StructureShape.new(name: 'DescribeIngestionResponse')
    DescribeIpRestrictionRequest = Shapes::StructureShape.new(name: 'DescribeIpRestrictionRequest')
    DescribeIpRestrictionResponse = Shapes::StructureShape.new(name: 'DescribeIpRestrictionResponse')
    DescribeNamespaceRequest = Shapes::StructureShape.new(name: 'DescribeNamespaceRequest')
    DescribeNamespaceResponse = Shapes::StructureShape.new(name: 'DescribeNamespaceResponse')
    DescribeRefreshScheduleRequest = Shapes::StructureShape.new(name: 'DescribeRefreshScheduleRequest')
    DescribeRefreshScheduleResponse = Shapes::StructureShape.new(name: 'DescribeRefreshScheduleResponse')
    DescribeTemplateAliasRequest = Shapes::StructureShape.new(name: 'DescribeTemplateAliasRequest')
    DescribeTemplateAliasResponse = Shapes::StructureShape.new(name: 'DescribeTemplateAliasResponse')
    DescribeTemplateDefinitionRequest = Shapes::StructureShape.new(name: 'DescribeTemplateDefinitionRequest')
    DescribeTemplateDefinitionResponse = Shapes::StructureShape.new(name: 'DescribeTemplateDefinitionResponse')
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
    DescribeTopicPermissionsRequest = Shapes::StructureShape.new(name: 'DescribeTopicPermissionsRequest')
    DescribeTopicPermissionsResponse = Shapes::StructureShape.new(name: 'DescribeTopicPermissionsResponse')
    DescribeTopicRefreshRequest = Shapes::StructureShape.new(name: 'DescribeTopicRefreshRequest')
    DescribeTopicRefreshResponse = Shapes::StructureShape.new(name: 'DescribeTopicRefreshResponse')
    DescribeTopicRefreshScheduleRequest = Shapes::StructureShape.new(name: 'DescribeTopicRefreshScheduleRequest')
    DescribeTopicRefreshScheduleResponse = Shapes::StructureShape.new(name: 'DescribeTopicRefreshScheduleResponse')
    DescribeTopicRequest = Shapes::StructureShape.new(name: 'DescribeTopicRequest')
    DescribeTopicResponse = Shapes::StructureShape.new(name: 'DescribeTopicResponse')
    DescribeUserRequest = Shapes::StructureShape.new(name: 'DescribeUserRequest')
    DescribeUserResponse = Shapes::StructureShape.new(name: 'DescribeUserResponse')
    DescribeVPCConnectionRequest = Shapes::StructureShape.new(name: 'DescribeVPCConnectionRequest')
    DescribeVPCConnectionResponse = Shapes::StructureShape.new(name: 'DescribeVPCConnectionResponse')
    DestinationParameterValueConfiguration = Shapes::StructureShape.new(name: 'DestinationParameterValueConfiguration')
    DimensionField = Shapes::StructureShape.new(name: 'DimensionField')
    DimensionFieldList = Shapes::ListShape.new(name: 'DimensionFieldList')
    DisplayFormat = Shapes::StringShape.new(name: 'DisplayFormat')
    DisplayFormatOptions = Shapes::StructureShape.new(name: 'DisplayFormatOptions')
    DnsResolverList = Shapes::ListShape.new(name: 'DnsResolverList')
    Domain = Shapes::StringShape.new(name: 'Domain')
    DomainNotWhitelistedException = Shapes::StructureShape.new(name: 'DomainNotWhitelistedException')
    DonutCenterOptions = Shapes::StructureShape.new(name: 'DonutCenterOptions')
    DonutOptions = Shapes::StructureShape.new(name: 'DonutOptions')
    Double = Shapes::FloatShape.new(name: 'Double')
    DrillDownFilter = Shapes::StructureShape.new(name: 'DrillDownFilter')
    DrillDownFilterList = Shapes::ListShape.new(name: 'DrillDownFilterList')
    DropDownControlDisplayOptions = Shapes::StructureShape.new(name: 'DropDownControlDisplayOptions')
    DynamicDefaultValue = Shapes::StructureShape.new(name: 'DynamicDefaultValue')
    Edition = Shapes::StringShape.new(name: 'Edition')
    EmbeddingIdentityType = Shapes::StringShape.new(name: 'EmbeddingIdentityType')
    EmbeddingUrl = Shapes::StringShape.new(name: 'EmbeddingUrl')
    EmptyVisual = Shapes::StructureShape.new(name: 'EmptyVisual')
    Entity = Shapes::StructureShape.new(name: 'Entity')
    EntityList = Shapes::ListShape.new(name: 'EntityList')
    EntryPath = Shapes::StringShape.new(name: 'EntryPath')
    EntryPoint = Shapes::StringShape.new(name: 'EntryPoint')
    ErrorInfo = Shapes::StructureShape.new(name: 'ErrorInfo')
    ExasolParameters = Shapes::StructureShape.new(name: 'ExasolParameters')
    ExceptionResourceType = Shapes::StringShape.new(name: 'ExceptionResourceType')
    ExcludePeriodConfiguration = Shapes::StructureShape.new(name: 'ExcludePeriodConfiguration')
    ExplicitHierarchy = Shapes::StructureShape.new(name: 'ExplicitHierarchy')
    ExplicitHierarchyColumnList = Shapes::ListShape.new(name: 'ExplicitHierarchyColumnList')
    ExportHiddenFieldsOption = Shapes::StructureShape.new(name: 'ExportHiddenFieldsOption')
    ExportToCSVOption = Shapes::StructureShape.new(name: 'ExportToCSVOption')
    ExportWithHiddenFieldsOption = Shapes::StructureShape.new(name: 'ExportWithHiddenFieldsOption')
    Expression = Shapes::StringShape.new(name: 'Expression')
    FieldBasedTooltip = Shapes::StructureShape.new(name: 'FieldBasedTooltip')
    FieldFolder = Shapes::StructureShape.new(name: 'FieldFolder')
    FieldFolderDescription = Shapes::StringShape.new(name: 'FieldFolderDescription')
    FieldFolderMap = Shapes::MapShape.new(name: 'FieldFolderMap')
    FieldFolderPath = Shapes::StringShape.new(name: 'FieldFolderPath')
    FieldId = Shapes::StringShape.new(name: 'FieldId')
    FieldLabelType = Shapes::StructureShape.new(name: 'FieldLabelType')
    FieldOrderList = Shapes::ListShape.new(name: 'FieldOrderList')
    FieldSeriesItem = Shapes::StructureShape.new(name: 'FieldSeriesItem')
    FieldSort = Shapes::StructureShape.new(name: 'FieldSort')
    FieldSortOptions = Shapes::StructureShape.new(name: 'FieldSortOptions')
    FieldSortOptionsList = Shapes::ListShape.new(name: 'FieldSortOptionsList')
    FieldTooltipItem = Shapes::StructureShape.new(name: 'FieldTooltipItem')
    FieldValue = Shapes::StringShape.new(name: 'FieldValue')
    FileFormat = Shapes::StringShape.new(name: 'FileFormat')
    FilledMapAggregatedFieldWells = Shapes::StructureShape.new(name: 'FilledMapAggregatedFieldWells')
    FilledMapConditionalFormatting = Shapes::StructureShape.new(name: 'FilledMapConditionalFormatting')
    FilledMapConditionalFormattingOption = Shapes::StructureShape.new(name: 'FilledMapConditionalFormattingOption')
    FilledMapConditionalFormattingOptionList = Shapes::ListShape.new(name: 'FilledMapConditionalFormattingOptionList')
    FilledMapConfiguration = Shapes::StructureShape.new(name: 'FilledMapConfiguration')
    FilledMapDimensionFieldList = Shapes::ListShape.new(name: 'FilledMapDimensionFieldList')
    FilledMapFieldWells = Shapes::StructureShape.new(name: 'FilledMapFieldWells')
    FilledMapMeasureFieldList = Shapes::ListShape.new(name: 'FilledMapMeasureFieldList')
    FilledMapShapeConditionalFormatting = Shapes::StructureShape.new(name: 'FilledMapShapeConditionalFormatting')
    FilledMapSortConfiguration = Shapes::StructureShape.new(name: 'FilledMapSortConfiguration')
    FilledMapVisual = Shapes::StructureShape.new(name: 'FilledMapVisual')
    Filter = Shapes::StructureShape.new(name: 'Filter')
    FilterClass = Shapes::StringShape.new(name: 'FilterClass')
    FilterControl = Shapes::StructureShape.new(name: 'FilterControl')
    FilterControlList = Shapes::ListShape.new(name: 'FilterControlList')
    FilterDateTimePickerControl = Shapes::StructureShape.new(name: 'FilterDateTimePickerControl')
    FilterDropDownControl = Shapes::StructureShape.new(name: 'FilterDropDownControl')
    FilterGroup = Shapes::StructureShape.new(name: 'FilterGroup')
    FilterGroupList = Shapes::ListShape.new(name: 'FilterGroupList')
    FilterList = Shapes::ListShape.new(name: 'FilterList')
    FilterListConfiguration = Shapes::StructureShape.new(name: 'FilterListConfiguration')
    FilterListControl = Shapes::StructureShape.new(name: 'FilterListControl')
    FilterNullOption = Shapes::StringShape.new(name: 'FilterNullOption')
    FilterOperation = Shapes::StructureShape.new(name: 'FilterOperation')
    FilterOperationSelectedFieldsConfiguration = Shapes::StructureShape.new(name: 'FilterOperationSelectedFieldsConfiguration')
    FilterOperationTargetVisualsConfiguration = Shapes::StructureShape.new(name: 'FilterOperationTargetVisualsConfiguration')
    FilterOperator = Shapes::StringShape.new(name: 'FilterOperator')
    FilterRelativeDateTimeControl = Shapes::StructureShape.new(name: 'FilterRelativeDateTimeControl')
    FilterScopeConfiguration = Shapes::StructureShape.new(name: 'FilterScopeConfiguration')
    FilterSelectableValues = Shapes::StructureShape.new(name: 'FilterSelectableValues')
    FilterSliderControl = Shapes::StructureShape.new(name: 'FilterSliderControl')
    FilterTextAreaControl = Shapes::StructureShape.new(name: 'FilterTextAreaControl')
    FilterTextFieldControl = Shapes::StructureShape.new(name: 'FilterTextFieldControl')
    FilterVisualScope = Shapes::StringShape.new(name: 'FilterVisualScope')
    FilteredVisualsList = Shapes::ListShape.new(name: 'FilteredVisualsList')
    Folder = Shapes::StructureShape.new(name: 'Folder')
    FolderColumnList = Shapes::ListShape.new(name: 'FolderColumnList')
    FolderFilterAttribute = Shapes::StringShape.new(name: 'FolderFilterAttribute')
    FolderMember = Shapes::StructureShape.new(name: 'FolderMember')
    FolderMemberList = Shapes::ListShape.new(name: 'FolderMemberList')
    FolderName = Shapes::StringShape.new(name: 'FolderName')
    FolderSearchFilter = Shapes::StructureShape.new(name: 'FolderSearchFilter')
    FolderSearchFilterList = Shapes::ListShape.new(name: 'FolderSearchFilterList')
    FolderSummary = Shapes::StructureShape.new(name: 'FolderSummary')
    FolderSummaryList = Shapes::ListShape.new(name: 'FolderSummaryList')
    FolderType = Shapes::StringShape.new(name: 'FolderType')
    Font = Shapes::StructureShape.new(name: 'Font')
    FontConfiguration = Shapes::StructureShape.new(name: 'FontConfiguration')
    FontDecoration = Shapes::StringShape.new(name: 'FontDecoration')
    FontList = Shapes::ListShape.new(name: 'FontList')
    FontSize = Shapes::StructureShape.new(name: 'FontSize')
    FontStyle = Shapes::StringShape.new(name: 'FontStyle')
    FontWeight = Shapes::StructureShape.new(name: 'FontWeight')
    FontWeightName = Shapes::StringShape.new(name: 'FontWeightName')
    ForecastComputation = Shapes::StructureShape.new(name: 'ForecastComputation')
    ForecastComputationCustomSeasonalityValue = Shapes::IntegerShape.new(name: 'ForecastComputationCustomSeasonalityValue')
    ForecastComputationSeasonality = Shapes::StringShape.new(name: 'ForecastComputationSeasonality')
    ForecastConfiguration = Shapes::StructureShape.new(name: 'ForecastConfiguration')
    ForecastConfigurationList = Shapes::ListShape.new(name: 'ForecastConfigurationList')
    ForecastScenario = Shapes::StructureShape.new(name: 'ForecastScenario')
    FormatConfiguration = Shapes::StructureShape.new(name: 'FormatConfiguration')
    FreeFormLayoutCanvasSizeOptions = Shapes::StructureShape.new(name: 'FreeFormLayoutCanvasSizeOptions')
    FreeFormLayoutConfiguration = Shapes::StructureShape.new(name: 'FreeFormLayoutConfiguration')
    FreeFormLayoutElement = Shapes::StructureShape.new(name: 'FreeFormLayoutElement')
    FreeFormLayoutElementBackgroundStyle = Shapes::StructureShape.new(name: 'FreeFormLayoutElementBackgroundStyle')
    FreeFormLayoutElementBorderStyle = Shapes::StructureShape.new(name: 'FreeFormLayoutElementBorderStyle')
    FreeFormLayoutScreenCanvasSizeOptions = Shapes::StructureShape.new(name: 'FreeFormLayoutScreenCanvasSizeOptions')
    FreeFormSectionLayoutConfiguration = Shapes::StructureShape.new(name: 'FreeFormSectionLayoutConfiguration')
    FreeFromLayoutElementList = Shapes::ListShape.new(name: 'FreeFromLayoutElementList')
    FunnelChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'FunnelChartAggregatedFieldWells')
    FunnelChartConfiguration = Shapes::StructureShape.new(name: 'FunnelChartConfiguration')
    FunnelChartDataLabelOptions = Shapes::StructureShape.new(name: 'FunnelChartDataLabelOptions')
    FunnelChartDimensionFieldList = Shapes::ListShape.new(name: 'FunnelChartDimensionFieldList')
    FunnelChartFieldWells = Shapes::StructureShape.new(name: 'FunnelChartFieldWells')
    FunnelChartMeasureDataLabelStyle = Shapes::StringShape.new(name: 'FunnelChartMeasureDataLabelStyle')
    FunnelChartMeasureFieldList = Shapes::ListShape.new(name: 'FunnelChartMeasureFieldList')
    FunnelChartSortConfiguration = Shapes::StructureShape.new(name: 'FunnelChartSortConfiguration')
    FunnelChartVisual = Shapes::StructureShape.new(name: 'FunnelChartVisual')
    GaugeChartArcConditionalFormatting = Shapes::StructureShape.new(name: 'GaugeChartArcConditionalFormatting')
    GaugeChartConditionalFormatting = Shapes::StructureShape.new(name: 'GaugeChartConditionalFormatting')
    GaugeChartConditionalFormattingOption = Shapes::StructureShape.new(name: 'GaugeChartConditionalFormattingOption')
    GaugeChartConditionalFormattingOptionList = Shapes::ListShape.new(name: 'GaugeChartConditionalFormattingOptionList')
    GaugeChartConfiguration = Shapes::StructureShape.new(name: 'GaugeChartConfiguration')
    GaugeChartFieldWells = Shapes::StructureShape.new(name: 'GaugeChartFieldWells')
    GaugeChartOptions = Shapes::StructureShape.new(name: 'GaugeChartOptions')
    GaugeChartPrimaryValueConditionalFormatting = Shapes::StructureShape.new(name: 'GaugeChartPrimaryValueConditionalFormatting')
    GaugeChartVisual = Shapes::StructureShape.new(name: 'GaugeChartVisual')
    GenerateEmbedUrlForAnonymousUserRequest = Shapes::StructureShape.new(name: 'GenerateEmbedUrlForAnonymousUserRequest')
    GenerateEmbedUrlForAnonymousUserResponse = Shapes::StructureShape.new(name: 'GenerateEmbedUrlForAnonymousUserResponse')
    GenerateEmbedUrlForRegisteredUserRequest = Shapes::StructureShape.new(name: 'GenerateEmbedUrlForRegisteredUserRequest')
    GenerateEmbedUrlForRegisteredUserResponse = Shapes::StructureShape.new(name: 'GenerateEmbedUrlForRegisteredUserResponse')
    GeoSpatialColumnGroup = Shapes::StructureShape.new(name: 'GeoSpatialColumnGroup')
    GeoSpatialCountryCode = Shapes::StringShape.new(name: 'GeoSpatialCountryCode')
    GeoSpatialDataRole = Shapes::StringShape.new(name: 'GeoSpatialDataRole')
    GeospatialCoordinateBounds = Shapes::StructureShape.new(name: 'GeospatialCoordinateBounds')
    GeospatialHeatmapColorScale = Shapes::StructureShape.new(name: 'GeospatialHeatmapColorScale')
    GeospatialHeatmapConfiguration = Shapes::StructureShape.new(name: 'GeospatialHeatmapConfiguration')
    GeospatialHeatmapDataColor = Shapes::StructureShape.new(name: 'GeospatialHeatmapDataColor')
    GeospatialHeatmapDataColorList = Shapes::ListShape.new(name: 'GeospatialHeatmapDataColorList')
    GeospatialMapAggregatedFieldWells = Shapes::StructureShape.new(name: 'GeospatialMapAggregatedFieldWells')
    GeospatialMapConfiguration = Shapes::StructureShape.new(name: 'GeospatialMapConfiguration')
    GeospatialMapFieldWells = Shapes::StructureShape.new(name: 'GeospatialMapFieldWells')
    GeospatialMapStyleOptions = Shapes::StructureShape.new(name: 'GeospatialMapStyleOptions')
    GeospatialMapVisual = Shapes::StructureShape.new(name: 'GeospatialMapVisual')
    GeospatialPointStyleOptions = Shapes::StructureShape.new(name: 'GeospatialPointStyleOptions')
    GeospatialSelectedPointStyle = Shapes::StringShape.new(name: 'GeospatialSelectedPointStyle')
    GeospatialWindowOptions = Shapes::StructureShape.new(name: 'GeospatialWindowOptions')
    GetDashboardEmbedUrlRequest = Shapes::StructureShape.new(name: 'GetDashboardEmbedUrlRequest')
    GetDashboardEmbedUrlResponse = Shapes::StructureShape.new(name: 'GetDashboardEmbedUrlResponse')
    GetSessionEmbedUrlRequest = Shapes::StructureShape.new(name: 'GetSessionEmbedUrlRequest')
    GetSessionEmbedUrlResponse = Shapes::StructureShape.new(name: 'GetSessionEmbedUrlResponse')
    GlobalTableBorderOptions = Shapes::StructureShape.new(name: 'GlobalTableBorderOptions')
    GradientColor = Shapes::StructureShape.new(name: 'GradientColor')
    GradientStop = Shapes::StructureShape.new(name: 'GradientStop')
    GradientStopList = Shapes::ListShape.new(name: 'GradientStopList')
    GridLayoutCanvasSizeOptions = Shapes::StructureShape.new(name: 'GridLayoutCanvasSizeOptions')
    GridLayoutConfiguration = Shapes::StructureShape.new(name: 'GridLayoutConfiguration')
    GridLayoutElement = Shapes::StructureShape.new(name: 'GridLayoutElement')
    GridLayoutElementColumnIndex = Shapes::IntegerShape.new(name: 'GridLayoutElementColumnIndex')
    GridLayoutElementColumnSpan = Shapes::IntegerShape.new(name: 'GridLayoutElementColumnSpan')
    GridLayoutElementList = Shapes::ListShape.new(name: 'GridLayoutElementList')
    GridLayoutElementRowIndex = Shapes::IntegerShape.new(name: 'GridLayoutElementRowIndex')
    GridLayoutElementRowSpan = Shapes::IntegerShape.new(name: 'GridLayoutElementRowSpan')
    GridLayoutScreenCanvasSizeOptions = Shapes::StructureShape.new(name: 'GridLayoutScreenCanvasSizeOptions')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupDescription = Shapes::StringShape.new(name: 'GroupDescription')
    GroupFilterAttribute = Shapes::StringShape.new(name: 'GroupFilterAttribute')
    GroupFilterOperator = Shapes::StringShape.new(name: 'GroupFilterOperator')
    GroupList = Shapes::ListShape.new(name: 'GroupList')
    GroupMember = Shapes::StructureShape.new(name: 'GroupMember')
    GroupMemberList = Shapes::ListShape.new(name: 'GroupMemberList')
    GroupMemberName = Shapes::StringShape.new(name: 'GroupMemberName')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    GroupSearchFilter = Shapes::StructureShape.new(name: 'GroupSearchFilter')
    GroupSearchFilterList = Shapes::ListShape.new(name: 'GroupSearchFilterList')
    GroupsList = Shapes::ListShape.new(name: 'GroupsList')
    GrowthRateComputation = Shapes::StructureShape.new(name: 'GrowthRateComputation')
    GrowthRatePeriodSize = Shapes::IntegerShape.new(name: 'GrowthRatePeriodSize')
    GutterStyle = Shapes::StructureShape.new(name: 'GutterStyle')
    HeaderFooterSectionConfiguration = Shapes::StructureShape.new(name: 'HeaderFooterSectionConfiguration')
    HeaderFooterSectionConfigurationList = Shapes::ListShape.new(name: 'HeaderFooterSectionConfigurationList')
    HeatMapAggregatedFieldWells = Shapes::StructureShape.new(name: 'HeatMapAggregatedFieldWells')
    HeatMapConfiguration = Shapes::StructureShape.new(name: 'HeatMapConfiguration')
    HeatMapDimensionFieldList = Shapes::ListShape.new(name: 'HeatMapDimensionFieldList')
    HeatMapFieldWells = Shapes::StructureShape.new(name: 'HeatMapFieldWells')
    HeatMapMeasureFieldList = Shapes::ListShape.new(name: 'HeatMapMeasureFieldList')
    HeatMapSortConfiguration = Shapes::StructureShape.new(name: 'HeatMapSortConfiguration')
    HeatMapVisual = Shapes::StructureShape.new(name: 'HeatMapVisual')
    HexColor = Shapes::StringShape.new(name: 'HexColor')
    HexColorWithTransparency = Shapes::StringShape.new(name: 'HexColorWithTransparency')
    HierarchyId = Shapes::StringShape.new(name: 'HierarchyId')
    HistogramAggregatedFieldWells = Shapes::StructureShape.new(name: 'HistogramAggregatedFieldWells')
    HistogramBinOptions = Shapes::StructureShape.new(name: 'HistogramBinOptions')
    HistogramBinType = Shapes::StringShape.new(name: 'HistogramBinType')
    HistogramConfiguration = Shapes::StructureShape.new(name: 'HistogramConfiguration')
    HistogramFieldWells = Shapes::StructureShape.new(name: 'HistogramFieldWells')
    HistogramMeasureFieldList = Shapes::ListShape.new(name: 'HistogramMeasureFieldList')
    HistogramVisual = Shapes::StructureShape.new(name: 'HistogramVisual')
    HorizontalTextAlignment = Shapes::StringShape.new(name: 'HorizontalTextAlignment')
    Host = Shapes::StringShape.new(name: 'Host')
    IAMPolicyAssignment = Shapes::StructureShape.new(name: 'IAMPolicyAssignment')
    IAMPolicyAssignmentName = Shapes::StringShape.new(name: 'IAMPolicyAssignmentName')
    IAMPolicyAssignmentSummary = Shapes::StructureShape.new(name: 'IAMPolicyAssignmentSummary')
    IAMPolicyAssignmentSummaryList = Shapes::ListShape.new(name: 'IAMPolicyAssignmentSummaryList')
    IPv4Address = Shapes::StringShape.new(name: 'IPv4Address')
    Icon = Shapes::StringShape.new(name: 'Icon')
    IdentityMap = Shapes::MapShape.new(name: 'IdentityMap')
    IdentityName = Shapes::StringShape.new(name: 'IdentityName')
    IdentityNameList = Shapes::ListShape.new(name: 'IdentityNameList')
    IdentityStore = Shapes::StringShape.new(name: 'IdentityStore')
    IdentityType = Shapes::StringShape.new(name: 'IdentityType')
    IdentityTypeNotSupportedException = Shapes::StructureShape.new(name: 'IdentityTypeNotSupportedException')
    IncrementalRefresh = Shapes::StructureShape.new(name: 'IncrementalRefresh')
    Ingestion = Shapes::StructureShape.new(name: 'Ingestion')
    IngestionErrorType = Shapes::StringShape.new(name: 'IngestionErrorType')
    IngestionId = Shapes::StringShape.new(name: 'IngestionId')
    IngestionMaxResults = Shapes::IntegerShape.new(name: 'IngestionMaxResults')
    IngestionRequestSource = Shapes::StringShape.new(name: 'IngestionRequestSource')
    IngestionRequestType = Shapes::StringShape.new(name: 'IngestionRequestType')
    IngestionStatus = Shapes::StringShape.new(name: 'IngestionStatus')
    IngestionType = Shapes::StringShape.new(name: 'IngestionType')
    Ingestions = Shapes::ListShape.new(name: 'Ingestions')
    InputColumn = Shapes::StructureShape.new(name: 'InputColumn')
    InputColumnDataType = Shapes::StringShape.new(name: 'InputColumnDataType')
    InputColumnList = Shapes::ListShape.new(name: 'InputColumnList')
    InsightConfiguration = Shapes::StructureShape.new(name: 'InsightConfiguration')
    InsightVisual = Shapes::StructureShape.new(name: 'InsightVisual')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    IntegerDatasetParameter = Shapes::StructureShape.new(name: 'IntegerDatasetParameter')
    IntegerDatasetParameterDefaultValue = Shapes::IntegerShape.new(name: 'IntegerDatasetParameterDefaultValue')
    IntegerDatasetParameterDefaultValues = Shapes::StructureShape.new(name: 'IntegerDatasetParameterDefaultValues')
    IntegerDatasetParameterValueList = Shapes::ListShape.new(name: 'IntegerDatasetParameterValueList')
    IntegerDefaultValueList = Shapes::ListShape.new(name: 'IntegerDefaultValueList')
    IntegerDefaultValues = Shapes::StructureShape.new(name: 'IntegerDefaultValues')
    IntegerParameter = Shapes::StructureShape.new(name: 'IntegerParameter')
    IntegerParameterDeclaration = Shapes::StructureShape.new(name: 'IntegerParameterDeclaration')
    IntegerParameterList = Shapes::ListShape.new(name: 'IntegerParameterList')
    IntegerValueWhenUnsetConfiguration = Shapes::StructureShape.new(name: 'IntegerValueWhenUnsetConfiguration')
    InternalFailureException = Shapes::StructureShape.new(name: 'InternalFailureException')
    InvalidNextTokenException = Shapes::StructureShape.new(name: 'InvalidNextTokenException')
    InvalidParameterValueException = Shapes::StructureShape.new(name: 'InvalidParameterValueException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    IpRestrictionRuleDescription = Shapes::StringShape.new(name: 'IpRestrictionRuleDescription')
    IpRestrictionRuleMap = Shapes::MapShape.new(name: 'IpRestrictionRuleMap')
    ItemsLimitConfiguration = Shapes::StructureShape.new(name: 'ItemsLimitConfiguration')
    JiraParameters = Shapes::StructureShape.new(name: 'JiraParameters')
    JoinInstruction = Shapes::StructureShape.new(name: 'JoinInstruction')
    JoinKeyProperties = Shapes::StructureShape.new(name: 'JoinKeyProperties')
    JoinType = Shapes::StringShape.new(name: 'JoinType')
    KPIConditionalFormatting = Shapes::StructureShape.new(name: 'KPIConditionalFormatting')
    KPIConditionalFormattingOption = Shapes::StructureShape.new(name: 'KPIConditionalFormattingOption')
    KPIConditionalFormattingOptionList = Shapes::ListShape.new(name: 'KPIConditionalFormattingOptionList')
    KPIConfiguration = Shapes::StructureShape.new(name: 'KPIConfiguration')
    KPIFieldWells = Shapes::StructureShape.new(name: 'KPIFieldWells')
    KPIOptions = Shapes::StructureShape.new(name: 'KPIOptions')
    KPIPrimaryValueConditionalFormatting = Shapes::StructureShape.new(name: 'KPIPrimaryValueConditionalFormatting')
    KPIProgressBarConditionalFormatting = Shapes::StructureShape.new(name: 'KPIProgressBarConditionalFormatting')
    KPISortConfiguration = Shapes::StructureShape.new(name: 'KPISortConfiguration')
    KPIVisual = Shapes::StructureShape.new(name: 'KPIVisual')
    LabelOptions = Shapes::StructureShape.new(name: 'LabelOptions')
    Latitude = Shapes::FloatShape.new(name: 'Latitude')
    Layout = Shapes::StructureShape.new(name: 'Layout')
    LayoutConfiguration = Shapes::StructureShape.new(name: 'LayoutConfiguration')
    LayoutElementType = Shapes::StringShape.new(name: 'LayoutElementType')
    LayoutList = Shapes::ListShape.new(name: 'LayoutList')
    LegendOptions = Shapes::StructureShape.new(name: 'LegendOptions')
    LegendPosition = Shapes::StringShape.new(name: 'LegendPosition')
    Length = Shapes::StringShape.new(name: 'Length')
    LimitExceededException = Shapes::StructureShape.new(name: 'LimitExceededException')
    LimitedString = Shapes::StringShape.new(name: 'LimitedString')
    LineChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'LineChartAggregatedFieldWells')
    LineChartConfiguration = Shapes::StructureShape.new(name: 'LineChartConfiguration')
    LineChartDefaultSeriesSettings = Shapes::StructureShape.new(name: 'LineChartDefaultSeriesSettings')
    LineChartFieldWells = Shapes::StructureShape.new(name: 'LineChartFieldWells')
    LineChartLineStyle = Shapes::StringShape.new(name: 'LineChartLineStyle')
    LineChartLineStyleSettings = Shapes::StructureShape.new(name: 'LineChartLineStyleSettings')
    LineChartMarkerShape = Shapes::StringShape.new(name: 'LineChartMarkerShape')
    LineChartMarkerStyleSettings = Shapes::StructureShape.new(name: 'LineChartMarkerStyleSettings')
    LineChartSeriesSettings = Shapes::StructureShape.new(name: 'LineChartSeriesSettings')
    LineChartSortConfiguration = Shapes::StructureShape.new(name: 'LineChartSortConfiguration')
    LineChartType = Shapes::StringShape.new(name: 'LineChartType')
    LineChartVisual = Shapes::StructureShape.new(name: 'LineChartVisual')
    LineInterpolation = Shapes::StringShape.new(name: 'LineInterpolation')
    LineSeriesAxisDisplayOptions = Shapes::StructureShape.new(name: 'LineSeriesAxisDisplayOptions')
    LinkSharingConfiguration = Shapes::StructureShape.new(name: 'LinkSharingConfiguration')
    ListAnalysesRequest = Shapes::StructureShape.new(name: 'ListAnalysesRequest')
    ListAnalysesResponse = Shapes::StructureShape.new(name: 'ListAnalysesResponse')
    ListAssetBundleExportJobsRequest = Shapes::StructureShape.new(name: 'ListAssetBundleExportJobsRequest')
    ListAssetBundleExportJobsResponse = Shapes::StructureShape.new(name: 'ListAssetBundleExportJobsResponse')
    ListAssetBundleImportJobsRequest = Shapes::StructureShape.new(name: 'ListAssetBundleImportJobsRequest')
    ListAssetBundleImportJobsResponse = Shapes::StructureShape.new(name: 'ListAssetBundleImportJobsResponse')
    ListControlDisplayOptions = Shapes::StructureShape.new(name: 'ListControlDisplayOptions')
    ListControlSearchOptions = Shapes::StructureShape.new(name: 'ListControlSearchOptions')
    ListControlSelectAllOptions = Shapes::StructureShape.new(name: 'ListControlSelectAllOptions')
    ListDashboardVersionsRequest = Shapes::StructureShape.new(name: 'ListDashboardVersionsRequest')
    ListDashboardVersionsResponse = Shapes::StructureShape.new(name: 'ListDashboardVersionsResponse')
    ListDashboardsRequest = Shapes::StructureShape.new(name: 'ListDashboardsRequest')
    ListDashboardsResponse = Shapes::StructureShape.new(name: 'ListDashboardsResponse')
    ListDataSetsRequest = Shapes::StructureShape.new(name: 'ListDataSetsRequest')
    ListDataSetsResponse = Shapes::StructureShape.new(name: 'ListDataSetsResponse')
    ListDataSourcesRequest = Shapes::StructureShape.new(name: 'ListDataSourcesRequest')
    ListDataSourcesResponse = Shapes::StructureShape.new(name: 'ListDataSourcesResponse')
    ListFolderMembersRequest = Shapes::StructureShape.new(name: 'ListFolderMembersRequest')
    ListFolderMembersResponse = Shapes::StructureShape.new(name: 'ListFolderMembersResponse')
    ListFoldersRequest = Shapes::StructureShape.new(name: 'ListFoldersRequest')
    ListFoldersResponse = Shapes::StructureShape.new(name: 'ListFoldersResponse')
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
    ListRefreshSchedulesRequest = Shapes::StructureShape.new(name: 'ListRefreshSchedulesRequest')
    ListRefreshSchedulesResponse = Shapes::StructureShape.new(name: 'ListRefreshSchedulesResponse')
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
    ListTopicRefreshSchedulesRequest = Shapes::StructureShape.new(name: 'ListTopicRefreshSchedulesRequest')
    ListTopicRefreshSchedulesResponse = Shapes::StructureShape.new(name: 'ListTopicRefreshSchedulesResponse')
    ListTopicsRequest = Shapes::StructureShape.new(name: 'ListTopicsRequest')
    ListTopicsResponse = Shapes::StructureShape.new(name: 'ListTopicsResponse')
    ListUserGroupsRequest = Shapes::StructureShape.new(name: 'ListUserGroupsRequest')
    ListUserGroupsResponse = Shapes::StructureShape.new(name: 'ListUserGroupsResponse')
    ListUsersRequest = Shapes::StructureShape.new(name: 'ListUsersRequest')
    ListUsersResponse = Shapes::StructureShape.new(name: 'ListUsersResponse')
    ListVPCConnectionsRequest = Shapes::StructureShape.new(name: 'ListVPCConnectionsRequest')
    ListVPCConnectionsResponse = Shapes::StructureShape.new(name: 'ListVPCConnectionsResponse')
    LoadingAnimation = Shapes::StructureShape.new(name: 'LoadingAnimation')
    LocalNavigationConfiguration = Shapes::StructureShape.new(name: 'LocalNavigationConfiguration')
    LogicalTable = Shapes::StructureShape.new(name: 'LogicalTable')
    LogicalTableAlias = Shapes::StringShape.new(name: 'LogicalTableAlias')
    LogicalTableId = Shapes::StringShape.new(name: 'LogicalTableId')
    LogicalTableMap = Shapes::MapShape.new(name: 'LogicalTableMap')
    LogicalTableSource = Shapes::StructureShape.new(name: 'LogicalTableSource')
    Long = Shapes::IntegerShape.new(name: 'Long')
    LongFormatText = Shapes::StructureShape.new(name: 'LongFormatText')
    LongPlainText = Shapes::StringShape.new(name: 'LongPlainText')
    LongRichText = Shapes::StringShape.new(name: 'LongRichText')
    Longitude = Shapes::FloatShape.new(name: 'Longitude')
    LookbackWindow = Shapes::StructureShape.new(name: 'LookbackWindow')
    LookbackWindowSizeUnit = Shapes::StringShape.new(name: 'LookbackWindowSizeUnit')
    ManifestFileLocation = Shapes::StructureShape.new(name: 'ManifestFileLocation')
    MapZoomMode = Shapes::StringShape.new(name: 'MapZoomMode')
    MappedDataSetParameter = Shapes::StructureShape.new(name: 'MappedDataSetParameter')
    MappedDataSetParameters = Shapes::ListShape.new(name: 'MappedDataSetParameters')
    MarginStyle = Shapes::StructureShape.new(name: 'MarginStyle')
    MariaDbParameters = Shapes::StructureShape.new(name: 'MariaDbParameters')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    MaximumLabelType = Shapes::StructureShape.new(name: 'MaximumLabelType')
    MaximumMinimumComputation = Shapes::StructureShape.new(name: 'MaximumMinimumComputation')
    MaximumMinimumComputationType = Shapes::StringShape.new(name: 'MaximumMinimumComputationType')
    MeasureField = Shapes::StructureShape.new(name: 'MeasureField')
    MeasureFieldList = Shapes::ListShape.new(name: 'MeasureFieldList')
    MemberIdArnPair = Shapes::StructureShape.new(name: 'MemberIdArnPair')
    MemberType = Shapes::StringShape.new(name: 'MemberType')
    MetricComparisonComputation = Shapes::StructureShape.new(name: 'MetricComparisonComputation')
    MinimumLabelType = Shapes::StructureShape.new(name: 'MinimumLabelType')
    MissingDataConfiguration = Shapes::StructureShape.new(name: 'MissingDataConfiguration')
    MissingDataConfigurationList = Shapes::ListShape.new(name: 'MissingDataConfigurationList')
    MissingDataTreatmentOption = Shapes::StringShape.new(name: 'MissingDataTreatmentOption')
    MySqlParameters = Shapes::StructureShape.new(name: 'MySqlParameters')
    NamedEntityAggType = Shapes::StringShape.new(name: 'NamedEntityAggType')
    NamedEntityDefinition = Shapes::StructureShape.new(name: 'NamedEntityDefinition')
    NamedEntityDefinitionMetric = Shapes::StructureShape.new(name: 'NamedEntityDefinitionMetric')
    NamedEntityDefinitions = Shapes::ListShape.new(name: 'NamedEntityDefinitions')
    NamedFilterAggType = Shapes::StringShape.new(name: 'NamedFilterAggType')
    NamedFilterType = Shapes::StringShape.new(name: 'NamedFilterType')
    Namespace = Shapes::StringShape.new(name: 'Namespace')
    NamespaceError = Shapes::StructureShape.new(name: 'NamespaceError')
    NamespaceErrorType = Shapes::StringShape.new(name: 'NamespaceErrorType')
    NamespaceInfoV2 = Shapes::StructureShape.new(name: 'NamespaceInfoV2')
    NamespaceStatus = Shapes::StringShape.new(name: 'NamespaceStatus')
    Namespaces = Shapes::ListShape.new(name: 'Namespaces')
    NarrativeString = Shapes::StringShape.new(name: 'NarrativeString')
    NegativeFormat = Shapes::StructureShape.new(name: 'NegativeFormat')
    NegativeValueConfiguration = Shapes::StructureShape.new(name: 'NegativeValueConfiguration')
    NegativeValueDisplayMode = Shapes::StringShape.new(name: 'NegativeValueDisplayMode')
    NetworkInterface = Shapes::StructureShape.new(name: 'NetworkInterface')
    NetworkInterfaceId = Shapes::StringShape.new(name: 'NetworkInterfaceId')
    NetworkInterfaceList = Shapes::ListShape.new(name: 'NetworkInterfaceList')
    NetworkInterfaceStatus = Shapes::StringShape.new(name: 'NetworkInterfaceStatus')
    NewDefaultValues = Shapes::StructureShape.new(name: 'NewDefaultValues')
    NonEmptyString = Shapes::StringShape.new(name: 'NonEmptyString')
    NullString = Shapes::StringShape.new(name: 'NullString')
    NullValueFormatConfiguration = Shapes::StructureShape.new(name: 'NullValueFormatConfiguration')
    NullableBoolean = Shapes::BooleanShape.new(name: 'NullableBoolean')
    NumberDisplayFormatConfiguration = Shapes::StructureShape.new(name: 'NumberDisplayFormatConfiguration')
    NumberFormatConfiguration = Shapes::StructureShape.new(name: 'NumberFormatConfiguration')
    NumberScale = Shapes::StringShape.new(name: 'NumberScale')
    NumericAxisOptions = Shapes::StructureShape.new(name: 'NumericAxisOptions')
    NumericEqualityDrillDownFilter = Shapes::StructureShape.new(name: 'NumericEqualityDrillDownFilter')
    NumericEqualityFilter = Shapes::StructureShape.new(name: 'NumericEqualityFilter')
    NumericEqualityMatchOperator = Shapes::StringShape.new(name: 'NumericEqualityMatchOperator')
    NumericFilterSelectAllOptions = Shapes::StringShape.new(name: 'NumericFilterSelectAllOptions')
    NumericFormatConfiguration = Shapes::StructureShape.new(name: 'NumericFormatConfiguration')
    NumericRangeFilter = Shapes::StructureShape.new(name: 'NumericRangeFilter')
    NumericRangeFilterValue = Shapes::StructureShape.new(name: 'NumericRangeFilterValue')
    NumericSeparatorConfiguration = Shapes::StructureShape.new(name: 'NumericSeparatorConfiguration')
    NumericSeparatorSymbol = Shapes::StringShape.new(name: 'NumericSeparatorSymbol')
    NumericalAggregationFunction = Shapes::StructureShape.new(name: 'NumericalAggregationFunction')
    NumericalDimensionField = Shapes::StructureShape.new(name: 'NumericalDimensionField')
    NumericalMeasureField = Shapes::StructureShape.new(name: 'NumericalMeasureField')
    OnClause = Shapes::StringShape.new(name: 'OnClause')
    OptionalPort = Shapes::IntegerShape.new(name: 'OptionalPort')
    OracleParameters = Shapes::StructureShape.new(name: 'OracleParameters')
    OtherCategories = Shapes::StringShape.new(name: 'OtherCategories')
    OutputColumn = Shapes::StructureShape.new(name: 'OutputColumn')
    OutputColumnList = Shapes::ListShape.new(name: 'OutputColumnList')
    OverrideDatasetParameterOperation = Shapes::StructureShape.new(name: 'OverrideDatasetParameterOperation')
    PageNumber = Shapes::IntegerShape.new(name: 'PageNumber')
    PaginationConfiguration = Shapes::StructureShape.new(name: 'PaginationConfiguration')
    PanelBorderStyle = Shapes::StringShape.new(name: 'PanelBorderStyle')
    PanelConfiguration = Shapes::StructureShape.new(name: 'PanelConfiguration')
    PanelTitleOptions = Shapes::StructureShape.new(name: 'PanelTitleOptions')
    PaperOrientation = Shapes::StringShape.new(name: 'PaperOrientation')
    PaperSize = Shapes::StringShape.new(name: 'PaperSize')
    ParameterControl = Shapes::StructureShape.new(name: 'ParameterControl')
    ParameterControlList = Shapes::ListShape.new(name: 'ParameterControlList')
    ParameterDateTimePickerControl = Shapes::StructureShape.new(name: 'ParameterDateTimePickerControl')
    ParameterDeclaration = Shapes::StructureShape.new(name: 'ParameterDeclaration')
    ParameterDeclarationList = Shapes::ListShape.new(name: 'ParameterDeclarationList')
    ParameterDropDownControl = Shapes::StructureShape.new(name: 'ParameterDropDownControl')
    ParameterListControl = Shapes::StructureShape.new(name: 'ParameterListControl')
    ParameterName = Shapes::StringShape.new(name: 'ParameterName')
    ParameterSelectableValueList = Shapes::ListShape.new(name: 'ParameterSelectableValueList')
    ParameterSelectableValues = Shapes::StructureShape.new(name: 'ParameterSelectableValues')
    ParameterSliderControl = Shapes::StructureShape.new(name: 'ParameterSliderControl')
    ParameterTextAreaControl = Shapes::StructureShape.new(name: 'ParameterTextAreaControl')
    ParameterTextFieldControl = Shapes::StructureShape.new(name: 'ParameterTextFieldControl')
    ParameterValueType = Shapes::StringShape.new(name: 'ParameterValueType')
    Parameters = Shapes::StructureShape.new(name: 'Parameters')
    Password = Shapes::StringShape.new(name: 'Password')
    Path = Shapes::ListShape.new(name: 'Path')
    PercentNumber = Shapes::FloatShape.new(name: 'PercentNumber')
    PercentVisibleRange = Shapes::StructureShape.new(name: 'PercentVisibleRange')
    PercentageDisplayFormatConfiguration = Shapes::StructureShape.new(name: 'PercentageDisplayFormatConfiguration')
    PercentileAggregation = Shapes::StructureShape.new(name: 'PercentileAggregation')
    PercentileValue = Shapes::FloatShape.new(name: 'PercentileValue')
    PeriodOverPeriodComputation = Shapes::StructureShape.new(name: 'PeriodOverPeriodComputation')
    PeriodToDateComputation = Shapes::StructureShape.new(name: 'PeriodToDateComputation')
    PeriodsBackward = Shapes::IntegerShape.new(name: 'PeriodsBackward')
    PeriodsForward = Shapes::IntegerShape.new(name: 'PeriodsForward')
    PhysicalTable = Shapes::StructureShape.new(name: 'PhysicalTable')
    PhysicalTableId = Shapes::StringShape.new(name: 'PhysicalTableId')
    PhysicalTableMap = Shapes::MapShape.new(name: 'PhysicalTableMap')
    PieChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'PieChartAggregatedFieldWells')
    PieChartConfiguration = Shapes::StructureShape.new(name: 'PieChartConfiguration')
    PieChartFieldWells = Shapes::StructureShape.new(name: 'PieChartFieldWells')
    PieChartSortConfiguration = Shapes::StructureShape.new(name: 'PieChartSortConfiguration')
    PieChartVisual = Shapes::StructureShape.new(name: 'PieChartVisual')
    PivotFieldSortOptions = Shapes::StructureShape.new(name: 'PivotFieldSortOptions')
    PivotFieldSortOptionsList = Shapes::ListShape.new(name: 'PivotFieldSortOptionsList')
    PivotMeasureFieldList = Shapes::ListShape.new(name: 'PivotMeasureFieldList')
    PivotTableAggregatedFieldWells = Shapes::StructureShape.new(name: 'PivotTableAggregatedFieldWells')
    PivotTableCellConditionalFormatting = Shapes::StructureShape.new(name: 'PivotTableCellConditionalFormatting')
    PivotTableConditionalFormatting = Shapes::StructureShape.new(name: 'PivotTableConditionalFormatting')
    PivotTableConditionalFormattingOption = Shapes::StructureShape.new(name: 'PivotTableConditionalFormattingOption')
    PivotTableConditionalFormattingOptionList = Shapes::ListShape.new(name: 'PivotTableConditionalFormattingOptionList')
    PivotTableConditionalFormattingScope = Shapes::StructureShape.new(name: 'PivotTableConditionalFormattingScope')
    PivotTableConditionalFormattingScopeList = Shapes::ListShape.new(name: 'PivotTableConditionalFormattingScopeList')
    PivotTableConditionalFormattingScopeRole = Shapes::StringShape.new(name: 'PivotTableConditionalFormattingScopeRole')
    PivotTableConfiguration = Shapes::StructureShape.new(name: 'PivotTableConfiguration')
    PivotTableDataPathOption = Shapes::StructureShape.new(name: 'PivotTableDataPathOption')
    PivotTableDataPathOptionList = Shapes::ListShape.new(name: 'PivotTableDataPathOptionList')
    PivotTableDimensionList = Shapes::ListShape.new(name: 'PivotTableDimensionList')
    PivotTableFieldCollapseState = Shapes::StringShape.new(name: 'PivotTableFieldCollapseState')
    PivotTableFieldCollapseStateOption = Shapes::StructureShape.new(name: 'PivotTableFieldCollapseStateOption')
    PivotTableFieldCollapseStateOptionList = Shapes::ListShape.new(name: 'PivotTableFieldCollapseStateOptionList')
    PivotTableFieldCollapseStateTarget = Shapes::StructureShape.new(name: 'PivotTableFieldCollapseStateTarget')
    PivotTableFieldOption = Shapes::StructureShape.new(name: 'PivotTableFieldOption')
    PivotTableFieldOptionList = Shapes::ListShape.new(name: 'PivotTableFieldOptionList')
    PivotTableFieldOptions = Shapes::StructureShape.new(name: 'PivotTableFieldOptions')
    PivotTableFieldSubtotalOptions = Shapes::StructureShape.new(name: 'PivotTableFieldSubtotalOptions')
    PivotTableFieldSubtotalOptionsList = Shapes::ListShape.new(name: 'PivotTableFieldSubtotalOptionsList')
    PivotTableFieldWells = Shapes::StructureShape.new(name: 'PivotTableFieldWells')
    PivotTableMetricPlacement = Shapes::StringShape.new(name: 'PivotTableMetricPlacement')
    PivotTableOptions = Shapes::StructureShape.new(name: 'PivotTableOptions')
    PivotTablePaginatedReportOptions = Shapes::StructureShape.new(name: 'PivotTablePaginatedReportOptions')
    PivotTableSortBy = Shapes::StructureShape.new(name: 'PivotTableSortBy')
    PivotTableSortConfiguration = Shapes::StructureShape.new(name: 'PivotTableSortConfiguration')
    PivotTableSubtotalLevel = Shapes::StringShape.new(name: 'PivotTableSubtotalLevel')
    PivotTableTotalOptions = Shapes::StructureShape.new(name: 'PivotTableTotalOptions')
    PivotTableVisual = Shapes::StructureShape.new(name: 'PivotTableVisual')
    PivotTotalOptions = Shapes::StructureShape.new(name: 'PivotTotalOptions')
    PixelLength = Shapes::StringShape.new(name: 'PixelLength')
    Port = Shapes::IntegerShape.new(name: 'Port')
    PositiveInteger = Shapes::IntegerShape.new(name: 'PositiveInteger')
    PositiveLong = Shapes::IntegerShape.new(name: 'PositiveLong')
    PostgreSqlParameters = Shapes::StructureShape.new(name: 'PostgreSqlParameters')
    PreconditionNotMetException = Shapes::StructureShape.new(name: 'PreconditionNotMetException')
    PredefinedHierarchy = Shapes::StructureShape.new(name: 'PredefinedHierarchy')
    PredefinedHierarchyColumnList = Shapes::ListShape.new(name: 'PredefinedHierarchyColumnList')
    PredictionInterval = Shapes::IntegerShape.new(name: 'PredictionInterval')
    Prefix = Shapes::StringShape.new(name: 'Prefix')
    PrestoParameters = Shapes::StructureShape.new(name: 'PrestoParameters')
    PrimaryValueDisplayType = Shapes::StringShape.new(name: 'PrimaryValueDisplayType')
    Principal = Shapes::StringShape.new(name: 'Principal')
    PrincipalList = Shapes::ListShape.new(name: 'PrincipalList')
    ProgressBarOptions = Shapes::StructureShape.new(name: 'ProgressBarOptions')
    ProjectOperation = Shapes::StructureShape.new(name: 'ProjectOperation')
    ProjectedColumnList = Shapes::ListShape.new(name: 'ProjectedColumnList')
    PropertyRole = Shapes::StringShape.new(name: 'PropertyRole')
    PropertyUsage = Shapes::StringShape.new(name: 'PropertyUsage')
    PutDataSetRefreshPropertiesRequest = Shapes::StructureShape.new(name: 'PutDataSetRefreshPropertiesRequest')
    PutDataSetRefreshPropertiesResponse = Shapes::StructureShape.new(name: 'PutDataSetRefreshPropertiesResponse')
    Query = Shapes::StringShape.new(name: 'Query')
    QueueInfo = Shapes::StructureShape.new(name: 'QueueInfo')
    QuickSightUserNotFoundException = Shapes::StructureShape.new(name: 'QuickSightUserNotFoundException')
    RadarChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'RadarChartAggregatedFieldWells')
    RadarChartAreaStyleSettings = Shapes::StructureShape.new(name: 'RadarChartAreaStyleSettings')
    RadarChartAxesRangeScale = Shapes::StringShape.new(name: 'RadarChartAxesRangeScale')
    RadarChartCategoryFieldList = Shapes::ListShape.new(name: 'RadarChartCategoryFieldList')
    RadarChartColorFieldList = Shapes::ListShape.new(name: 'RadarChartColorFieldList')
    RadarChartConfiguration = Shapes::StructureShape.new(name: 'RadarChartConfiguration')
    RadarChartFieldWells = Shapes::StructureShape.new(name: 'RadarChartFieldWells')
    RadarChartSeriesSettings = Shapes::StructureShape.new(name: 'RadarChartSeriesSettings')
    RadarChartShape = Shapes::StringShape.new(name: 'RadarChartShape')
    RadarChartSortConfiguration = Shapes::StructureShape.new(name: 'RadarChartSortConfiguration')
    RadarChartStartAngle = Shapes::FloatShape.new(name: 'RadarChartStartAngle')
    RadarChartValuesFieldList = Shapes::ListShape.new(name: 'RadarChartValuesFieldList')
    RadarChartVisual = Shapes::StructureShape.new(name: 'RadarChartVisual')
    RangeConstant = Shapes::StructureShape.new(name: 'RangeConstant')
    RangeEndsLabelType = Shapes::StructureShape.new(name: 'RangeEndsLabelType')
    RdsParameters = Shapes::StructureShape.new(name: 'RdsParameters')
    RecoveryWindowInDays = Shapes::IntegerShape.new(name: 'RecoveryWindowInDays')
    RedshiftParameters = Shapes::StructureShape.new(name: 'RedshiftParameters')
    ReferenceLine = Shapes::StructureShape.new(name: 'ReferenceLine')
    ReferenceLineCustomLabelConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineCustomLabelConfiguration')
    ReferenceLineDataConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineDataConfiguration')
    ReferenceLineDynamicDataConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineDynamicDataConfiguration')
    ReferenceLineLabelConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineLabelConfiguration')
    ReferenceLineLabelHorizontalPosition = Shapes::StringShape.new(name: 'ReferenceLineLabelHorizontalPosition')
    ReferenceLineLabelVerticalPosition = Shapes::StringShape.new(name: 'ReferenceLineLabelVerticalPosition')
    ReferenceLineList = Shapes::ListShape.new(name: 'ReferenceLineList')
    ReferenceLinePatternType = Shapes::StringShape.new(name: 'ReferenceLinePatternType')
    ReferenceLineStaticDataConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineStaticDataConfiguration')
    ReferenceLineStyleConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineStyleConfiguration')
    ReferenceLineValueLabelConfiguration = Shapes::StructureShape.new(name: 'ReferenceLineValueLabelConfiguration')
    ReferenceLineValueLabelRelativePosition = Shapes::StringShape.new(name: 'ReferenceLineValueLabelRelativePosition')
    RefreshConfiguration = Shapes::StructureShape.new(name: 'RefreshConfiguration')
    RefreshFrequency = Shapes::StructureShape.new(name: 'RefreshFrequency')
    RefreshInterval = Shapes::StringShape.new(name: 'RefreshInterval')
    RefreshSchedule = Shapes::StructureShape.new(name: 'RefreshSchedule')
    RefreshSchedules = Shapes::ListShape.new(name: 'RefreshSchedules')
    RegisterUserRequest = Shapes::StructureShape.new(name: 'RegisterUserRequest')
    RegisterUserResponse = Shapes::StructureShape.new(name: 'RegisterUserResponse')
    RegisteredUserConsoleFeatureConfigurations = Shapes::StructureShape.new(name: 'RegisteredUserConsoleFeatureConfigurations')
    RegisteredUserDashboardEmbeddingConfiguration = Shapes::StructureShape.new(name: 'RegisteredUserDashboardEmbeddingConfiguration')
    RegisteredUserDashboardFeatureConfigurations = Shapes::StructureShape.new(name: 'RegisteredUserDashboardFeatureConfigurations')
    RegisteredUserDashboardVisualEmbeddingConfiguration = Shapes::StructureShape.new(name: 'RegisteredUserDashboardVisualEmbeddingConfiguration')
    RegisteredUserEmbeddingExperienceConfiguration = Shapes::StructureShape.new(name: 'RegisteredUserEmbeddingExperienceConfiguration')
    RegisteredUserQSearchBarEmbeddingConfiguration = Shapes::StructureShape.new(name: 'RegisteredUserQSearchBarEmbeddingConfiguration')
    RegisteredUserQuickSightConsoleEmbeddingConfiguration = Shapes::StructureShape.new(name: 'RegisteredUserQuickSightConsoleEmbeddingConfiguration')
    RelationalTable = Shapes::StructureShape.new(name: 'RelationalTable')
    RelationalTableCatalog = Shapes::StringShape.new(name: 'RelationalTableCatalog')
    RelationalTableName = Shapes::StringShape.new(name: 'RelationalTableName')
    RelationalTableSchema = Shapes::StringShape.new(name: 'RelationalTableSchema')
    RelativeDateTimeControlDisplayOptions = Shapes::StructureShape.new(name: 'RelativeDateTimeControlDisplayOptions')
    RelativeDateType = Shapes::StringShape.new(name: 'RelativeDateType')
    RelativeDatesFilter = Shapes::StructureShape.new(name: 'RelativeDatesFilter')
    RelativeFontSize = Shapes::StringShape.new(name: 'RelativeFontSize')
    RenameColumnOperation = Shapes::StructureShape.new(name: 'RenameColumnOperation')
    ResizeOption = Shapes::StringShape.new(name: 'ResizeOption')
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
    RoleArn = Shapes::StringShape.new(name: 'RoleArn')
    RoleName = Shapes::StringShape.new(name: 'RoleName')
    RoleSessionName = Shapes::StringShape.new(name: 'RoleSessionName')
    RollingDateConfiguration = Shapes::StructureShape.new(name: 'RollingDateConfiguration')
    RowAlternateColorList = Shapes::ListShape.new(name: 'RowAlternateColorList')
    RowAlternateColorOptions = Shapes::StructureShape.new(name: 'RowAlternateColorOptions')
    RowInfo = Shapes::StructureShape.new(name: 'RowInfo')
    RowLevelPermissionDataSet = Shapes::StructureShape.new(name: 'RowLevelPermissionDataSet')
    RowLevelPermissionFormatVersion = Shapes::StringShape.new(name: 'RowLevelPermissionFormatVersion')
    RowLevelPermissionPolicy = Shapes::StringShape.new(name: 'RowLevelPermissionPolicy')
    RowLevelPermissionTagConfiguration = Shapes::StructureShape.new(name: 'RowLevelPermissionTagConfiguration')
    RowLevelPermissionTagDelimiter = Shapes::StringShape.new(name: 'RowLevelPermissionTagDelimiter')
    RowLevelPermissionTagRule = Shapes::StructureShape.new(name: 'RowLevelPermissionTagRule')
    RowLevelPermissionTagRuleConfiguration = Shapes::ListShape.new(name: 'RowLevelPermissionTagRuleConfiguration')
    RowLevelPermissionTagRuleConfigurationList = Shapes::ListShape.new(name: 'RowLevelPermissionTagRuleConfigurationList')
    RowLevelPermissionTagRuleList = Shapes::ListShape.new(name: 'RowLevelPermissionTagRuleList')
    RowSortList = Shapes::ListShape.new(name: 'RowSortList')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Parameters = Shapes::StructureShape.new(name: 'S3Parameters')
    S3Source = Shapes::StructureShape.new(name: 'S3Source')
    S3Uri = Shapes::StringShape.new(name: 'S3Uri')
    SameSheetTargetVisualConfiguration = Shapes::StructureShape.new(name: 'SameSheetTargetVisualConfiguration')
    SankeyDiagramAggregatedFieldWells = Shapes::StructureShape.new(name: 'SankeyDiagramAggregatedFieldWells')
    SankeyDiagramChartConfiguration = Shapes::StructureShape.new(name: 'SankeyDiagramChartConfiguration')
    SankeyDiagramFieldWells = Shapes::StructureShape.new(name: 'SankeyDiagramFieldWells')
    SankeyDiagramSortConfiguration = Shapes::StructureShape.new(name: 'SankeyDiagramSortConfiguration')
    SankeyDiagramVisual = Shapes::StructureShape.new(name: 'SankeyDiagramVisual')
    ScatterPlotCategoricallyAggregatedFieldWells = Shapes::StructureShape.new(name: 'ScatterPlotCategoricallyAggregatedFieldWells')
    ScatterPlotConfiguration = Shapes::StructureShape.new(name: 'ScatterPlotConfiguration')
    ScatterPlotFieldWells = Shapes::StructureShape.new(name: 'ScatterPlotFieldWells')
    ScatterPlotUnaggregatedFieldWells = Shapes::StructureShape.new(name: 'ScatterPlotUnaggregatedFieldWells')
    ScatterPlotVisual = Shapes::StructureShape.new(name: 'ScatterPlotVisual')
    ScheduleRefreshOnEntity = Shapes::StructureShape.new(name: 'ScheduleRefreshOnEntity')
    ScrollBarOptions = Shapes::StructureShape.new(name: 'ScrollBarOptions')
    SearchAnalysesRequest = Shapes::StructureShape.new(name: 'SearchAnalysesRequest')
    SearchAnalysesResponse = Shapes::StructureShape.new(name: 'SearchAnalysesResponse')
    SearchDashboardsRequest = Shapes::StructureShape.new(name: 'SearchDashboardsRequest')
    SearchDashboardsResponse = Shapes::StructureShape.new(name: 'SearchDashboardsResponse')
    SearchDataSetsRequest = Shapes::StructureShape.new(name: 'SearchDataSetsRequest')
    SearchDataSetsResponse = Shapes::StructureShape.new(name: 'SearchDataSetsResponse')
    SearchDataSourcesRequest = Shapes::StructureShape.new(name: 'SearchDataSourcesRequest')
    SearchDataSourcesResponse = Shapes::StructureShape.new(name: 'SearchDataSourcesResponse')
    SearchFoldersRequest = Shapes::StructureShape.new(name: 'SearchFoldersRequest')
    SearchFoldersResponse = Shapes::StructureShape.new(name: 'SearchFoldersResponse')
    SearchGroupsRequest = Shapes::StructureShape.new(name: 'SearchGroupsRequest')
    SearchGroupsResponse = Shapes::StructureShape.new(name: 'SearchGroupsResponse')
    Seasonality = Shapes::IntegerShape.new(name: 'Seasonality')
    SecondaryValueOptions = Shapes::StructureShape.new(name: 'SecondaryValueOptions')
    SecretArn = Shapes::StringShape.new(name: 'SecretArn')
    SectionAfterPageBreak = Shapes::StructureShape.new(name: 'SectionAfterPageBreak')
    SectionBasedLayoutCanvasSizeOptions = Shapes::StructureShape.new(name: 'SectionBasedLayoutCanvasSizeOptions')
    SectionBasedLayoutConfiguration = Shapes::StructureShape.new(name: 'SectionBasedLayoutConfiguration')
    SectionBasedLayoutPaperCanvasSizeOptions = Shapes::StructureShape.new(name: 'SectionBasedLayoutPaperCanvasSizeOptions')
    SectionLayoutConfiguration = Shapes::StructureShape.new(name: 'SectionLayoutConfiguration')
    SectionPageBreakConfiguration = Shapes::StructureShape.new(name: 'SectionPageBreakConfiguration')
    SectionPageBreakStatus = Shapes::StringShape.new(name: 'SectionPageBreakStatus')
    SectionStyle = Shapes::StructureShape.new(name: 'SectionStyle')
    SecurityGroupId = Shapes::StringShape.new(name: 'SecurityGroupId')
    SecurityGroupIdList = Shapes::ListShape.new(name: 'SecurityGroupIdList')
    SelectAllValueOptions = Shapes::StringShape.new(name: 'SelectAllValueOptions')
    SelectedFieldList = Shapes::ListShape.new(name: 'SelectedFieldList')
    SelectedFieldOptions = Shapes::StringShape.new(name: 'SelectedFieldOptions')
    SelectedSheetsFilterScopeConfiguration = Shapes::StructureShape.new(name: 'SelectedSheetsFilterScopeConfiguration')
    SelectedTooltipType = Shapes::StringShape.new(name: 'SelectedTooltipType')
    SemanticEntityType = Shapes::StructureShape.new(name: 'SemanticEntityType')
    SemanticType = Shapes::StructureShape.new(name: 'SemanticType')
    SensitiveDouble = Shapes::FloatShape.new(name: 'SensitiveDouble')
    SensitiveDoubleList = Shapes::ListShape.new(name: 'SensitiveDoubleList')
    SensitiveDoubleObject = Shapes::FloatShape.new(name: 'SensitiveDoubleObject')
    SensitiveLong = Shapes::IntegerShape.new(name: 'SensitiveLong')
    SensitiveLongList = Shapes::ListShape.new(name: 'SensitiveLongList')
    SensitiveLongObject = Shapes::IntegerShape.new(name: 'SensitiveLongObject')
    SensitiveString = Shapes::StringShape.new(name: 'SensitiveString')
    SensitiveStringList = Shapes::ListShape.new(name: 'SensitiveStringList')
    SensitiveStringObject = Shapes::StringShape.new(name: 'SensitiveStringObject')
    SensitiveTimestamp = Shapes::TimestampShape.new(name: 'SensitiveTimestamp')
    SensitiveTimestampList = Shapes::ListShape.new(name: 'SensitiveTimestampList')
    SeriesItem = Shapes::StructureShape.new(name: 'SeriesItem')
    SeriesItemList = Shapes::ListShape.new(name: 'SeriesItemList')
    ServiceNowParameters = Shapes::StructureShape.new(name: 'ServiceNowParameters')
    SessionLifetimeInMinutes = Shapes::IntegerShape.new(name: 'SessionLifetimeInMinutes')
    SessionLifetimeInMinutesInvalidException = Shapes::StructureShape.new(name: 'SessionLifetimeInMinutesInvalidException')
    SessionTag = Shapes::StructureShape.new(name: 'SessionTag')
    SessionTagKey = Shapes::StringShape.new(name: 'SessionTagKey')
    SessionTagList = Shapes::ListShape.new(name: 'SessionTagList')
    SessionTagValue = Shapes::StringShape.new(name: 'SessionTagValue')
    SetParameterValueConfiguration = Shapes::StructureShape.new(name: 'SetParameterValueConfiguration')
    SetParameterValueConfigurationList = Shapes::ListShape.new(name: 'SetParameterValueConfigurationList')
    ShapeConditionalFormat = Shapes::StructureShape.new(name: 'ShapeConditionalFormat')
    Sheet = Shapes::StructureShape.new(name: 'Sheet')
    SheetContentType = Shapes::StringShape.new(name: 'SheetContentType')
    SheetControlDateTimePickerType = Shapes::StringShape.new(name: 'SheetControlDateTimePickerType')
    SheetControlLayout = Shapes::StructureShape.new(name: 'SheetControlLayout')
    SheetControlLayoutConfiguration = Shapes::StructureShape.new(name: 'SheetControlLayoutConfiguration')
    SheetControlLayoutList = Shapes::ListShape.new(name: 'SheetControlLayoutList')
    SheetControlListType = Shapes::StringShape.new(name: 'SheetControlListType')
    SheetControlSliderType = Shapes::StringShape.new(name: 'SheetControlSliderType')
    SheetControlTitle = Shapes::StringShape.new(name: 'SheetControlTitle')
    SheetControlsOption = Shapes::StructureShape.new(name: 'SheetControlsOption')
    SheetDefinition = Shapes::StructureShape.new(name: 'SheetDefinition')
    SheetDefinitionList = Shapes::ListShape.new(name: 'SheetDefinitionList')
    SheetDescription = Shapes::StringShape.new(name: 'SheetDescription')
    SheetElementConfigurationOverrides = Shapes::StructureShape.new(name: 'SheetElementConfigurationOverrides')
    SheetElementRenderingRule = Shapes::StructureShape.new(name: 'SheetElementRenderingRule')
    SheetElementRenderingRuleList = Shapes::ListShape.new(name: 'SheetElementRenderingRuleList')
    SheetLayoutElementMaximizationOption = Shapes::StructureShape.new(name: 'SheetLayoutElementMaximizationOption')
    SheetList = Shapes::ListShape.new(name: 'SheetList')
    SheetName = Shapes::StringShape.new(name: 'SheetName')
    SheetStyle = Shapes::StructureShape.new(name: 'SheetStyle')
    SheetTextBox = Shapes::StructureShape.new(name: 'SheetTextBox')
    SheetTextBoxContent = Shapes::StringShape.new(name: 'SheetTextBoxContent')
    SheetTextBoxList = Shapes::ListShape.new(name: 'SheetTextBoxList')
    SheetTitle = Shapes::StringShape.new(name: 'SheetTitle')
    SheetVisualScopingConfiguration = Shapes::StructureShape.new(name: 'SheetVisualScopingConfiguration')
    SheetVisualScopingConfigurations = Shapes::ListShape.new(name: 'SheetVisualScopingConfigurations')
    ShortFormatText = Shapes::StructureShape.new(name: 'ShortFormatText')
    ShortPlainText = Shapes::StringShape.new(name: 'ShortPlainText')
    ShortRestrictiveResourceId = Shapes::StringShape.new(name: 'ShortRestrictiveResourceId')
    ShortRichText = Shapes::StringShape.new(name: 'ShortRichText')
    SignupResponse = Shapes::StructureShape.new(name: 'SignupResponse')
    SimpleClusterMarker = Shapes::StructureShape.new(name: 'SimpleClusterMarker')
    SimpleNumericalAggregationFunction = Shapes::StringShape.new(name: 'SimpleNumericalAggregationFunction')
    SiteBaseUrl = Shapes::StringShape.new(name: 'SiteBaseUrl')
    SliderControlDisplayOptions = Shapes::StructureShape.new(name: 'SliderControlDisplayOptions')
    SmallMultiplesAxisPlacement = Shapes::StringShape.new(name: 'SmallMultiplesAxisPlacement')
    SmallMultiplesAxisProperties = Shapes::StructureShape.new(name: 'SmallMultiplesAxisProperties')
    SmallMultiplesAxisScale = Shapes::StringShape.new(name: 'SmallMultiplesAxisScale')
    SmallMultiplesDimensionFieldList = Shapes::ListShape.new(name: 'SmallMultiplesDimensionFieldList')
    SmallMultiplesOptions = Shapes::StructureShape.new(name: 'SmallMultiplesOptions')
    SnowflakeParameters = Shapes::StructureShape.new(name: 'SnowflakeParameters')
    SortDirection = Shapes::StringShape.new(name: 'SortDirection')
    Spacing = Shapes::StructureShape.new(name: 'Spacing')
    SparkParameters = Shapes::StructureShape.new(name: 'SparkParameters')
    SpecialValue = Shapes::StringShape.new(name: 'SpecialValue')
    SqlEndpointPath = Shapes::StringShape.new(name: 'SqlEndpointPath')
    SqlQuery = Shapes::StringShape.new(name: 'SqlQuery')
    SqlServerParameters = Shapes::StructureShape.new(name: 'SqlServerParameters')
    SslProperties = Shapes::StructureShape.new(name: 'SslProperties')
    StartAssetBundleExportJobRequest = Shapes::StructureShape.new(name: 'StartAssetBundleExportJobRequest')
    StartAssetBundleExportJobResponse = Shapes::StructureShape.new(name: 'StartAssetBundleExportJobResponse')
    StartAssetBundleImportJobRequest = Shapes::StructureShape.new(name: 'StartAssetBundleImportJobRequest')
    StartAssetBundleImportJobResponse = Shapes::StructureShape.new(name: 'StartAssetBundleImportJobResponse')
    StatePersistenceConfigurations = Shapes::StructureShape.new(name: 'StatePersistenceConfigurations')
    Status = Shapes::StringShape.new(name: 'Status')
    StatusCode = Shapes::IntegerShape.new(name: 'StatusCode')
    String = Shapes::StringShape.new(name: 'String')
    StringDatasetParameter = Shapes::StructureShape.new(name: 'StringDatasetParameter')
    StringDatasetParameterDefaultValue = Shapes::StringShape.new(name: 'StringDatasetParameterDefaultValue')
    StringDatasetParameterDefaultValues = Shapes::StructureShape.new(name: 'StringDatasetParameterDefaultValues')
    StringDatasetParameterValueList = Shapes::ListShape.new(name: 'StringDatasetParameterValueList')
    StringDefaultValueList = Shapes::ListShape.new(name: 'StringDefaultValueList')
    StringDefaultValues = Shapes::StructureShape.new(name: 'StringDefaultValues')
    StringFormatConfiguration = Shapes::StructureShape.new(name: 'StringFormatConfiguration')
    StringList = Shapes::ListShape.new(name: 'StringList')
    StringParameter = Shapes::StructureShape.new(name: 'StringParameter')
    StringParameterDeclaration = Shapes::StructureShape.new(name: 'StringParameterDeclaration')
    StringParameterList = Shapes::ListShape.new(name: 'StringParameterList')
    StringValueWhenUnsetConfiguration = Shapes::StructureShape.new(name: 'StringValueWhenUnsetConfiguration')
    SubnetId = Shapes::StringShape.new(name: 'SubnetId')
    SubnetIdList = Shapes::ListShape.new(name: 'SubnetIdList')
    SubtotalOptions = Shapes::StructureShape.new(name: 'SubtotalOptions')
    Suffix = Shapes::StringShape.new(name: 'Suffix')
    Synonyms = Shapes::ListShape.new(name: 'Synonyms')
    TableAggregatedFieldWells = Shapes::StructureShape.new(name: 'TableAggregatedFieldWells')
    TableBorderOptions = Shapes::StructureShape.new(name: 'TableBorderOptions')
    TableBorderStyle = Shapes::StringShape.new(name: 'TableBorderStyle')
    TableBorderThickness = Shapes::IntegerShape.new(name: 'TableBorderThickness')
    TableCellConditionalFormatting = Shapes::StructureShape.new(name: 'TableCellConditionalFormatting')
    TableCellImageScalingConfiguration = Shapes::StringShape.new(name: 'TableCellImageScalingConfiguration')
    TableCellImageSizingConfiguration = Shapes::StructureShape.new(name: 'TableCellImageSizingConfiguration')
    TableCellStyle = Shapes::StructureShape.new(name: 'TableCellStyle')
    TableConditionalFormatting = Shapes::StructureShape.new(name: 'TableConditionalFormatting')
    TableConditionalFormattingOption = Shapes::StructureShape.new(name: 'TableConditionalFormattingOption')
    TableConditionalFormattingOptionList = Shapes::ListShape.new(name: 'TableConditionalFormattingOptionList')
    TableConfiguration = Shapes::StructureShape.new(name: 'TableConfiguration')
    TableFieldCustomIconContent = Shapes::StructureShape.new(name: 'TableFieldCustomIconContent')
    TableFieldCustomTextContent = Shapes::StructureShape.new(name: 'TableFieldCustomTextContent')
    TableFieldHeight = Shapes::IntegerShape.new(name: 'TableFieldHeight')
    TableFieldIconSetType = Shapes::StringShape.new(name: 'TableFieldIconSetType')
    TableFieldImageConfiguration = Shapes::StructureShape.new(name: 'TableFieldImageConfiguration')
    TableFieldLinkConfiguration = Shapes::StructureShape.new(name: 'TableFieldLinkConfiguration')
    TableFieldLinkContentConfiguration = Shapes::StructureShape.new(name: 'TableFieldLinkContentConfiguration')
    TableFieldOption = Shapes::StructureShape.new(name: 'TableFieldOption')
    TableFieldOptionList = Shapes::ListShape.new(name: 'TableFieldOptionList')
    TableFieldOptions = Shapes::StructureShape.new(name: 'TableFieldOptions')
    TableFieldURLConfiguration = Shapes::StructureShape.new(name: 'TableFieldURLConfiguration')
    TableFieldWells = Shapes::StructureShape.new(name: 'TableFieldWells')
    TableInlineVisualization = Shapes::StructureShape.new(name: 'TableInlineVisualization')
    TableInlineVisualizationList = Shapes::ListShape.new(name: 'TableInlineVisualizationList')
    TableOptions = Shapes::StructureShape.new(name: 'TableOptions')
    TableOrientation = Shapes::StringShape.new(name: 'TableOrientation')
    TablePaginatedReportOptions = Shapes::StructureShape.new(name: 'TablePaginatedReportOptions')
    TableRowConditionalFormatting = Shapes::StructureShape.new(name: 'TableRowConditionalFormatting')
    TableSideBorderOptions = Shapes::StructureShape.new(name: 'TableSideBorderOptions')
    TableSortConfiguration = Shapes::StructureShape.new(name: 'TableSortConfiguration')
    TableTotalsPlacement = Shapes::StringShape.new(name: 'TableTotalsPlacement')
    TableTotalsScrollStatus = Shapes::StringShape.new(name: 'TableTotalsScrollStatus')
    TableUnaggregatedFieldWells = Shapes::StructureShape.new(name: 'TableUnaggregatedFieldWells')
    TableVisual = Shapes::StructureShape.new(name: 'TableVisual')
    Tag = Shapes::StructureShape.new(name: 'Tag')
    TagColumnOperation = Shapes::StructureShape.new(name: 'TagColumnOperation')
    TagKey = Shapes::StringShape.new(name: 'TagKey')
    TagKeyList = Shapes::ListShape.new(name: 'TagKeyList')
    TagList = Shapes::ListShape.new(name: 'TagList')
    TagResourceRequest = Shapes::StructureShape.new(name: 'TagResourceRequest')
    TagResourceResponse = Shapes::StructureShape.new(name: 'TagResourceResponse')
    TagValue = Shapes::StringShape.new(name: 'TagValue')
    TargetVisualList = Shapes::ListShape.new(name: 'TargetVisualList')
    TargetVisualOptions = Shapes::StringShape.new(name: 'TargetVisualOptions')
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
    TemplateVersionDefinition = Shapes::StructureShape.new(name: 'TemplateVersionDefinition')
    TemplateVersionSummary = Shapes::StructureShape.new(name: 'TemplateVersionSummary')
    TemplateVersionSummaryList = Shapes::ListShape.new(name: 'TemplateVersionSummaryList')
    TeradataParameters = Shapes::StructureShape.new(name: 'TeradataParameters')
    TextAreaControlDelimiter = Shapes::StringShape.new(name: 'TextAreaControlDelimiter')
    TextAreaControlDisplayOptions = Shapes::StructureShape.new(name: 'TextAreaControlDisplayOptions')
    TextConditionalFormat = Shapes::StructureShape.new(name: 'TextConditionalFormat')
    TextControlPlaceholderOptions = Shapes::StructureShape.new(name: 'TextControlPlaceholderOptions')
    TextFieldControlDisplayOptions = Shapes::StructureShape.new(name: 'TextFieldControlDisplayOptions')
    TextQualifier = Shapes::StringShape.new(name: 'TextQualifier')
    TextWrap = Shapes::StringShape.new(name: 'TextWrap')
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
    ThousandSeparatorOptions = Shapes::StructureShape.new(name: 'ThousandSeparatorOptions')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TileLayoutStyle = Shapes::StructureShape.new(name: 'TileLayoutStyle')
    TileStyle = Shapes::StructureShape.new(name: 'TileStyle')
    TimeBasedForecastProperties = Shapes::StructureShape.new(name: 'TimeBasedForecastProperties')
    TimeEqualityFilter = Shapes::StructureShape.new(name: 'TimeEqualityFilter')
    TimeGranularity = Shapes::StringShape.new(name: 'TimeGranularity')
    TimeRangeDrillDownFilter = Shapes::StructureShape.new(name: 'TimeRangeDrillDownFilter')
    TimeRangeFilter = Shapes::StructureShape.new(name: 'TimeRangeFilter')
    TimeRangeFilterValue = Shapes::StructureShape.new(name: 'TimeRangeFilterValue')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    TooltipItem = Shapes::StructureShape.new(name: 'TooltipItem')
    TooltipItemList = Shapes::ListShape.new(name: 'TooltipItemList')
    TooltipOptions = Shapes::StructureShape.new(name: 'TooltipOptions')
    TooltipTitleType = Shapes::StringShape.new(name: 'TooltipTitleType')
    TopBottomComputationType = Shapes::StringShape.new(name: 'TopBottomComputationType')
    TopBottomFilter = Shapes::StructureShape.new(name: 'TopBottomFilter')
    TopBottomMoversComputation = Shapes::StructureShape.new(name: 'TopBottomMoversComputation')
    TopBottomMoversComputationMoverSize = Shapes::IntegerShape.new(name: 'TopBottomMoversComputationMoverSize')
    TopBottomRankedComputation = Shapes::StructureShape.new(name: 'TopBottomRankedComputation')
    TopBottomRankedComputationResultSize = Shapes::IntegerShape.new(name: 'TopBottomRankedComputationResultSize')
    TopBottomSortOrder = Shapes::StringShape.new(name: 'TopBottomSortOrder')
    TopicCalculatedField = Shapes::StructureShape.new(name: 'TopicCalculatedField')
    TopicCalculatedFields = Shapes::ListShape.new(name: 'TopicCalculatedFields')
    TopicCategoryFilter = Shapes::StructureShape.new(name: 'TopicCategoryFilter')
    TopicCategoryFilterConstant = Shapes::StructureShape.new(name: 'TopicCategoryFilterConstant')
    TopicColumn = Shapes::StructureShape.new(name: 'TopicColumn')
    TopicColumns = Shapes::ListShape.new(name: 'TopicColumns')
    TopicDateRangeFilter = Shapes::StructureShape.new(name: 'TopicDateRangeFilter')
    TopicDetails = Shapes::StructureShape.new(name: 'TopicDetails')
    TopicFilter = Shapes::StructureShape.new(name: 'TopicFilter')
    TopicFilters = Shapes::ListShape.new(name: 'TopicFilters')
    TopicId = Shapes::StringShape.new(name: 'TopicId')
    TopicNamedEntities = Shapes::ListShape.new(name: 'TopicNamedEntities')
    TopicNamedEntity = Shapes::StructureShape.new(name: 'TopicNamedEntity')
    TopicNumericEqualityFilter = Shapes::StructureShape.new(name: 'TopicNumericEqualityFilter')
    TopicNumericRangeFilter = Shapes::StructureShape.new(name: 'TopicNumericRangeFilter')
    TopicNumericSeparatorSymbol = Shapes::StringShape.new(name: 'TopicNumericSeparatorSymbol')
    TopicRangeFilterConstant = Shapes::StructureShape.new(name: 'TopicRangeFilterConstant')
    TopicRefreshDetails = Shapes::StructureShape.new(name: 'TopicRefreshDetails')
    TopicRefreshSchedule = Shapes::StructureShape.new(name: 'TopicRefreshSchedule')
    TopicRefreshScheduleSummaries = Shapes::ListShape.new(name: 'TopicRefreshScheduleSummaries')
    TopicRefreshScheduleSummary = Shapes::StructureShape.new(name: 'TopicRefreshScheduleSummary')
    TopicRefreshStatus = Shapes::StringShape.new(name: 'TopicRefreshStatus')
    TopicRelativeDateFilter = Shapes::StructureShape.new(name: 'TopicRelativeDateFilter')
    TopicRelativeDateFilterFunction = Shapes::StringShape.new(name: 'TopicRelativeDateFilterFunction')
    TopicScheduleType = Shapes::StringShape.new(name: 'TopicScheduleType')
    TopicSingularFilterConstant = Shapes::StructureShape.new(name: 'TopicSingularFilterConstant')
    TopicSummaries = Shapes::ListShape.new(name: 'TopicSummaries')
    TopicSummary = Shapes::StructureShape.new(name: 'TopicSummary')
    TopicTimeGranularity = Shapes::StringShape.new(name: 'TopicTimeGranularity')
    TotalAggregationComputation = Shapes::StructureShape.new(name: 'TotalAggregationComputation')
    TotalOptions = Shapes::StructureShape.new(name: 'TotalOptions')
    TransformOperation = Shapes::StructureShape.new(name: 'TransformOperation')
    TransformOperationList = Shapes::ListShape.new(name: 'TransformOperationList')
    TreeMapAggregatedFieldWells = Shapes::StructureShape.new(name: 'TreeMapAggregatedFieldWells')
    TreeMapConfiguration = Shapes::StructureShape.new(name: 'TreeMapConfiguration')
    TreeMapDimensionFieldList = Shapes::ListShape.new(name: 'TreeMapDimensionFieldList')
    TreeMapFieldWells = Shapes::StructureShape.new(name: 'TreeMapFieldWells')
    TreeMapMeasureFieldList = Shapes::ListShape.new(name: 'TreeMapMeasureFieldList')
    TreeMapSortConfiguration = Shapes::StructureShape.new(name: 'TreeMapSortConfiguration')
    TreeMapVisual = Shapes::StructureShape.new(name: 'TreeMapVisual')
    TrendArrowOptions = Shapes::StructureShape.new(name: 'TrendArrowOptions')
    TwitterParameters = Shapes::StructureShape.new(name: 'TwitterParameters')
    TypeCastFormat = Shapes::StringShape.new(name: 'TypeCastFormat')
    TypeParameters = Shapes::MapShape.new(name: 'TypeParameters')
    Typography = Shapes::StructureShape.new(name: 'Typography')
    UIColorPalette = Shapes::StructureShape.new(name: 'UIColorPalette')
    URLOperationTemplate = Shapes::StringShape.new(name: 'URLOperationTemplate')
    URLTargetConfiguration = Shapes::StringShape.new(name: 'URLTargetConfiguration')
    UnaggregatedField = Shapes::StructureShape.new(name: 'UnaggregatedField')
    UnaggregatedFieldList = Shapes::ListShape.new(name: 'UnaggregatedFieldList')
    UndefinedSpecifiedValueType = Shapes::StringShape.new(name: 'UndefinedSpecifiedValueType')
    UnicodeIcon = Shapes::StringShape.new(name: 'UnicodeIcon')
    UniqueValuesComputation = Shapes::StructureShape.new(name: 'UniqueValuesComputation')
    UnlimitedPixelLength = Shapes::StringShape.new(name: 'UnlimitedPixelLength')
    UnsupportedPricingPlanException = Shapes::StructureShape.new(name: 'UnsupportedPricingPlanException')
    UnsupportedUserEditionException = Shapes::StructureShape.new(name: 'UnsupportedUserEditionException')
    UntagColumnOperation = Shapes::StructureShape.new(name: 'UntagColumnOperation')
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
    UpdateFolderPermissionsRequest = Shapes::StructureShape.new(name: 'UpdateFolderPermissionsRequest')
    UpdateFolderPermissionsResponse = Shapes::StructureShape.new(name: 'UpdateFolderPermissionsResponse')
    UpdateFolderRequest = Shapes::StructureShape.new(name: 'UpdateFolderRequest')
    UpdateFolderResponse = Shapes::StructureShape.new(name: 'UpdateFolderResponse')
    UpdateGroupRequest = Shapes::StructureShape.new(name: 'UpdateGroupRequest')
    UpdateGroupResponse = Shapes::StructureShape.new(name: 'UpdateGroupResponse')
    UpdateIAMPolicyAssignmentRequest = Shapes::StructureShape.new(name: 'UpdateIAMPolicyAssignmentRequest')
    UpdateIAMPolicyAssignmentResponse = Shapes::StructureShape.new(name: 'UpdateIAMPolicyAssignmentResponse')
    UpdateIpRestrictionRequest = Shapes::StructureShape.new(name: 'UpdateIpRestrictionRequest')
    UpdateIpRestrictionResponse = Shapes::StructureShape.new(name: 'UpdateIpRestrictionResponse')
    UpdateLinkPermissionList = Shapes::ListShape.new(name: 'UpdateLinkPermissionList')
    UpdatePublicSharingSettingsRequest = Shapes::StructureShape.new(name: 'UpdatePublicSharingSettingsRequest')
    UpdatePublicSharingSettingsResponse = Shapes::StructureShape.new(name: 'UpdatePublicSharingSettingsResponse')
    UpdateRefreshScheduleRequest = Shapes::StructureShape.new(name: 'UpdateRefreshScheduleRequest')
    UpdateRefreshScheduleResponse = Shapes::StructureShape.new(name: 'UpdateRefreshScheduleResponse')
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
    UpdateTopicPermissionsRequest = Shapes::StructureShape.new(name: 'UpdateTopicPermissionsRequest')
    UpdateTopicPermissionsResponse = Shapes::StructureShape.new(name: 'UpdateTopicPermissionsResponse')
    UpdateTopicRefreshScheduleRequest = Shapes::StructureShape.new(name: 'UpdateTopicRefreshScheduleRequest')
    UpdateTopicRefreshScheduleResponse = Shapes::StructureShape.new(name: 'UpdateTopicRefreshScheduleResponse')
    UpdateTopicRequest = Shapes::StructureShape.new(name: 'UpdateTopicRequest')
    UpdateTopicResponse = Shapes::StructureShape.new(name: 'UpdateTopicResponse')
    UpdateUserRequest = Shapes::StructureShape.new(name: 'UpdateUserRequest')
    UpdateUserResponse = Shapes::StructureShape.new(name: 'UpdateUserResponse')
    UpdateVPCConnectionRequest = Shapes::StructureShape.new(name: 'UpdateVPCConnectionRequest')
    UpdateVPCConnectionResponse = Shapes::StructureShape.new(name: 'UpdateVPCConnectionResponse')
    UploadSettings = Shapes::StructureShape.new(name: 'UploadSettings')
    User = Shapes::StructureShape.new(name: 'User')
    UserList = Shapes::ListShape.new(name: 'UserList')
    UserName = Shapes::StringShape.new(name: 'UserName')
    UserRole = Shapes::StringShape.new(name: 'UserRole')
    VPCConnection = Shapes::StructureShape.new(name: 'VPCConnection')
    VPCConnectionAvailabilityStatus = Shapes::StringShape.new(name: 'VPCConnectionAvailabilityStatus')
    VPCConnectionResourceIdRestricted = Shapes::StringShape.new(name: 'VPCConnectionResourceIdRestricted')
    VPCConnectionResourceIdUnrestricted = Shapes::StringShape.new(name: 'VPCConnectionResourceIdUnrestricted')
    VPCConnectionResourceStatus = Shapes::StringShape.new(name: 'VPCConnectionResourceStatus')
    VPCConnectionSummary = Shapes::StructureShape.new(name: 'VPCConnectionSummary')
    VPCConnectionSummaryList = Shapes::ListShape.new(name: 'VPCConnectionSummaryList')
    ValueWhenUnsetOption = Shapes::StringShape.new(name: 'ValueWhenUnsetOption')
    VersionDescription = Shapes::StringShape.new(name: 'VersionDescription')
    VersionNumber = Shapes::IntegerShape.new(name: 'VersionNumber')
    VerticalTextAlignment = Shapes::StringShape.new(name: 'VerticalTextAlignment')
    Visibility = Shapes::StringShape.new(name: 'Visibility')
    VisiblePanelColumns = Shapes::IntegerShape.new(name: 'VisiblePanelColumns')
    VisiblePanelRows = Shapes::IntegerShape.new(name: 'VisiblePanelRows')
    VisibleRangeOptions = Shapes::StructureShape.new(name: 'VisibleRangeOptions')
    Visual = Shapes::StructureShape.new(name: 'Visual')
    VisualAxisSortOption = Shapes::StructureShape.new(name: 'VisualAxisSortOption')
    VisualCustomAction = Shapes::StructureShape.new(name: 'VisualCustomAction')
    VisualCustomActionList = Shapes::ListShape.new(name: 'VisualCustomActionList')
    VisualCustomActionName = Shapes::StringShape.new(name: 'VisualCustomActionName')
    VisualCustomActionOperation = Shapes::StructureShape.new(name: 'VisualCustomActionOperation')
    VisualCustomActionOperationList = Shapes::ListShape.new(name: 'VisualCustomActionOperationList')
    VisualCustomActionTrigger = Shapes::StringShape.new(name: 'VisualCustomActionTrigger')
    VisualList = Shapes::ListShape.new(name: 'VisualList')
    VisualMenuOption = Shapes::StructureShape.new(name: 'VisualMenuOption')
    VisualPalette = Shapes::StructureShape.new(name: 'VisualPalette')
    VisualSubtitleLabelOptions = Shapes::StructureShape.new(name: 'VisualSubtitleLabelOptions')
    VisualTitleLabelOptions = Shapes::StructureShape.new(name: 'VisualTitleLabelOptions')
    VpcConnectionProperties = Shapes::StructureShape.new(name: 'VpcConnectionProperties')
    Warehouse = Shapes::StringShape.new(name: 'Warehouse')
    WaterfallChartAggregatedFieldWells = Shapes::StructureShape.new(name: 'WaterfallChartAggregatedFieldWells')
    WaterfallChartConfiguration = Shapes::StructureShape.new(name: 'WaterfallChartConfiguration')
    WaterfallChartFieldWells = Shapes::StructureShape.new(name: 'WaterfallChartFieldWells')
    WaterfallChartOptions = Shapes::StructureShape.new(name: 'WaterfallChartOptions')
    WaterfallChartSortConfiguration = Shapes::StructureShape.new(name: 'WaterfallChartSortConfiguration')
    WaterfallVisual = Shapes::StructureShape.new(name: 'WaterfallVisual')
    WhatIfPointScenario = Shapes::StructureShape.new(name: 'WhatIfPointScenario')
    WhatIfRangeScenario = Shapes::StructureShape.new(name: 'WhatIfRangeScenario')
    WidgetStatus = Shapes::StringShape.new(name: 'WidgetStatus')
    WordCloudAggregatedFieldWells = Shapes::StructureShape.new(name: 'WordCloudAggregatedFieldWells')
    WordCloudChartConfiguration = Shapes::StructureShape.new(name: 'WordCloudChartConfiguration')
    WordCloudCloudLayout = Shapes::StringShape.new(name: 'WordCloudCloudLayout')
    WordCloudDimensionFieldList = Shapes::ListShape.new(name: 'WordCloudDimensionFieldList')
    WordCloudFieldWells = Shapes::StructureShape.new(name: 'WordCloudFieldWells')
    WordCloudMaximumStringLength = Shapes::IntegerShape.new(name: 'WordCloudMaximumStringLength')
    WordCloudMeasureFieldList = Shapes::ListShape.new(name: 'WordCloudMeasureFieldList')
    WordCloudOptions = Shapes::StructureShape.new(name: 'WordCloudOptions')
    WordCloudSortConfiguration = Shapes::StructureShape.new(name: 'WordCloudSortConfiguration')
    WordCloudVisual = Shapes::StructureShape.new(name: 'WordCloudVisual')
    WordCloudWordCasing = Shapes::StringShape.new(name: 'WordCloudWordCasing')
    WordCloudWordOrientation = Shapes::StringShape.new(name: 'WordCloudWordOrientation')
    WordCloudWordPadding = Shapes::StringShape.new(name: 'WordCloudWordPadding')
    WordCloudWordScaling = Shapes::StringShape.new(name: 'WordCloudWordScaling')
    WorkGroup = Shapes::StringShape.new(name: 'WorkGroup')
    boolean = Shapes::BooleanShape.new(name: 'boolean')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AccessDeniedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AccountCustomization.add_member(:default_theme, Shapes::ShapeRef.new(shape: Arn, location_name: "DefaultTheme"))
    AccountCustomization.add_member(:default_email_customization_template, Shapes::ShapeRef.new(shape: Arn, location_name: "DefaultEmailCustomizationTemplate"))
    AccountCustomization.struct_class = Types::AccountCustomization

    AccountInfo.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountName"))
    AccountInfo.add_member(:edition, Shapes::ShapeRef.new(shape: Edition, location_name: "Edition"))
    AccountInfo.add_member(:notification_email, Shapes::ShapeRef.new(shape: String, location_name: "NotificationEmail"))
    AccountInfo.add_member(:authentication_type, Shapes::ShapeRef.new(shape: String, location_name: "AuthenticationType"))
    AccountInfo.add_member(:account_subscription_status, Shapes::ShapeRef.new(shape: String, location_name: "AccountSubscriptionStatus"))
    AccountInfo.struct_class = Types::AccountInfo

    AccountSettings.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "AccountName"))
    AccountSettings.add_member(:edition, Shapes::ShapeRef.new(shape: Edition, location_name: "Edition"))
    AccountSettings.add_member(:default_namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "DefaultNamespace"))
    AccountSettings.add_member(:notification_email, Shapes::ShapeRef.new(shape: String, location_name: "NotificationEmail"))
    AccountSettings.add_member(:public_sharing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PublicSharingEnabled"))
    AccountSettings.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "TerminationProtectionEnabled"))
    AccountSettings.struct_class = Types::AccountSettings

    ActionList.member = Shapes::ShapeRef.new(shape: String)

    ActiveIAMPolicyAssignment.add_member(:assignment_name, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentName, location_name: "AssignmentName"))
    ActiveIAMPolicyAssignment.add_member(:policy_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "PolicyArn"))
    ActiveIAMPolicyAssignment.struct_class = Types::ActiveIAMPolicyAssignment

    ActiveIAMPolicyAssignmentList.member = Shapes::ShapeRef.new(shape: ActiveIAMPolicyAssignment)

    AdHocFilteringOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    AdHocFilteringOption.struct_class = Types::AdHocFilteringOption

    AdditionalDashboardIdList.member = Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId)

    AggregationFunction.add_member(:numerical_aggregation_function, Shapes::ShapeRef.new(shape: NumericalAggregationFunction, location_name: "NumericalAggregationFunction"))
    AggregationFunction.add_member(:categorical_aggregation_function, Shapes::ShapeRef.new(shape: CategoricalAggregationFunction, location_name: "CategoricalAggregationFunction"))
    AggregationFunction.add_member(:date_aggregation_function, Shapes::ShapeRef.new(shape: DateAggregationFunction, location_name: "DateAggregationFunction"))
    AggregationFunction.struct_class = Types::AggregationFunction

    AggregationFunctionParameters.key = Shapes::ShapeRef.new(shape: LimitedString)
    AggregationFunctionParameters.value = Shapes::ShapeRef.new(shape: LimitedString)

    AggregationSortConfiguration.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    AggregationSortConfiguration.add_member(:sort_direction, Shapes::ShapeRef.new(shape: SortDirection, required: true, location_name: "SortDirection"))
    AggregationSortConfiguration.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: AggregationFunction, location_name: "AggregationFunction"))
    AggregationSortConfiguration.struct_class = Types::AggregationSortConfiguration

    AggregationSortConfigurationList.member = Shapes::ShapeRef.new(shape: AggregationSortConfiguration)

    AmazonElasticsearchParameters.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "Domain"))
    AmazonElasticsearchParameters.struct_class = Types::AmazonElasticsearchParameters

    AmazonOpenSearchParameters.add_member(:domain, Shapes::ShapeRef.new(shape: Domain, required: true, location_name: "Domain"))
    AmazonOpenSearchParameters.struct_class = Types::AmazonOpenSearchParameters

    Analysis.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
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

    AnalysisDefaults.add_member(:default_new_sheet_configuration, Shapes::ShapeRef.new(shape: DefaultNewSheetConfiguration, required: true, location_name: "DefaultNewSheetConfiguration"))
    AnalysisDefaults.struct_class = Types::AnalysisDefaults

    AnalysisDefinition.add_member(:data_set_identifier_declarations, Shapes::ShapeRef.new(shape: DataSetIdentifierDeclarationList, required: true, location_name: "DataSetIdentifierDeclarations"))
    AnalysisDefinition.add_member(:sheets, Shapes::ShapeRef.new(shape: SheetDefinitionList, location_name: "Sheets"))
    AnalysisDefinition.add_member(:calculated_fields, Shapes::ShapeRef.new(shape: CalculatedFields, location_name: "CalculatedFields"))
    AnalysisDefinition.add_member(:parameter_declarations, Shapes::ShapeRef.new(shape: ParameterDeclarationList, location_name: "ParameterDeclarations"))
    AnalysisDefinition.add_member(:filter_groups, Shapes::ShapeRef.new(shape: FilterGroupList, location_name: "FilterGroups"))
    AnalysisDefinition.add_member(:column_configurations, Shapes::ShapeRef.new(shape: ColumnConfigurationList, location_name: "ColumnConfigurations"))
    AnalysisDefinition.add_member(:analysis_defaults, Shapes::ShapeRef.new(shape: AnalysisDefaults, location_name: "AnalysisDefaults"))
    AnalysisDefinition.struct_class = Types::AnalysisDefinition

    AnalysisError.add_member(:type, Shapes::ShapeRef.new(shape: AnalysisErrorType, location_name: "Type"))
    AnalysisError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AnalysisError.add_member(:violated_entities, Shapes::ShapeRef.new(shape: EntityList, location_name: "ViolatedEntities"))
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
    AnalysisSummary.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    AnalysisSummary.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, location_name: "Name"))
    AnalysisSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    AnalysisSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AnalysisSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    AnalysisSummary.struct_class = Types::AnalysisSummary

    AnalysisSummaryList.member = Shapes::ShapeRef.new(shape: AnalysisSummary)

    AnchorDateConfiguration.add_member(:anchor_option, Shapes::ShapeRef.new(shape: AnchorOption, location_name: "AnchorOption"))
    AnchorDateConfiguration.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    AnchorDateConfiguration.struct_class = Types::AnchorDateConfiguration

    AnonymousUserDashboardEmbeddingConfiguration.add_member(:initial_dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "InitialDashboardId"))
    AnonymousUserDashboardEmbeddingConfiguration.struct_class = Types::AnonymousUserDashboardEmbeddingConfiguration

    AnonymousUserDashboardVisualEmbeddingConfiguration.add_member(:initial_dashboard_visual_id, Shapes::ShapeRef.new(shape: DashboardVisualId, required: true, location_name: "InitialDashboardVisualId"))
    AnonymousUserDashboardVisualEmbeddingConfiguration.struct_class = Types::AnonymousUserDashboardVisualEmbeddingConfiguration

    AnonymousUserEmbeddingExperienceConfiguration.add_member(:dashboard, Shapes::ShapeRef.new(shape: AnonymousUserDashboardEmbeddingConfiguration, location_name: "Dashboard"))
    AnonymousUserEmbeddingExperienceConfiguration.add_member(:dashboard_visual, Shapes::ShapeRef.new(shape: AnonymousUserDashboardVisualEmbeddingConfiguration, location_name: "DashboardVisual"))
    AnonymousUserEmbeddingExperienceConfiguration.add_member(:q_search_bar, Shapes::ShapeRef.new(shape: AnonymousUserQSearchBarEmbeddingConfiguration, location_name: "QSearchBar"))
    AnonymousUserEmbeddingExperienceConfiguration.struct_class = Types::AnonymousUserEmbeddingExperienceConfiguration

    AnonymousUserQSearchBarEmbeddingConfiguration.add_member(:initial_topic_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location_name: "InitialTopicId"))
    AnonymousUserQSearchBarEmbeddingConfiguration.struct_class = Types::AnonymousUserQSearchBarEmbeddingConfiguration

    ArcAxisConfiguration.add_member(:range, Shapes::ShapeRef.new(shape: ArcAxisDisplayRange, location_name: "Range"))
    ArcAxisConfiguration.add_member(:reserve_range, Shapes::ShapeRef.new(shape: Integer, location_name: "ReserveRange"))
    ArcAxisConfiguration.struct_class = Types::ArcAxisConfiguration

    ArcAxisDisplayRange.add_member(:min, Shapes::ShapeRef.new(shape: Double, location_name: "Min", metadata: {"box"=>true}))
    ArcAxisDisplayRange.add_member(:max, Shapes::ShapeRef.new(shape: Double, location_name: "Max", metadata: {"box"=>true}))
    ArcAxisDisplayRange.struct_class = Types::ArcAxisDisplayRange

    ArcConfiguration.add_member(:arc_angle, Shapes::ShapeRef.new(shape: Double, location_name: "ArcAngle", metadata: {"box"=>true}))
    ArcConfiguration.add_member(:arc_thickness, Shapes::ShapeRef.new(shape: ArcThicknessOptions, location_name: "ArcThickness"))
    ArcConfiguration.struct_class = Types::ArcConfiguration

    ArcOptions.add_member(:arc_thickness, Shapes::ShapeRef.new(shape: ArcThickness, location_name: "ArcThickness"))
    ArcOptions.struct_class = Types::ArcOptions

    ArnList.member = Shapes::ShapeRef.new(shape: Arn)

    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:resource_id_override_configuration, Shapes::ShapeRef.new(shape: AssetBundleExportJobResourceIdOverrideConfiguration, location_name: "ResourceIdOverrideConfiguration"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:vpc_connections, Shapes::ShapeRef.new(shape: AssetBundleExportJobVPCConnectionOverridePropertiesList, location_name: "VPCConnections"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:refresh_schedules, Shapes::ShapeRef.new(shape: AssetBundleExportJobRefreshScheduleOverridePropertiesList, location_name: "RefreshSchedules"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:data_sources, Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSourceOverridePropertiesList, location_name: "DataSources"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:data_sets, Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSetOverridePropertiesList, location_name: "DataSets"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:themes, Shapes::ShapeRef.new(shape: AssetBundleExportJobThemeOverridePropertiesList, location_name: "Themes"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:analyses, Shapes::ShapeRef.new(shape: AssetBundleExportJobAnalysisOverridePropertiesList, location_name: "Analyses"))
    AssetBundleCloudFormationOverridePropertyConfiguration.add_member(:dashboards, Shapes::ShapeRef.new(shape: AssetBundleExportJobDashboardOverridePropertiesList, location_name: "Dashboards"))
    AssetBundleCloudFormationOverridePropertyConfiguration.struct_class = Types::AssetBundleCloudFormationOverridePropertyConfiguration

    AssetBundleExportJobAnalysisOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobAnalysisOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobAnalysisPropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobAnalysisOverrideProperties.struct_class = Types::AssetBundleExportJobAnalysisOverrideProperties

    AssetBundleExportJobAnalysisOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobAnalysisOverrideProperties)

    AssetBundleExportJobAnalysisPropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobAnalysisPropertyToOverride)

    AssetBundleExportJobDashboardOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobDashboardOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobDashboardPropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobDashboardOverrideProperties.struct_class = Types::AssetBundleExportJobDashboardOverrideProperties

    AssetBundleExportJobDashboardOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobDashboardOverrideProperties)

    AssetBundleExportJobDashboardPropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobDashboardPropertyToOverride)

    AssetBundleExportJobDataSetOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobDataSetOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSetPropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobDataSetOverrideProperties.struct_class = Types::AssetBundleExportJobDataSetOverrideProperties

    AssetBundleExportJobDataSetOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSetOverrideProperties)

    AssetBundleExportJobDataSetPropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSetPropertyToOverride)

    AssetBundleExportJobDataSourceOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobDataSourceOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSourcePropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobDataSourceOverrideProperties.struct_class = Types::AssetBundleExportJobDataSourceOverrideProperties

    AssetBundleExportJobDataSourceOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSourceOverrideProperties)

    AssetBundleExportJobDataSourcePropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobDataSourcePropertyToOverride)

    AssetBundleExportJobError.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobError.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AssetBundleExportJobError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AssetBundleExportJobError.struct_class = Types::AssetBundleExportJobError

    AssetBundleExportJobErrorList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobError)

    AssetBundleExportJobRefreshScheduleOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobRefreshScheduleOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobRefreshSchedulePropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobRefreshScheduleOverrideProperties.struct_class = Types::AssetBundleExportJobRefreshScheduleOverrideProperties

    AssetBundleExportJobRefreshScheduleOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobRefreshScheduleOverrideProperties)

    AssetBundleExportJobRefreshSchedulePropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobRefreshSchedulePropertyToOverride)

    AssetBundleExportJobResourceIdOverrideConfiguration.add_member(:prefix_for_all_resources, Shapes::ShapeRef.new(shape: Boolean, location_name: "PrefixForAllResources"))
    AssetBundleExportJobResourceIdOverrideConfiguration.struct_class = Types::AssetBundleExportJobResourceIdOverrideConfiguration

    AssetBundleExportJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: AssetBundleExportJobStatus, location_name: "JobStatus"))
    AssetBundleExportJobSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AssetBundleExportJobSummary.add_member(:asset_bundle_export_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AssetBundleExportJobId"))
    AssetBundleExportJobSummary.add_member(:include_all_dependencies, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeAllDependencies"))
    AssetBundleExportJobSummary.add_member(:export_format, Shapes::ShapeRef.new(shape: AssetBundleExportFormat, location_name: "ExportFormat"))
    AssetBundleExportJobSummary.struct_class = Types::AssetBundleExportJobSummary

    AssetBundleExportJobSummaryList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobSummary)

    AssetBundleExportJobThemeOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobThemeOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobThemePropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobThemeOverrideProperties.struct_class = Types::AssetBundleExportJobThemeOverrideProperties

    AssetBundleExportJobThemeOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobThemeOverrideProperties)

    AssetBundleExportJobThemePropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobThemePropertyToOverride)

    AssetBundleExportJobVPCConnectionOverrideProperties.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleExportJobVPCConnectionOverrideProperties.add_member(:properties, Shapes::ShapeRef.new(shape: AssetBundleExportJobVPCConnectionPropertyToOverrideList, required: true, location_name: "Properties"))
    AssetBundleExportJobVPCConnectionOverrideProperties.struct_class = Types::AssetBundleExportJobVPCConnectionOverrideProperties

    AssetBundleExportJobVPCConnectionOverridePropertiesList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobVPCConnectionOverrideProperties)

    AssetBundleExportJobVPCConnectionPropertyToOverrideList.member = Shapes::ShapeRef.new(shape: AssetBundleExportJobVPCConnectionPropertyToOverride)

    AssetBundleImportJobAnalysisOverrideParameters.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "AnalysisId"))
    AssetBundleImportJobAnalysisOverrideParameters.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AssetBundleImportJobAnalysisOverrideParameters.struct_class = Types::AssetBundleImportJobAnalysisOverrideParameters

    AssetBundleImportJobAnalysisOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobAnalysisOverrideParameters)

    AssetBundleImportJobDashboardOverrideParameters.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DashboardId"))
    AssetBundleImportJobDashboardOverrideParameters.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AssetBundleImportJobDashboardOverrideParameters.struct_class = Types::AssetBundleImportJobDashboardOverrideParameters

    AssetBundleImportJobDashboardOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobDashboardOverrideParameters)

    AssetBundleImportJobDataSetOverrideParameters.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DataSetId"))
    AssetBundleImportJobDataSetOverrideParameters.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AssetBundleImportJobDataSetOverrideParameters.struct_class = Types::AssetBundleImportJobDataSetOverrideParameters

    AssetBundleImportJobDataSetOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobDataSetOverrideParameters)

    AssetBundleImportJobDataSourceCredentialPair.add_member(:username, Shapes::ShapeRef.new(shape: DbUsername, required: true, location_name: "Username"))
    AssetBundleImportJobDataSourceCredentialPair.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    AssetBundleImportJobDataSourceCredentialPair.struct_class = Types::AssetBundleImportJobDataSourceCredentialPair

    AssetBundleImportJobDataSourceCredentials.add_member(:credential_pair, Shapes::ShapeRef.new(shape: AssetBundleImportJobDataSourceCredentialPair, location_name: "CredentialPair"))
    AssetBundleImportJobDataSourceCredentials.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    AssetBundleImportJobDataSourceCredentials.struct_class = Types::AssetBundleImportJobDataSourceCredentials

    AssetBundleImportJobDataSourceOverrideParameters.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DataSourceId"))
    AssetBundleImportJobDataSourceOverrideParameters.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AssetBundleImportJobDataSourceOverrideParameters.add_member(:data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParameters, location_name: "DataSourceParameters"))
    AssetBundleImportJobDataSourceOverrideParameters.add_member(:vpc_connection_properties, Shapes::ShapeRef.new(shape: VpcConnectionProperties, location_name: "VpcConnectionProperties"))
    AssetBundleImportJobDataSourceOverrideParameters.add_member(:ssl_properties, Shapes::ShapeRef.new(shape: SslProperties, location_name: "SslProperties"))
    AssetBundleImportJobDataSourceOverrideParameters.add_member(:credentials, Shapes::ShapeRef.new(shape: AssetBundleImportJobDataSourceCredentials, location_name: "Credentials"))
    AssetBundleImportJobDataSourceOverrideParameters.struct_class = Types::AssetBundleImportJobDataSourceOverrideParameters

    AssetBundleImportJobDataSourceOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobDataSourceOverrideParameters)

    AssetBundleImportJobError.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleImportJobError.add_member(:type, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Type"))
    AssetBundleImportJobError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    AssetBundleImportJobError.struct_class = Types::AssetBundleImportJobError

    AssetBundleImportJobErrorList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobError)

    AssetBundleImportJobOverrideParameters.add_member(:resource_id_override_configuration, Shapes::ShapeRef.new(shape: AssetBundleImportJobResourceIdOverrideConfiguration, location_name: "ResourceIdOverrideConfiguration"))
    AssetBundleImportJobOverrideParameters.add_member(:vpc_connections, Shapes::ShapeRef.new(shape: AssetBundleImportJobVPCConnectionOverrideParametersList, location_name: "VPCConnections"))
    AssetBundleImportJobOverrideParameters.add_member(:refresh_schedules, Shapes::ShapeRef.new(shape: AssetBundleImportJobRefreshScheduleOverrideParametersList, location_name: "RefreshSchedules"))
    AssetBundleImportJobOverrideParameters.add_member(:data_sources, Shapes::ShapeRef.new(shape: AssetBundleImportJobDataSourceOverrideParametersList, location_name: "DataSources"))
    AssetBundleImportJobOverrideParameters.add_member(:data_sets, Shapes::ShapeRef.new(shape: AssetBundleImportJobDataSetOverrideParametersList, location_name: "DataSets"))
    AssetBundleImportJobOverrideParameters.add_member(:themes, Shapes::ShapeRef.new(shape: AssetBundleImportJobThemeOverrideParametersList, location_name: "Themes"))
    AssetBundleImportJobOverrideParameters.add_member(:analyses, Shapes::ShapeRef.new(shape: AssetBundleImportJobAnalysisOverrideParametersList, location_name: "Analyses"))
    AssetBundleImportJobOverrideParameters.add_member(:dashboards, Shapes::ShapeRef.new(shape: AssetBundleImportJobDashboardOverrideParametersList, location_name: "Dashboards"))
    AssetBundleImportJobOverrideParameters.struct_class = Types::AssetBundleImportJobOverrideParameters

    AssetBundleImportJobRefreshScheduleOverrideParameters.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "DataSetId"))
    AssetBundleImportJobRefreshScheduleOverrideParameters.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleId"))
    AssetBundleImportJobRefreshScheduleOverrideParameters.add_member(:start_after_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartAfterDateTime"))
    AssetBundleImportJobRefreshScheduleOverrideParameters.struct_class = Types::AssetBundleImportJobRefreshScheduleOverrideParameters

    AssetBundleImportJobRefreshScheduleOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobRefreshScheduleOverrideParameters)

    AssetBundleImportJobResourceIdOverrideConfiguration.add_member(:prefix_for_all_resources, Shapes::ShapeRef.new(shape: String, location_name: "PrefixForAllResources"))
    AssetBundleImportJobResourceIdOverrideConfiguration.struct_class = Types::AssetBundleImportJobResourceIdOverrideConfiguration

    AssetBundleImportJobSummary.add_member(:job_status, Shapes::ShapeRef.new(shape: AssetBundleImportJobStatus, location_name: "JobStatus"))
    AssetBundleImportJobSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    AssetBundleImportJobSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    AssetBundleImportJobSummary.add_member(:asset_bundle_import_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AssetBundleImportJobId"))
    AssetBundleImportJobSummary.add_member(:failure_action, Shapes::ShapeRef.new(shape: AssetBundleImportFailureAction, location_name: "FailureAction"))
    AssetBundleImportJobSummary.struct_class = Types::AssetBundleImportJobSummary

    AssetBundleImportJobSummaryList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobSummary)

    AssetBundleImportJobThemeOverrideParameters.add_member(:theme_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location_name: "ThemeId"))
    AssetBundleImportJobThemeOverrideParameters.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AssetBundleImportJobThemeOverrideParameters.struct_class = Types::AssetBundleImportJobThemeOverrideParameters

    AssetBundleImportJobThemeOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobThemeOverrideParameters)

    AssetBundleImportJobVPCConnectionOverrideParameters.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, required: true, location_name: "VPCConnectionId"))
    AssetBundleImportJobVPCConnectionOverrideParameters.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    AssetBundleImportJobVPCConnectionOverrideParameters.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, location_name: "SubnetIds"))
    AssetBundleImportJobVPCConnectionOverrideParameters.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIds"))
    AssetBundleImportJobVPCConnectionOverrideParameters.add_member(:dns_resolvers, Shapes::ShapeRef.new(shape: DnsResolverList, location_name: "DnsResolvers"))
    AssetBundleImportJobVPCConnectionOverrideParameters.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    AssetBundleImportJobVPCConnectionOverrideParameters.struct_class = Types::AssetBundleImportJobVPCConnectionOverrideParameters

    AssetBundleImportJobVPCConnectionOverrideParametersList.member = Shapes::ShapeRef.new(shape: AssetBundleImportJobVPCConnectionOverrideParameters)

    AssetBundleImportSource.add_member(:body, Shapes::ShapeRef.new(shape: AssetBundleImportBodyBlob, location_name: "Body"))
    AssetBundleImportSource.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    AssetBundleImportSource.struct_class = Types::AssetBundleImportSource

    AssetBundleImportSourceDescription.add_member(:body, Shapes::ShapeRef.new(shape: String, location_name: "Body"))
    AssetBundleImportSourceDescription.add_member(:s3_uri, Shapes::ShapeRef.new(shape: S3Uri, location_name: "S3Uri"))
    AssetBundleImportSourceDescription.struct_class = Types::AssetBundleImportSourceDescription

    AssetBundleResourceArns.member = Shapes::ShapeRef.new(shape: Arn)

    AthenaParameters.add_member(:work_group, Shapes::ShapeRef.new(shape: WorkGroup, location_name: "WorkGroup"))
    AthenaParameters.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    AthenaParameters.struct_class = Types::AthenaParameters

    AuroraParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    AuroraParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    AuroraParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    AuroraParameters.struct_class = Types::AuroraParameters

    AuroraPostgreSqlParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    AuroraPostgreSqlParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    AuroraPostgreSqlParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    AuroraPostgreSqlParameters.struct_class = Types::AuroraPostgreSqlParameters

    AuthorSpecifiedAggregations.member = Shapes::ShapeRef.new(shape: AuthorSpecifiedAggregation)

    AwsIotAnalyticsParameters.add_member(:data_set_name, Shapes::ShapeRef.new(shape: DataSetName, required: true, location_name: "DataSetName"))
    AwsIotAnalyticsParameters.struct_class = Types::AwsIotAnalyticsParameters

    AxisDataOptions.add_member(:numeric_axis_options, Shapes::ShapeRef.new(shape: NumericAxisOptions, location_name: "NumericAxisOptions"))
    AxisDataOptions.add_member(:date_axis_options, Shapes::ShapeRef.new(shape: DateAxisOptions, location_name: "DateAxisOptions"))
    AxisDataOptions.struct_class = Types::AxisDataOptions

    AxisDisplayDataDrivenRange.struct_class = Types::AxisDisplayDataDrivenRange

    AxisDisplayMinMaxRange.add_member(:minimum, Shapes::ShapeRef.new(shape: Double, location_name: "Minimum", metadata: {"box"=>true}))
    AxisDisplayMinMaxRange.add_member(:maximum, Shapes::ShapeRef.new(shape: Double, location_name: "Maximum", metadata: {"box"=>true}))
    AxisDisplayMinMaxRange.struct_class = Types::AxisDisplayMinMaxRange

    AxisDisplayOptions.add_member(:tick_label_options, Shapes::ShapeRef.new(shape: AxisTickLabelOptions, location_name: "TickLabelOptions"))
    AxisDisplayOptions.add_member(:axis_line_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "AxisLineVisibility"))
    AxisDisplayOptions.add_member(:grid_line_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "GridLineVisibility"))
    AxisDisplayOptions.add_member(:data_options, Shapes::ShapeRef.new(shape: AxisDataOptions, location_name: "DataOptions"))
    AxisDisplayOptions.add_member(:scrollbar_options, Shapes::ShapeRef.new(shape: ScrollBarOptions, location_name: "ScrollbarOptions"))
    AxisDisplayOptions.add_member(:axis_offset, Shapes::ShapeRef.new(shape: PixelLength, location_name: "AxisOffset"))
    AxisDisplayOptions.struct_class = Types::AxisDisplayOptions

    AxisDisplayRange.add_member(:min_max, Shapes::ShapeRef.new(shape: AxisDisplayMinMaxRange, location_name: "MinMax"))
    AxisDisplayRange.add_member(:data_driven, Shapes::ShapeRef.new(shape: AxisDisplayDataDrivenRange, location_name: "DataDriven"))
    AxisDisplayRange.struct_class = Types::AxisDisplayRange

    AxisLabelOptions.add_member(:font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "FontConfiguration"))
    AxisLabelOptions.add_member(:custom_label, Shapes::ShapeRef.new(shape: String, location_name: "CustomLabel"))
    AxisLabelOptions.add_member(:apply_to, Shapes::ShapeRef.new(shape: AxisLabelReferenceOptions, location_name: "ApplyTo"))
    AxisLabelOptions.struct_class = Types::AxisLabelOptions

    AxisLabelOptionsList.member = Shapes::ShapeRef.new(shape: AxisLabelOptions)

    AxisLabelReferenceOptions.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    AxisLabelReferenceOptions.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    AxisLabelReferenceOptions.struct_class = Types::AxisLabelReferenceOptions

    AxisLinearScale.add_member(:step_count, Shapes::ShapeRef.new(shape: Integer, location_name: "StepCount", metadata: {"box"=>true}))
    AxisLinearScale.add_member(:step_size, Shapes::ShapeRef.new(shape: Double, location_name: "StepSize", metadata: {"box"=>true}))
    AxisLinearScale.struct_class = Types::AxisLinearScale

    AxisLogarithmicScale.add_member(:base, Shapes::ShapeRef.new(shape: Double, location_name: "Base", metadata: {"box"=>true}))
    AxisLogarithmicScale.struct_class = Types::AxisLogarithmicScale

    AxisScale.add_member(:linear, Shapes::ShapeRef.new(shape: AxisLinearScale, location_name: "Linear"))
    AxisScale.add_member(:logarithmic, Shapes::ShapeRef.new(shape: AxisLogarithmicScale, location_name: "Logarithmic"))
    AxisScale.struct_class = Types::AxisScale

    AxisTickLabelOptions.add_member(:label_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "LabelOptions"))
    AxisTickLabelOptions.add_member(:rotation_angle, Shapes::ShapeRef.new(shape: Double, location_name: "RotationAngle", metadata: {"box"=>true}))
    AxisTickLabelOptions.struct_class = Types::AxisTickLabelOptions

    BarChartAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Category"))
    BarChartAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    BarChartAggregatedFieldWells.add_member(:colors, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Colors"))
    BarChartAggregatedFieldWells.add_member(:small_multiples, Shapes::ShapeRef.new(shape: SmallMultiplesDimensionFieldList, location_name: "SmallMultiples"))
    BarChartAggregatedFieldWells.struct_class = Types::BarChartAggregatedFieldWells

    BarChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: BarChartFieldWells, location_name: "FieldWells"))
    BarChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: BarChartSortConfiguration, location_name: "SortConfiguration"))
    BarChartConfiguration.add_member(:orientation, Shapes::ShapeRef.new(shape: BarChartOrientation, location_name: "Orientation"))
    BarChartConfiguration.add_member(:bars_arrangement, Shapes::ShapeRef.new(shape: BarsArrangement, location_name: "BarsArrangement"))
    BarChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    BarChartConfiguration.add_member(:small_multiples_options, Shapes::ShapeRef.new(shape: SmallMultiplesOptions, location_name: "SmallMultiplesOptions"))
    BarChartConfiguration.add_member(:category_axis, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "CategoryAxis"))
    BarChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    BarChartConfiguration.add_member(:value_axis, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "ValueAxis"))
    BarChartConfiguration.add_member(:value_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ValueLabelOptions"))
    BarChartConfiguration.add_member(:color_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ColorLabelOptions"))
    BarChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    BarChartConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    BarChartConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    BarChartConfiguration.add_member(:reference_lines, Shapes::ShapeRef.new(shape: ReferenceLineList, location_name: "ReferenceLines"))
    BarChartConfiguration.add_member(:contribution_analysis_defaults, Shapes::ShapeRef.new(shape: ContributionAnalysisDefaultList, location_name: "ContributionAnalysisDefaults"))
    BarChartConfiguration.struct_class = Types::BarChartConfiguration

    BarChartFieldWells.add_member(:bar_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: BarChartAggregatedFieldWells, location_name: "BarChartAggregatedFieldWells"))
    BarChartFieldWells.struct_class = Types::BarChartFieldWells

    BarChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    BarChartSortConfiguration.add_member(:category_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimit"))
    BarChartSortConfiguration.add_member(:color_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "ColorSort"))
    BarChartSortConfiguration.add_member(:color_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "ColorItemsLimit"))
    BarChartSortConfiguration.add_member(:small_multiples_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "SmallMultiplesSort"))
    BarChartSortConfiguration.add_member(:small_multiples_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "SmallMultiplesLimitConfiguration"))
    BarChartSortConfiguration.struct_class = Types::BarChartSortConfiguration

    BarChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    BarChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    BarChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    BarChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: BarChartConfiguration, location_name: "ChartConfiguration"))
    BarChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    BarChartVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    BarChartVisual.struct_class = Types::BarChartVisual

    BinCountOptions.add_member(:value, Shapes::ShapeRef.new(shape: BinCountValue, location_name: "Value"))
    BinCountOptions.struct_class = Types::BinCountOptions

    BinWidthOptions.add_member(:value, Shapes::ShapeRef.new(shape: BinWidthValue, location_name: "Value"))
    BinWidthOptions.add_member(:bin_count_limit, Shapes::ShapeRef.new(shape: BinCountLimit, location_name: "BinCountLimit"))
    BinWidthOptions.struct_class = Types::BinWidthOptions

    BodySectionConfiguration.add_member(:section_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SectionId"))
    BodySectionConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: BodySectionContent, required: true, location_name: "Content"))
    BodySectionConfiguration.add_member(:style, Shapes::ShapeRef.new(shape: SectionStyle, location_name: "Style"))
    BodySectionConfiguration.add_member(:page_break_configuration, Shapes::ShapeRef.new(shape: SectionPageBreakConfiguration, location_name: "PageBreakConfiguration"))
    BodySectionConfiguration.struct_class = Types::BodySectionConfiguration

    BodySectionConfigurationList.member = Shapes::ShapeRef.new(shape: BodySectionConfiguration)

    BodySectionContent.add_member(:layout, Shapes::ShapeRef.new(shape: SectionLayoutConfiguration, location_name: "Layout"))
    BodySectionContent.struct_class = Types::BodySectionContent

    BookmarksConfigurations.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    BookmarksConfigurations.struct_class = Types::BookmarksConfigurations

    BorderStyle.add_member(:show, Shapes::ShapeRef.new(shape: Boolean, location_name: "Show", metadata: {"box"=>true}))
    BorderStyle.struct_class = Types::BorderStyle

    BoxPlotAggregatedFieldWells.add_member(:group_by, Shapes::ShapeRef.new(shape: BoxPlotDimensionFieldList, location_name: "GroupBy"))
    BoxPlotAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: BoxPlotMeasureFieldList, location_name: "Values"))
    BoxPlotAggregatedFieldWells.struct_class = Types::BoxPlotAggregatedFieldWells

    BoxPlotChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: BoxPlotFieldWells, location_name: "FieldWells"))
    BoxPlotChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: BoxPlotSortConfiguration, location_name: "SortConfiguration"))
    BoxPlotChartConfiguration.add_member(:box_plot_options, Shapes::ShapeRef.new(shape: BoxPlotOptions, location_name: "BoxPlotOptions"))
    BoxPlotChartConfiguration.add_member(:category_axis, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "CategoryAxis"))
    BoxPlotChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    BoxPlotChartConfiguration.add_member(:primary_y_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "PrimaryYAxisDisplayOptions"))
    BoxPlotChartConfiguration.add_member(:primary_y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "PrimaryYAxisLabelOptions"))
    BoxPlotChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    BoxPlotChartConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    BoxPlotChartConfiguration.add_member(:reference_lines, Shapes::ShapeRef.new(shape: ReferenceLineList, location_name: "ReferenceLines"))
    BoxPlotChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    BoxPlotChartConfiguration.struct_class = Types::BoxPlotChartConfiguration

    BoxPlotDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    BoxPlotFieldWells.add_member(:box_plot_aggregated_field_wells, Shapes::ShapeRef.new(shape: BoxPlotAggregatedFieldWells, location_name: "BoxPlotAggregatedFieldWells"))
    BoxPlotFieldWells.struct_class = Types::BoxPlotFieldWells

    BoxPlotMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    BoxPlotOptions.add_member(:style_options, Shapes::ShapeRef.new(shape: BoxPlotStyleOptions, location_name: "StyleOptions"))
    BoxPlotOptions.add_member(:outlier_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "OutlierVisibility"))
    BoxPlotOptions.add_member(:all_data_points_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "AllDataPointsVisibility"))
    BoxPlotOptions.struct_class = Types::BoxPlotOptions

    BoxPlotSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    BoxPlotSortConfiguration.add_member(:pagination_configuration, Shapes::ShapeRef.new(shape: PaginationConfiguration, location_name: "PaginationConfiguration"))
    BoxPlotSortConfiguration.struct_class = Types::BoxPlotSortConfiguration

    BoxPlotStyleOptions.add_member(:fill_style, Shapes::ShapeRef.new(shape: BoxPlotFillStyle, location_name: "FillStyle"))
    BoxPlotStyleOptions.struct_class = Types::BoxPlotStyleOptions

    BoxPlotVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    BoxPlotVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    BoxPlotVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    BoxPlotVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: BoxPlotChartConfiguration, location_name: "ChartConfiguration"))
    BoxPlotVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    BoxPlotVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    BoxPlotVisual.struct_class = Types::BoxPlotVisual

    CalculatedColumn.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    CalculatedColumn.add_member(:column_id, Shapes::ShapeRef.new(shape: ColumnId, required: true, location_name: "ColumnId"))
    CalculatedColumn.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    CalculatedColumn.struct_class = Types::CalculatedColumn

    CalculatedColumnList.member = Shapes::ShapeRef.new(shape: CalculatedColumn)

    CalculatedField.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "DataSetIdentifier"))
    CalculatedField.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "Name"))
    CalculatedField.add_member(:expression, Shapes::ShapeRef.new(shape: CalculatedFieldExpression, required: true, location_name: "Expression"))
    CalculatedField.struct_class = Types::CalculatedField

    CalculatedFields.member = Shapes::ShapeRef.new(shape: CalculatedField)

    CalculatedMeasureField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    CalculatedMeasureField.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    CalculatedMeasureField.struct_class = Types::CalculatedMeasureField

    CancelIngestionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CancelIngestionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DataSetId"))
    CancelIngestionRequest.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, required: true, location: "uri", location_name: "IngestionId"))
    CancelIngestionRequest.struct_class = Types::CancelIngestionRequest

    CancelIngestionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CancelIngestionResponse.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, location_name: "IngestionId"))
    CancelIngestionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CancelIngestionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CancelIngestionResponse.struct_class = Types::CancelIngestionResponse

    CascadingControlConfiguration.add_member(:source_controls, Shapes::ShapeRef.new(shape: CascadingControlSourceList, location_name: "SourceControls"))
    CascadingControlConfiguration.struct_class = Types::CascadingControlConfiguration

    CascadingControlSource.add_member(:source_sheet_control_id, Shapes::ShapeRef.new(shape: String, location_name: "SourceSheetControlId"))
    CascadingControlSource.add_member(:column_to_match, Shapes::ShapeRef.new(shape: ColumnIdentifier, location_name: "ColumnToMatch"))
    CascadingControlSource.struct_class = Types::CascadingControlSource

    CascadingControlSourceList.member = Shapes::ShapeRef.new(shape: CascadingControlSource)

    CastColumnTypeOperation.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    CastColumnTypeOperation.add_member(:new_column_type, Shapes::ShapeRef.new(shape: ColumnDataType, required: true, location_name: "NewColumnType"))
    CastColumnTypeOperation.add_member(:format, Shapes::ShapeRef.new(shape: TypeCastFormat, location_name: "Format"))
    CastColumnTypeOperation.struct_class = Types::CastColumnTypeOperation

    CategoricalDimensionField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    CategoricalDimensionField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    CategoricalDimensionField.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: HierarchyId, location_name: "HierarchyId"))
    CategoricalDimensionField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: StringFormatConfiguration, location_name: "FormatConfiguration"))
    CategoricalDimensionField.struct_class = Types::CategoricalDimensionField

    CategoricalMeasureField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    CategoricalMeasureField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    CategoricalMeasureField.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: CategoricalAggregationFunction, location_name: "AggregationFunction"))
    CategoricalMeasureField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: StringFormatConfiguration, location_name: "FormatConfiguration"))
    CategoricalMeasureField.struct_class = Types::CategoricalMeasureField

    CategoryDrillDownFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    CategoryDrillDownFilter.add_member(:category_values, Shapes::ShapeRef.new(shape: CategoryValueList, required: true, location_name: "CategoryValues"))
    CategoryDrillDownFilter.struct_class = Types::CategoryDrillDownFilter

    CategoryFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    CategoryFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    CategoryFilter.add_member(:configuration, Shapes::ShapeRef.new(shape: CategoryFilterConfiguration, required: true, location_name: "Configuration"))
    CategoryFilter.struct_class = Types::CategoryFilter

    CategoryFilterConfiguration.add_member(:filter_list_configuration, Shapes::ShapeRef.new(shape: FilterListConfiguration, location_name: "FilterListConfiguration"))
    CategoryFilterConfiguration.add_member(:custom_filter_list_configuration, Shapes::ShapeRef.new(shape: CustomFilterListConfiguration, location_name: "CustomFilterListConfiguration"))
    CategoryFilterConfiguration.add_member(:custom_filter_configuration, Shapes::ShapeRef.new(shape: CustomFilterConfiguration, location_name: "CustomFilterConfiguration"))
    CategoryFilterConfiguration.struct_class = Types::CategoryFilterConfiguration

    CategoryValueList.member = Shapes::ShapeRef.new(shape: CategoryValue)

    CellValueSynonym.add_member(:cell_value, Shapes::ShapeRef.new(shape: LimitedString, location_name: "CellValue"))
    CellValueSynonym.add_member(:synonyms, Shapes::ShapeRef.new(shape: StringList, location_name: "Synonyms"))
    CellValueSynonym.struct_class = Types::CellValueSynonym

    CellValueSynonyms.member = Shapes::ShapeRef.new(shape: CellValueSynonym)

    ChartAxisLabelOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ChartAxisLabelOptions.add_member(:sort_icon_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "SortIconVisibility"))
    ChartAxisLabelOptions.add_member(:axis_label_options, Shapes::ShapeRef.new(shape: AxisLabelOptionsList, location_name: "AxisLabelOptions"))
    ChartAxisLabelOptions.struct_class = Types::ChartAxisLabelOptions

    ClusterMarker.add_member(:simple_cluster_marker, Shapes::ShapeRef.new(shape: SimpleClusterMarker, location_name: "SimpleClusterMarker"))
    ClusterMarker.struct_class = Types::ClusterMarker

    ClusterMarkerConfiguration.add_member(:cluster_marker, Shapes::ShapeRef.new(shape: ClusterMarker, location_name: "ClusterMarker"))
    ClusterMarkerConfiguration.struct_class = Types::ClusterMarkerConfiguration

    CollectiveConstant.add_member(:value_list, Shapes::ShapeRef.new(shape: StringList, location_name: "ValueList"))
    CollectiveConstant.struct_class = Types::CollectiveConstant

    ColorList.member = Shapes::ShapeRef.new(shape: HexColor)

    ColorScale.add_member(:colors, Shapes::ShapeRef.new(shape: ColorScaleColorList, required: true, location_name: "Colors"))
    ColorScale.add_member(:color_fill_type, Shapes::ShapeRef.new(shape: ColorFillType, required: true, location_name: "ColorFillType"))
    ColorScale.add_member(:null_value_color, Shapes::ShapeRef.new(shape: DataColor, location_name: "NullValueColor"))
    ColorScale.struct_class = Types::ColorScale

    ColorScaleColorList.member = Shapes::ShapeRef.new(shape: DataColor)

    ColorsConfiguration.add_member(:custom_colors, Shapes::ShapeRef.new(shape: CustomColorsList, location_name: "CustomColors"))
    ColorsConfiguration.struct_class = Types::ColorsConfiguration

    ColumnConfiguration.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    ColumnConfiguration.add_member(:format_configuration, Shapes::ShapeRef.new(shape: FormatConfiguration, location_name: "FormatConfiguration"))
    ColumnConfiguration.add_member(:role, Shapes::ShapeRef.new(shape: ColumnRole, location_name: "Role"))
    ColumnConfiguration.add_member(:colors_configuration, Shapes::ShapeRef.new(shape: ColorsConfiguration, location_name: "ColorsConfiguration"))
    ColumnConfiguration.struct_class = Types::ColumnConfiguration

    ColumnConfigurationList.member = Shapes::ShapeRef.new(shape: ColumnConfiguration)

    ColumnDescription.add_member(:text, Shapes::ShapeRef.new(shape: ColumnDescriptiveText, location_name: "Text"))
    ColumnDescription.struct_class = Types::ColumnDescription

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

    ColumnHierarchy.add_member(:explicit_hierarchy, Shapes::ShapeRef.new(shape: ExplicitHierarchy, location_name: "ExplicitHierarchy"))
    ColumnHierarchy.add_member(:date_time_hierarchy, Shapes::ShapeRef.new(shape: DateTimeHierarchy, location_name: "DateTimeHierarchy"))
    ColumnHierarchy.add_member(:predefined_hierarchy, Shapes::ShapeRef.new(shape: PredefinedHierarchy, location_name: "PredefinedHierarchy"))
    ColumnHierarchy.struct_class = Types::ColumnHierarchy

    ColumnHierarchyList.member = Shapes::ShapeRef.new(shape: ColumnHierarchy)

    ColumnIdentifier.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "DataSetIdentifier"))
    ColumnIdentifier.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    ColumnIdentifier.struct_class = Types::ColumnIdentifier

    ColumnLevelPermissionRule.add_member(:principals, Shapes::ShapeRef.new(shape: PrincipalList, location_name: "Principals"))
    ColumnLevelPermissionRule.add_member(:column_names, Shapes::ShapeRef.new(shape: ColumnNameList, location_name: "ColumnNames"))
    ColumnLevelPermissionRule.struct_class = Types::ColumnLevelPermissionRule

    ColumnLevelPermissionRuleList.member = Shapes::ShapeRef.new(shape: ColumnLevelPermissionRule)

    ColumnList.member = Shapes::ShapeRef.new(shape: ColumnName)

    ColumnNameList.member = Shapes::ShapeRef.new(shape: String)

    ColumnSchema.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ColumnSchema.add_member(:data_type, Shapes::ShapeRef.new(shape: String, location_name: "DataType"))
    ColumnSchema.add_member(:geographic_role, Shapes::ShapeRef.new(shape: String, location_name: "GeographicRole"))
    ColumnSchema.struct_class = Types::ColumnSchema

    ColumnSchemaList.member = Shapes::ShapeRef.new(shape: ColumnSchema)

    ColumnSort.add_member(:sort_by, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "SortBy"))
    ColumnSort.add_member(:direction, Shapes::ShapeRef.new(shape: SortDirection, required: true, location_name: "Direction"))
    ColumnSort.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: AggregationFunction, location_name: "AggregationFunction"))
    ColumnSort.struct_class = Types::ColumnSort

    ColumnTag.add_member(:column_geographic_role, Shapes::ShapeRef.new(shape: GeoSpatialDataRole, location_name: "ColumnGeographicRole"))
    ColumnTag.add_member(:column_description, Shapes::ShapeRef.new(shape: ColumnDescription, location_name: "ColumnDescription"))
    ColumnTag.struct_class = Types::ColumnTag

    ColumnTagList.member = Shapes::ShapeRef.new(shape: ColumnTag)

    ColumnTagNames.member = Shapes::ShapeRef.new(shape: ColumnTagName)

    ColumnTooltipItem.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    ColumnTooltipItem.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    ColumnTooltipItem.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ColumnTooltipItem.add_member(:aggregation, Shapes::ShapeRef.new(shape: AggregationFunction, location_name: "Aggregation"))
    ColumnTooltipItem.struct_class = Types::ColumnTooltipItem

    ComboChartAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Category"))
    ComboChartAggregatedFieldWells.add_member(:bar_values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "BarValues"))
    ComboChartAggregatedFieldWells.add_member(:colors, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Colors"))
    ComboChartAggregatedFieldWells.add_member(:line_values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "LineValues"))
    ComboChartAggregatedFieldWells.struct_class = Types::ComboChartAggregatedFieldWells

    ComboChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: ComboChartFieldWells, location_name: "FieldWells"))
    ComboChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: ComboChartSortConfiguration, location_name: "SortConfiguration"))
    ComboChartConfiguration.add_member(:bars_arrangement, Shapes::ShapeRef.new(shape: BarsArrangement, location_name: "BarsArrangement"))
    ComboChartConfiguration.add_member(:category_axis, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "CategoryAxis"))
    ComboChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    ComboChartConfiguration.add_member(:primary_y_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "PrimaryYAxisDisplayOptions"))
    ComboChartConfiguration.add_member(:primary_y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "PrimaryYAxisLabelOptions"))
    ComboChartConfiguration.add_member(:secondary_y_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "SecondaryYAxisDisplayOptions"))
    ComboChartConfiguration.add_member(:secondary_y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "SecondaryYAxisLabelOptions"))
    ComboChartConfiguration.add_member(:color_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ColorLabelOptions"))
    ComboChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    ComboChartConfiguration.add_member(:bar_data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "BarDataLabels"))
    ComboChartConfiguration.add_member(:line_data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "LineDataLabels"))
    ComboChartConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    ComboChartConfiguration.add_member(:reference_lines, Shapes::ShapeRef.new(shape: ReferenceLineList, location_name: "ReferenceLines"))
    ComboChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    ComboChartConfiguration.struct_class = Types::ComboChartConfiguration

    ComboChartFieldWells.add_member(:combo_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: ComboChartAggregatedFieldWells, location_name: "ComboChartAggregatedFieldWells"))
    ComboChartFieldWells.struct_class = Types::ComboChartFieldWells

    ComboChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    ComboChartSortConfiguration.add_member(:category_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimit"))
    ComboChartSortConfiguration.add_member(:color_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "ColorSort"))
    ComboChartSortConfiguration.add_member(:color_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "ColorItemsLimit"))
    ComboChartSortConfiguration.struct_class = Types::ComboChartSortConfiguration

    ComboChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    ComboChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    ComboChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    ComboChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: ComboChartConfiguration, location_name: "ChartConfiguration"))
    ComboChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    ComboChartVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    ComboChartVisual.struct_class = Types::ComboChartVisual

    ComparativeOrder.add_member(:use_ordering, Shapes::ShapeRef.new(shape: ColumnOrderingType, location_name: "UseOrdering"))
    ComparativeOrder.add_member(:specifed_order, Shapes::ShapeRef.new(shape: StringList, location_name: "SpecifedOrder"))
    ComparativeOrder.add_member(:treat_undefined_specified_values, Shapes::ShapeRef.new(shape: UndefinedSpecifiedValueType, location_name: "TreatUndefinedSpecifiedValues"))
    ComparativeOrder.struct_class = Types::ComparativeOrder

    ComparisonConfiguration.add_member(:comparison_method, Shapes::ShapeRef.new(shape: ComparisonMethod, location_name: "ComparisonMethod"))
    ComparisonConfiguration.add_member(:comparison_format, Shapes::ShapeRef.new(shape: ComparisonFormatConfiguration, location_name: "ComparisonFormat"))
    ComparisonConfiguration.struct_class = Types::ComparisonConfiguration

    ComparisonFormatConfiguration.add_member(:number_display_format_configuration, Shapes::ShapeRef.new(shape: NumberDisplayFormatConfiguration, location_name: "NumberDisplayFormatConfiguration"))
    ComparisonFormatConfiguration.add_member(:percentage_display_format_configuration, Shapes::ShapeRef.new(shape: PercentageDisplayFormatConfiguration, location_name: "PercentageDisplayFormatConfiguration"))
    ComparisonFormatConfiguration.struct_class = Types::ComparisonFormatConfiguration

    Computation.add_member(:top_bottom_ranked, Shapes::ShapeRef.new(shape: TopBottomRankedComputation, location_name: "TopBottomRanked"))
    Computation.add_member(:top_bottom_movers, Shapes::ShapeRef.new(shape: TopBottomMoversComputation, location_name: "TopBottomMovers"))
    Computation.add_member(:total_aggregation, Shapes::ShapeRef.new(shape: TotalAggregationComputation, location_name: "TotalAggregation"))
    Computation.add_member(:maximum_minimum, Shapes::ShapeRef.new(shape: MaximumMinimumComputation, location_name: "MaximumMinimum"))
    Computation.add_member(:metric_comparison, Shapes::ShapeRef.new(shape: MetricComparisonComputation, location_name: "MetricComparison"))
    Computation.add_member(:period_over_period, Shapes::ShapeRef.new(shape: PeriodOverPeriodComputation, location_name: "PeriodOverPeriod"))
    Computation.add_member(:period_to_date, Shapes::ShapeRef.new(shape: PeriodToDateComputation, location_name: "PeriodToDate"))
    Computation.add_member(:growth_rate, Shapes::ShapeRef.new(shape: GrowthRateComputation, location_name: "GrowthRate"))
    Computation.add_member(:unique_values, Shapes::ShapeRef.new(shape: UniqueValuesComputation, location_name: "UniqueValues"))
    Computation.add_member(:forecast, Shapes::ShapeRef.new(shape: ForecastComputation, location_name: "Forecast"))
    Computation.struct_class = Types::Computation

    ComputationList.member = Shapes::ShapeRef.new(shape: Computation)

    ConcurrentUpdatingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConcurrentUpdatingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ConcurrentUpdatingException.struct_class = Types::ConcurrentUpdatingException

    ConditionalFormattingColor.add_member(:solid, Shapes::ShapeRef.new(shape: ConditionalFormattingSolidColor, location_name: "Solid"))
    ConditionalFormattingColor.add_member(:gradient, Shapes::ShapeRef.new(shape: ConditionalFormattingGradientColor, location_name: "Gradient"))
    ConditionalFormattingColor.struct_class = Types::ConditionalFormattingColor

    ConditionalFormattingCustomIconCondition.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    ConditionalFormattingCustomIconCondition.add_member(:icon_options, Shapes::ShapeRef.new(shape: ConditionalFormattingCustomIconOptions, required: true, location_name: "IconOptions"))
    ConditionalFormattingCustomIconCondition.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    ConditionalFormattingCustomIconCondition.add_member(:display_configuration, Shapes::ShapeRef.new(shape: ConditionalFormattingIconDisplayConfiguration, location_name: "DisplayConfiguration"))
    ConditionalFormattingCustomIconCondition.struct_class = Types::ConditionalFormattingCustomIconCondition

    ConditionalFormattingCustomIconOptions.add_member(:icon, Shapes::ShapeRef.new(shape: Icon, location_name: "Icon"))
    ConditionalFormattingCustomIconOptions.add_member(:unicode_icon, Shapes::ShapeRef.new(shape: UnicodeIcon, location_name: "UnicodeIcon"))
    ConditionalFormattingCustomIconOptions.struct_class = Types::ConditionalFormattingCustomIconOptions

    ConditionalFormattingGradientColor.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    ConditionalFormattingGradientColor.add_member(:color, Shapes::ShapeRef.new(shape: GradientColor, required: true, location_name: "Color"))
    ConditionalFormattingGradientColor.struct_class = Types::ConditionalFormattingGradientColor

    ConditionalFormattingIcon.add_member(:icon_set, Shapes::ShapeRef.new(shape: ConditionalFormattingIconSet, location_name: "IconSet"))
    ConditionalFormattingIcon.add_member(:custom_condition, Shapes::ShapeRef.new(shape: ConditionalFormattingCustomIconCondition, location_name: "CustomCondition"))
    ConditionalFormattingIcon.struct_class = Types::ConditionalFormattingIcon

    ConditionalFormattingIconDisplayConfiguration.add_member(:icon_display_option, Shapes::ShapeRef.new(shape: ConditionalFormattingIconDisplayOption, location_name: "IconDisplayOption"))
    ConditionalFormattingIconDisplayConfiguration.struct_class = Types::ConditionalFormattingIconDisplayConfiguration

    ConditionalFormattingIconSet.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    ConditionalFormattingIconSet.add_member(:icon_set_type, Shapes::ShapeRef.new(shape: ConditionalFormattingIconSetType, location_name: "IconSetType"))
    ConditionalFormattingIconSet.struct_class = Types::ConditionalFormattingIconSet

    ConditionalFormattingSolidColor.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    ConditionalFormattingSolidColor.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    ConditionalFormattingSolidColor.struct_class = Types::ConditionalFormattingSolidColor

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ConflictException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ConflictException.struct_class = Types::ConflictException

    ContributionAnalysisDefault.add_member(:measure_field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "MeasureFieldId"))
    ContributionAnalysisDefault.add_member(:contributor_dimensions, Shapes::ShapeRef.new(shape: ContributorDimensionList, required: true, location_name: "ContributorDimensions"))
    ContributionAnalysisDefault.struct_class = Types::ContributionAnalysisDefault

    ContributionAnalysisDefaultList.member = Shapes::ShapeRef.new(shape: ContributionAnalysisDefault)

    ContributorDimensionList.member = Shapes::ShapeRef.new(shape: ColumnIdentifier)

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

    CreateAccountSubscriptionRequest.add_member(:edition, Shapes::ShapeRef.new(shape: Edition, required: true, location_name: "Edition"))
    CreateAccountSubscriptionRequest.add_member(:authentication_method, Shapes::ShapeRef.new(shape: AuthenticationMethodOption, required: true, location_name: "AuthenticationMethod"))
    CreateAccountSubscriptionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateAccountSubscriptionRequest.add_member(:account_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "AccountName"))
    CreateAccountSubscriptionRequest.add_member(:notification_email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "NotificationEmail"))
    CreateAccountSubscriptionRequest.add_member(:active_directory_name, Shapes::ShapeRef.new(shape: String, location_name: "ActiveDirectoryName"))
    CreateAccountSubscriptionRequest.add_member(:realm, Shapes::ShapeRef.new(shape: String, location_name: "Realm"))
    CreateAccountSubscriptionRequest.add_member(:directory_id, Shapes::ShapeRef.new(shape: String, location_name: "DirectoryId"))
    CreateAccountSubscriptionRequest.add_member(:admin_group, Shapes::ShapeRef.new(shape: GroupsList, location_name: "AdminGroup"))
    CreateAccountSubscriptionRequest.add_member(:author_group, Shapes::ShapeRef.new(shape: GroupsList, location_name: "AuthorGroup"))
    CreateAccountSubscriptionRequest.add_member(:reader_group, Shapes::ShapeRef.new(shape: GroupsList, location_name: "ReaderGroup"))
    CreateAccountSubscriptionRequest.add_member(:first_name, Shapes::ShapeRef.new(shape: String, location_name: "FirstName"))
    CreateAccountSubscriptionRequest.add_member(:last_name, Shapes::ShapeRef.new(shape: String, location_name: "LastName"))
    CreateAccountSubscriptionRequest.add_member(:email_address, Shapes::ShapeRef.new(shape: String, location_name: "EmailAddress"))
    CreateAccountSubscriptionRequest.add_member(:contact_number, Shapes::ShapeRef.new(shape: String, location_name: "ContactNumber"))
    CreateAccountSubscriptionRequest.struct_class = Types::CreateAccountSubscriptionRequest

    CreateAccountSubscriptionResponse.add_member(:signup_response, Shapes::ShapeRef.new(shape: SignupResponse, location_name: "SignupResponse"))
    CreateAccountSubscriptionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateAccountSubscriptionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateAccountSubscriptionResponse.struct_class = Types::CreateAccountSubscriptionResponse

    CreateAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    CreateAnalysisRequest.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, required: true, location_name: "Name"))
    CreateAnalysisRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateAnalysisRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateAnalysisRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: AnalysisSourceEntity, location_name: "SourceEntity"))
    CreateAnalysisRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    CreateAnalysisRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateAnalysisRequest.add_member(:definition, Shapes::ShapeRef.new(shape: AnalysisDefinition, location_name: "Definition"))
    CreateAnalysisRequest.struct_class = Types::CreateAnalysisRequest

    CreateAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    CreateAnalysisResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateAnalysisResponse.struct_class = Types::CreateAnalysisResponse

    CreateColumnsOperation.add_member(:columns, Shapes::ShapeRef.new(shape: CalculatedColumnList, required: true, location_name: "Columns"))
    CreateColumnsOperation.struct_class = Types::CreateColumnsOperation

    CreateDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    CreateDashboardRequest.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "Name"))
    CreateDashboardRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    CreateDashboardRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateDashboardRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: DashboardSourceEntity, location_name: "SourceEntity"))
    CreateDashboardRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDashboardRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateDashboardRequest.add_member(:dashboard_publish_options, Shapes::ShapeRef.new(shape: DashboardPublishOptions, location_name: "DashboardPublishOptions"))
    CreateDashboardRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    CreateDashboardRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DashboardVersionDefinition, location_name: "Definition"))
    CreateDashboardRequest.struct_class = Types::CreateDashboardRequest

    CreateDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateDashboardResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    CreateDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
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
    CreateDataSetRequest.add_member(:field_folders, Shapes::ShapeRef.new(shape: FieldFolderMap, location_name: "FieldFolders"))
    CreateDataSetRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateDataSetRequest.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    CreateDataSetRequest.add_member(:row_level_permission_tag_configuration, Shapes::ShapeRef.new(shape: RowLevelPermissionTagConfiguration, location_name: "RowLevelPermissionTagConfiguration"))
    CreateDataSetRequest.add_member(:column_level_permission_rules, Shapes::ShapeRef.new(shape: ColumnLevelPermissionRuleList, location_name: "ColumnLevelPermissionRules"))
    CreateDataSetRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateDataSetRequest.add_member(:data_set_usage_configuration, Shapes::ShapeRef.new(shape: DataSetUsageConfiguration, location_name: "DataSetUsageConfiguration"))
    CreateDataSetRequest.add_member(:dataset_parameters, Shapes::ShapeRef.new(shape: DatasetParameterList, location_name: "DatasetParameters"))
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

    CreateFolderMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateFolderMembershipRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    CreateFolderMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "MemberId"))
    CreateFolderMembershipRequest.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, required: true, location: "uri", location_name: "MemberType"))
    CreateFolderMembershipRequest.struct_class = Types::CreateFolderMembershipRequest

    CreateFolderMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location_name: "Status"))
    CreateFolderMembershipResponse.add_member(:folder_member, Shapes::ShapeRef.new(shape: FolderMember, location_name: "FolderMember"))
    CreateFolderMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateFolderMembershipResponse.struct_class = Types::CreateFolderMembershipResponse

    CreateFolderRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    CreateFolderRequest.add_member(:name, Shapes::ShapeRef.new(shape: FolderName, location_name: "Name"))
    CreateFolderRequest.add_member(:folder_type, Shapes::ShapeRef.new(shape: FolderType, location_name: "FolderType"))
    CreateFolderRequest.add_member(:parent_folder_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ParentFolderArn"))
    CreateFolderRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateFolderRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateFolderRequest.struct_class = Types::CreateFolderRequest

    CreateFolderResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateFolderResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateFolderResponse.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    CreateFolderResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateFolderResponse.struct_class = Types::CreateFolderResponse

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

    CreateIngestionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DataSetId"))
    CreateIngestionRequest.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, required: true, location: "uri", location_name: "IngestionId"))
    CreateIngestionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateIngestionRequest.add_member(:ingestion_type, Shapes::ShapeRef.new(shape: IngestionType, location_name: "IngestionType"))
    CreateIngestionRequest.struct_class = Types::CreateIngestionRequest

    CreateIngestionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateIngestionResponse.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, location_name: "IngestionId"))
    CreateIngestionResponse.add_member(:ingestion_status, Shapes::ShapeRef.new(shape: IngestionStatus, location_name: "IngestionStatus"))
    CreateIngestionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
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

    CreateRefreshScheduleRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    CreateRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateRefreshScheduleRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: RefreshSchedule, required: true, location_name: "Schedule"))
    CreateRefreshScheduleRequest.struct_class = Types::CreateRefreshScheduleRequest

    CreateRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateRefreshScheduleResponse.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleId"))
    CreateRefreshScheduleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateRefreshScheduleResponse.struct_class = Types::CreateRefreshScheduleResponse

    CreateTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    CreateTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    CreateTemplateAliasRequest.add_member(:template_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "TemplateVersionNumber"))
    CreateTemplateAliasRequest.struct_class = Types::CreateTemplateAliasRequest

    CreateTemplateAliasResponse.add_member(:template_alias, Shapes::ShapeRef.new(shape: TemplateAlias, location_name: "TemplateAlias"))
    CreateTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateTemplateAliasResponse.struct_class = Types::CreateTemplateAliasResponse

    CreateTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    CreateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    CreateTemplateRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateTemplateRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: TemplateSourceEntity, location_name: "SourceEntity"))
    CreateTemplateRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTemplateRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateVersionDefinition, location_name: "Definition"))
    CreateTemplateRequest.struct_class = Types::CreateTemplateRequest

    CreateTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateTemplateResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    CreateTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    CreateTemplateResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateTemplateResponse.struct_class = Types::CreateTemplateResponse

    CreateThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    CreateThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    CreateThemeAliasRequest.add_member(:theme_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "ThemeVersionNumber"))
    CreateThemeAliasRequest.struct_class = Types::CreateThemeAliasRequest

    CreateThemeAliasResponse.add_member(:theme_alias, Shapes::ShapeRef.new(shape: ThemeAlias, location_name: "ThemeAlias"))
    CreateThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateThemeAliasResponse.struct_class = Types::CreateThemeAliasResponse

    CreateThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    CreateThemeRequest.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, required: true, location_name: "Name"))
    CreateThemeRequest.add_member(:base_theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "BaseThemeId"))
    CreateThemeRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    CreateThemeRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ThemeConfiguration, required: true, location_name: "Configuration"))
    CreateThemeRequest.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    CreateThemeRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateThemeRequest.struct_class = Types::CreateThemeRequest

    CreateThemeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateThemeResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    CreateThemeResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    CreateThemeResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    CreateThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateThemeResponse.struct_class = Types::CreateThemeResponse

    CreateTopicRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateTopicRefreshScheduleRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    CreateTopicRefreshScheduleRequest.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetArn"))
    CreateTopicRefreshScheduleRequest.add_member(:dataset_name, Shapes::ShapeRef.new(shape: String, location_name: "DatasetName"))
    CreateTopicRefreshScheduleRequest.add_member(:refresh_schedule, Shapes::ShapeRef.new(shape: TopicRefreshSchedule, required: true, location_name: "RefreshSchedule"))
    CreateTopicRefreshScheduleRequest.struct_class = Types::CreateTopicRefreshScheduleRequest

    CreateTopicRefreshScheduleResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    CreateTopicRefreshScheduleResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    CreateTopicRefreshScheduleResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    CreateTopicRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateTopicRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateTopicRefreshScheduleResponse.struct_class = Types::CreateTopicRefreshScheduleResponse

    CreateTopicRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateTopicRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location_name: "TopicId"))
    CreateTopicRequest.add_member(:topic, Shapes::ShapeRef.new(shape: TopicDetails, required: true, location_name: "Topic"))
    CreateTopicRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateTopicRequest.struct_class = Types::CreateTopicRequest

    CreateTopicResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateTopicResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    CreateTopicResponse.add_member(:refresh_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RefreshArn"))
    CreateTopicResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateTopicResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateTopicResponse.struct_class = Types::CreateTopicResponse

    CreateVPCConnectionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    CreateVPCConnectionRequest.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdRestricted, required: true, location_name: "VPCConnectionId"))
    CreateVPCConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    CreateVPCConnectionRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    CreateVPCConnectionRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIds"))
    CreateVPCConnectionRequest.add_member(:dns_resolvers, Shapes::ShapeRef.new(shape: DnsResolverList, location_name: "DnsResolvers"))
    CreateVPCConnectionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    CreateVPCConnectionRequest.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    CreateVPCConnectionRequest.struct_class = Types::CreateVPCConnectionRequest

    CreateVPCConnectionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    CreateVPCConnectionResponse.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdRestricted, location_name: "VPCConnectionId"))
    CreateVPCConnectionResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: VPCConnectionResourceStatus, location_name: "CreationStatus"))
    CreateVPCConnectionResponse.add_member(:availability_status, Shapes::ShapeRef.new(shape: VPCConnectionAvailabilityStatus, location_name: "AvailabilityStatus"))
    CreateVPCConnectionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    CreateVPCConnectionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    CreateVPCConnectionResponse.struct_class = Types::CreateVPCConnectionResponse

    CredentialPair.add_member(:username, Shapes::ShapeRef.new(shape: DbUsername, required: true, location_name: "Username"))
    CredentialPair.add_member(:password, Shapes::ShapeRef.new(shape: Password, required: true, location_name: "Password"))
    CredentialPair.add_member(:alternate_data_source_parameters, Shapes::ShapeRef.new(shape: DataSourceParametersList, location_name: "AlternateDataSourceParameters"))
    CredentialPair.struct_class = Types::CredentialPair

    CurrencyDisplayFormatConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    CurrencyDisplayFormatConfiguration.add_member(:suffix, Shapes::ShapeRef.new(shape: Suffix, location_name: "Suffix"))
    CurrencyDisplayFormatConfiguration.add_member(:separator_configuration, Shapes::ShapeRef.new(shape: NumericSeparatorConfiguration, location_name: "SeparatorConfiguration"))
    CurrencyDisplayFormatConfiguration.add_member(:symbol, Shapes::ShapeRef.new(shape: CurrencyCode, location_name: "Symbol"))
    CurrencyDisplayFormatConfiguration.add_member(:decimal_places_configuration, Shapes::ShapeRef.new(shape: DecimalPlacesConfiguration, location_name: "DecimalPlacesConfiguration"))
    CurrencyDisplayFormatConfiguration.add_member(:number_scale, Shapes::ShapeRef.new(shape: NumberScale, location_name: "NumberScale"))
    CurrencyDisplayFormatConfiguration.add_member(:negative_value_configuration, Shapes::ShapeRef.new(shape: NegativeValueConfiguration, location_name: "NegativeValueConfiguration"))
    CurrencyDisplayFormatConfiguration.add_member(:null_value_format_configuration, Shapes::ShapeRef.new(shape: NullValueFormatConfiguration, location_name: "NullValueFormatConfiguration"))
    CurrencyDisplayFormatConfiguration.struct_class = Types::CurrencyDisplayFormatConfiguration

    CustomActionColumnList.member = Shapes::ShapeRef.new(shape: ColumnIdentifier)

    CustomActionFilterOperation.add_member(:selected_fields_configuration, Shapes::ShapeRef.new(shape: FilterOperationSelectedFieldsConfiguration, required: true, location_name: "SelectedFieldsConfiguration"))
    CustomActionFilterOperation.add_member(:target_visuals_configuration, Shapes::ShapeRef.new(shape: FilterOperationTargetVisualsConfiguration, required: true, location_name: "TargetVisualsConfiguration"))
    CustomActionFilterOperation.struct_class = Types::CustomActionFilterOperation

    CustomActionNavigationOperation.add_member(:local_navigation_configuration, Shapes::ShapeRef.new(shape: LocalNavigationConfiguration, location_name: "LocalNavigationConfiguration"))
    CustomActionNavigationOperation.struct_class = Types::CustomActionNavigationOperation

    CustomActionSetParametersOperation.add_member(:parameter_value_configurations, Shapes::ShapeRef.new(shape: SetParameterValueConfigurationList, required: true, location_name: "ParameterValueConfigurations"))
    CustomActionSetParametersOperation.struct_class = Types::CustomActionSetParametersOperation

    CustomActionURLOperation.add_member(:url_template, Shapes::ShapeRef.new(shape: URLOperationTemplate, required: true, location_name: "URLTemplate"))
    CustomActionURLOperation.add_member(:url_target, Shapes::ShapeRef.new(shape: URLTargetConfiguration, required: true, location_name: "URLTarget"))
    CustomActionURLOperation.struct_class = Types::CustomActionURLOperation

    CustomColor.add_member(:field_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "FieldValue"))
    CustomColor.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, required: true, location_name: "Color"))
    CustomColor.add_member(:special_value, Shapes::ShapeRef.new(shape: SpecialValue, location_name: "SpecialValue"))
    CustomColor.struct_class = Types::CustomColor

    CustomColorsList.member = Shapes::ShapeRef.new(shape: CustomColor)

    CustomContentConfiguration.add_member(:content_url, Shapes::ShapeRef.new(shape: URLOperationTemplate, location_name: "ContentUrl"))
    CustomContentConfiguration.add_member(:content_type, Shapes::ShapeRef.new(shape: CustomContentType, location_name: "ContentType"))
    CustomContentConfiguration.add_member(:image_scaling, Shapes::ShapeRef.new(shape: CustomContentImageScalingConfiguration, location_name: "ImageScaling"))
    CustomContentConfiguration.struct_class = Types::CustomContentConfiguration

    CustomContentVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    CustomContentVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    CustomContentVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    CustomContentVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: CustomContentConfiguration, location_name: "ChartConfiguration"))
    CustomContentVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    CustomContentVisual.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "DataSetIdentifier"))
    CustomContentVisual.struct_class = Types::CustomContentVisual

    CustomFilterConfiguration.add_member(:match_operator, Shapes::ShapeRef.new(shape: CategoryFilterMatchOperator, required: true, location_name: "MatchOperator"))
    CustomFilterConfiguration.add_member(:category_value, Shapes::ShapeRef.new(shape: CategoryValue, location_name: "CategoryValue"))
    CustomFilterConfiguration.add_member(:select_all_options, Shapes::ShapeRef.new(shape: CategoryFilterSelectAllOptions, location_name: "SelectAllOptions"))
    CustomFilterConfiguration.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    CustomFilterConfiguration.add_member(:null_option, Shapes::ShapeRef.new(shape: FilterNullOption, required: true, location_name: "NullOption"))
    CustomFilterConfiguration.struct_class = Types::CustomFilterConfiguration

    CustomFilterListConfiguration.add_member(:match_operator, Shapes::ShapeRef.new(shape: CategoryFilterMatchOperator, required: true, location_name: "MatchOperator"))
    CustomFilterListConfiguration.add_member(:category_values, Shapes::ShapeRef.new(shape: CategoryValueList, location_name: "CategoryValues"))
    CustomFilterListConfiguration.add_member(:select_all_options, Shapes::ShapeRef.new(shape: CategoryFilterSelectAllOptions, location_name: "SelectAllOptions"))
    CustomFilterListConfiguration.add_member(:null_option, Shapes::ShapeRef.new(shape: FilterNullOption, required: true, location_name: "NullOption"))
    CustomFilterListConfiguration.struct_class = Types::CustomFilterListConfiguration

    CustomNarrativeOptions.add_member(:narrative, Shapes::ShapeRef.new(shape: NarrativeString, required: true, location_name: "Narrative"))
    CustomNarrativeOptions.struct_class = Types::CustomNarrativeOptions

    CustomParameterValues.add_member(:string_values, Shapes::ShapeRef.new(shape: StringDefaultValueList, location_name: "StringValues"))
    CustomParameterValues.add_member(:integer_values, Shapes::ShapeRef.new(shape: IntegerDefaultValueList, location_name: "IntegerValues"))
    CustomParameterValues.add_member(:decimal_values, Shapes::ShapeRef.new(shape: DecimalDefaultValueList, location_name: "DecimalValues"))
    CustomParameterValues.add_member(:date_time_values, Shapes::ShapeRef.new(shape: DateTimeDefaultValueList, location_name: "DateTimeValues"))
    CustomParameterValues.struct_class = Types::CustomParameterValues

    CustomSql.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSourceArn"))
    CustomSql.add_member(:name, Shapes::ShapeRef.new(shape: CustomSqlName, required: true, location_name: "Name"))
    CustomSql.add_member(:sql_query, Shapes::ShapeRef.new(shape: SqlQuery, required: true, location_name: "SqlQuery"))
    CustomSql.add_member(:columns, Shapes::ShapeRef.new(shape: InputColumnList, location_name: "Columns"))
    CustomSql.struct_class = Types::CustomSql

    CustomValuesConfiguration.add_member(:include_null_value, Shapes::ShapeRef.new(shape: BooleanObject, location_name: "IncludeNullValue"))
    CustomValuesConfiguration.add_member(:custom_values, Shapes::ShapeRef.new(shape: CustomParameterValues, required: true, location_name: "CustomValues"))
    CustomValuesConfiguration.struct_class = Types::CustomValuesConfiguration

    Dashboard.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
    Dashboard.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Dashboard.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "Name"))
    Dashboard.add_member(:version, Shapes::ShapeRef.new(shape: DashboardVersion, location_name: "Version"))
    Dashboard.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Dashboard.add_member(:last_published_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastPublishedTime"))
    Dashboard.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Dashboard.struct_class = Types::Dashboard

    DashboardError.add_member(:type, Shapes::ShapeRef.new(shape: DashboardErrorType, location_name: "Type"))
    DashboardError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    DashboardError.add_member(:violated_entities, Shapes::ShapeRef.new(shape: EntityList, location_name: "ViolatedEntities"))
    DashboardError.struct_class = Types::DashboardError

    DashboardErrorList.member = Shapes::ShapeRef.new(shape: DashboardError)

    DashboardPublishOptions.add_member(:ad_hoc_filtering_option, Shapes::ShapeRef.new(shape: AdHocFilteringOption, location_name: "AdHocFilteringOption"))
    DashboardPublishOptions.add_member(:export_to_csv_option, Shapes::ShapeRef.new(shape: ExportToCSVOption, location_name: "ExportToCSVOption"))
    DashboardPublishOptions.add_member(:sheet_controls_option, Shapes::ShapeRef.new(shape: SheetControlsOption, location_name: "SheetControlsOption"))
    DashboardPublishOptions.add_member(:visual_publish_options, Shapes::ShapeRef.new(shape: DashboardVisualPublishOptions, deprecated: true, location_name: "VisualPublishOptions", metadata: {"deprecatedMessage"=>"VisualPublishOptions property will reach its end of standard support in a future release. To perform this action, use ExportWithHiddenFields."}))
    DashboardPublishOptions.add_member(:sheet_layout_element_maximization_option, Shapes::ShapeRef.new(shape: SheetLayoutElementMaximizationOption, location_name: "SheetLayoutElementMaximizationOption"))
    DashboardPublishOptions.add_member(:visual_menu_option, Shapes::ShapeRef.new(shape: VisualMenuOption, location_name: "VisualMenuOption"))
    DashboardPublishOptions.add_member(:visual_axis_sort_option, Shapes::ShapeRef.new(shape: VisualAxisSortOption, location_name: "VisualAxisSortOption"))
    DashboardPublishOptions.add_member(:export_with_hidden_fields_option, Shapes::ShapeRef.new(shape: ExportWithHiddenFieldsOption, location_name: "ExportWithHiddenFieldsOption"))
    DashboardPublishOptions.add_member(:data_point_drill_up_down_option, Shapes::ShapeRef.new(shape: DataPointDrillUpDownOption, location_name: "DataPointDrillUpDownOption"))
    DashboardPublishOptions.add_member(:data_point_menu_label_option, Shapes::ShapeRef.new(shape: DataPointMenuLabelOption, location_name: "DataPointMenuLabelOption"))
    DashboardPublishOptions.add_member(:data_point_tooltip_option, Shapes::ShapeRef.new(shape: DataPointTooltipOption, location_name: "DataPointTooltipOption"))
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
    DashboardSummary.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
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

    DashboardVersionDefinition.add_member(:data_set_identifier_declarations, Shapes::ShapeRef.new(shape: DataSetIdentifierDeclarationList, required: true, location_name: "DataSetIdentifierDeclarations"))
    DashboardVersionDefinition.add_member(:sheets, Shapes::ShapeRef.new(shape: SheetDefinitionList, location_name: "Sheets"))
    DashboardVersionDefinition.add_member(:calculated_fields, Shapes::ShapeRef.new(shape: CalculatedFields, location_name: "CalculatedFields"))
    DashboardVersionDefinition.add_member(:parameter_declarations, Shapes::ShapeRef.new(shape: ParameterDeclarationList, location_name: "ParameterDeclarations"))
    DashboardVersionDefinition.add_member(:filter_groups, Shapes::ShapeRef.new(shape: FilterGroupList, location_name: "FilterGroups"))
    DashboardVersionDefinition.add_member(:column_configurations, Shapes::ShapeRef.new(shape: ColumnConfigurationList, location_name: "ColumnConfigurations"))
    DashboardVersionDefinition.add_member(:analysis_defaults, Shapes::ShapeRef.new(shape: AnalysisDefaults, location_name: "AnalysisDefaults"))
    DashboardVersionDefinition.struct_class = Types::DashboardVersionDefinition

    DashboardVersionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DashboardVersionSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DashboardVersionSummary.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    DashboardVersionSummary.add_member(:status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "Status"))
    DashboardVersionSummary.add_member(:source_entity_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "SourceEntityArn"))
    DashboardVersionSummary.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    DashboardVersionSummary.struct_class = Types::DashboardVersionSummary

    DashboardVersionSummaryList.member = Shapes::ShapeRef.new(shape: DashboardVersionSummary)

    DashboardVisualId.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "DashboardId"))
    DashboardVisualId.add_member(:sheet_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SheetId"))
    DashboardVisualId.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    DashboardVisualId.struct_class = Types::DashboardVisualId

    DashboardVisualPublishOptions.add_member(:export_hidden_fields_option, Shapes::ShapeRef.new(shape: ExportHiddenFieldsOption, location_name: "ExportHiddenFieldsOption"))
    DashboardVisualPublishOptions.struct_class = Types::DashboardVisualPublishOptions

    DataAggregation.add_member(:dataset_row_date_granularity, Shapes::ShapeRef.new(shape: TopicTimeGranularity, location_name: "DatasetRowDateGranularity"))
    DataAggregation.add_member(:default_date_column_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "DefaultDateColumnName"))
    DataAggregation.struct_class = Types::DataAggregation

    DataBarsOptions.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    DataBarsOptions.add_member(:positive_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "PositiveColor"))
    DataBarsOptions.add_member(:negative_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "NegativeColor"))
    DataBarsOptions.struct_class = Types::DataBarsOptions

    DataColor.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    DataColor.add_member(:data_value, Shapes::ShapeRef.new(shape: Double, location_name: "DataValue", metadata: {"box"=>true}))
    DataColor.struct_class = Types::DataColor

    DataColorPalette.add_member(:colors, Shapes::ShapeRef.new(shape: ColorList, location_name: "Colors"))
    DataColorPalette.add_member(:min_max_gradient, Shapes::ShapeRef.new(shape: ColorList, location_name: "MinMaxGradient"))
    DataColorPalette.add_member(:empty_fill_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "EmptyFillColor"))
    DataColorPalette.struct_class = Types::DataColorPalette

    DataFieldSeriesItem.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    DataFieldSeriesItem.add_member(:field_value, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "FieldValue"))
    DataFieldSeriesItem.add_member(:axis_binding, Shapes::ShapeRef.new(shape: AxisBinding, required: true, location_name: "AxisBinding"))
    DataFieldSeriesItem.add_member(:settings, Shapes::ShapeRef.new(shape: LineChartSeriesSettings, location_name: "Settings"))
    DataFieldSeriesItem.struct_class = Types::DataFieldSeriesItem

    DataLabelOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    DataLabelOptions.add_member(:category_label_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "CategoryLabelVisibility"))
    DataLabelOptions.add_member(:measure_label_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "MeasureLabelVisibility"))
    DataLabelOptions.add_member(:data_label_types, Shapes::ShapeRef.new(shape: DataLabelTypes, location_name: "DataLabelTypes"))
    DataLabelOptions.add_member(:position, Shapes::ShapeRef.new(shape: DataLabelPosition, location_name: "Position"))
    DataLabelOptions.add_member(:label_content, Shapes::ShapeRef.new(shape: DataLabelContent, location_name: "LabelContent"))
    DataLabelOptions.add_member(:label_font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "LabelFontConfiguration"))
    DataLabelOptions.add_member(:label_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "LabelColor"))
    DataLabelOptions.add_member(:overlap, Shapes::ShapeRef.new(shape: DataLabelOverlap, location_name: "Overlap"))
    DataLabelOptions.add_member(:totals_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "TotalsVisibility"))
    DataLabelOptions.struct_class = Types::DataLabelOptions

    DataLabelType.add_member(:field_label_type, Shapes::ShapeRef.new(shape: FieldLabelType, location_name: "FieldLabelType"))
    DataLabelType.add_member(:data_path_label_type, Shapes::ShapeRef.new(shape: DataPathLabelType, location_name: "DataPathLabelType"))
    DataLabelType.add_member(:range_ends_label_type, Shapes::ShapeRef.new(shape: RangeEndsLabelType, location_name: "RangeEndsLabelType"))
    DataLabelType.add_member(:minimum_label_type, Shapes::ShapeRef.new(shape: MinimumLabelType, location_name: "MinimumLabelType"))
    DataLabelType.add_member(:maximum_label_type, Shapes::ShapeRef.new(shape: MaximumLabelType, location_name: "MaximumLabelType"))
    DataLabelType.struct_class = Types::DataLabelType

    DataLabelTypes.member = Shapes::ShapeRef.new(shape: DataLabelType)

    DataPathColor.add_member(:element, Shapes::ShapeRef.new(shape: DataPathValue, required: true, location_name: "Element"))
    DataPathColor.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, required: true, location_name: "Color"))
    DataPathColor.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "TimeGranularity"))
    DataPathColor.struct_class = Types::DataPathColor

    DataPathColorList.member = Shapes::ShapeRef.new(shape: DataPathColor)

    DataPathLabelType.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, location_name: "FieldId"))
    DataPathLabelType.add_member(:field_value, Shapes::ShapeRef.new(shape: FieldValue, location_name: "FieldValue"))
    DataPathLabelType.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    DataPathLabelType.struct_class = Types::DataPathLabelType

    DataPathSort.add_member(:direction, Shapes::ShapeRef.new(shape: SortDirection, required: true, location_name: "Direction"))
    DataPathSort.add_member(:sort_paths, Shapes::ShapeRef.new(shape: DataPathValueList, required: true, location_name: "SortPaths"))
    DataPathSort.struct_class = Types::DataPathSort

    DataPathValue.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    DataPathValue.add_member(:field_value, Shapes::ShapeRef.new(shape: FieldValue, required: true, location_name: "FieldValue"))
    DataPathValue.struct_class = Types::DataPathValue

    DataPathValueList.member = Shapes::ShapeRef.new(shape: DataPathValue)

    DataPointDrillUpDownOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    DataPointDrillUpDownOption.struct_class = Types::DataPointDrillUpDownOption

    DataPointMenuLabelOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    DataPointMenuLabelOption.struct_class = Types::DataPointMenuLabelOption

    DataPointTooltipOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    DataPointTooltipOption.struct_class = Types::DataPointTooltipOption

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
    DataSet.add_member(:field_folders, Shapes::ShapeRef.new(shape: FieldFolderMap, location_name: "FieldFolders"))
    DataSet.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    DataSet.add_member(:row_level_permission_tag_configuration, Shapes::ShapeRef.new(shape: RowLevelPermissionTagConfiguration, location_name: "RowLevelPermissionTagConfiguration"))
    DataSet.add_member(:column_level_permission_rules, Shapes::ShapeRef.new(shape: ColumnLevelPermissionRuleList, location_name: "ColumnLevelPermissionRules"))
    DataSet.add_member(:data_set_usage_configuration, Shapes::ShapeRef.new(shape: DataSetUsageConfiguration, location_name: "DataSetUsageConfiguration"))
    DataSet.add_member(:dataset_parameters, Shapes::ShapeRef.new(shape: DatasetParameterList, location_name: "DatasetParameters"))
    DataSet.struct_class = Types::DataSet

    DataSetArnsList.member = Shapes::ShapeRef.new(shape: Arn)

    DataSetConfiguration.add_member(:placeholder, Shapes::ShapeRef.new(shape: String, location_name: "Placeholder"))
    DataSetConfiguration.add_member(:data_set_schema, Shapes::ShapeRef.new(shape: DataSetSchema, location_name: "DataSetSchema"))
    DataSetConfiguration.add_member(:column_group_schema_list, Shapes::ShapeRef.new(shape: ColumnGroupSchemaList, location_name: "ColumnGroupSchemaList"))
    DataSetConfiguration.struct_class = Types::DataSetConfiguration

    DataSetConfigurationList.member = Shapes::ShapeRef.new(shape: DataSetConfiguration)

    DataSetIdentifierDeclaration.add_member(:identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "Identifier"))
    DataSetIdentifierDeclaration.add_member(:data_set_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSetArn"))
    DataSetIdentifierDeclaration.struct_class = Types::DataSetIdentifierDeclaration

    DataSetIdentifierDeclarationList.member = Shapes::ShapeRef.new(shape: DataSetIdentifierDeclaration)

    DataSetReference.add_member(:data_set_placeholder, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "DataSetPlaceholder"))
    DataSetReference.add_member(:data_set_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSetArn"))
    DataSetReference.struct_class = Types::DataSetReference

    DataSetReferenceList.member = Shapes::ShapeRef.new(shape: DataSetReference)

    DataSetRefreshProperties.add_member(:refresh_configuration, Shapes::ShapeRef.new(shape: RefreshConfiguration, required: true, location_name: "RefreshConfiguration"))
    DataSetRefreshProperties.struct_class = Types::DataSetRefreshProperties

    DataSetSchema.add_member(:column_schema_list, Shapes::ShapeRef.new(shape: ColumnSchemaList, location_name: "ColumnSchemaList"))
    DataSetSchema.struct_class = Types::DataSetSchema

    DataSetSearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "Operator"))
    DataSetSearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: DataSetFilterAttribute, required: true, location_name: "Name"))
    DataSetSearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    DataSetSearchFilter.struct_class = Types::DataSetSearchFilter

    DataSetSearchFilterList.member = Shapes::ShapeRef.new(shape: DataSetSearchFilter)

    DataSetSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DataSetSummary.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSetId"))
    DataSetSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DataSetSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DataSetSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DataSetSummary.add_member(:import_mode, Shapes::ShapeRef.new(shape: DataSetImportMode, location_name: "ImportMode"))
    DataSetSummary.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    DataSetSummary.add_member(:row_level_permission_tag_configuration_applied, Shapes::ShapeRef.new(shape: Boolean, location_name: "RowLevelPermissionTagConfigurationApplied"))
    DataSetSummary.add_member(:column_level_permission_rules_applied, Shapes::ShapeRef.new(shape: Boolean, location_name: "ColumnLevelPermissionRulesApplied"))
    DataSetSummary.struct_class = Types::DataSetSummary

    DataSetSummaryList.member = Shapes::ShapeRef.new(shape: DataSetSummary)

    DataSetUsageConfiguration.add_member(:disable_use_as_direct_query_source, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableUseAsDirectQuerySource"))
    DataSetUsageConfiguration.add_member(:disable_use_as_imported_source, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableUseAsImportedSource"))
    DataSetUsageConfiguration.struct_class = Types::DataSetUsageConfiguration

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
    DataSource.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
    DataSource.struct_class = Types::DataSource

    DataSourceCredentials.add_member(:credential_pair, Shapes::ShapeRef.new(shape: CredentialPair, location_name: "CredentialPair"))
    DataSourceCredentials.add_member(:copy_source_arn, Shapes::ShapeRef.new(shape: CopySourceArn, location_name: "CopySourceArn"))
    DataSourceCredentials.add_member(:secret_arn, Shapes::ShapeRef.new(shape: SecretArn, location_name: "SecretArn"))
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
    DataSourceParameters.add_member(:oracle_parameters, Shapes::ShapeRef.new(shape: OracleParameters, location_name: "OracleParameters"))
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
    DataSourceParameters.add_member(:amazon_open_search_parameters, Shapes::ShapeRef.new(shape: AmazonOpenSearchParameters, location_name: "AmazonOpenSearchParameters"))
    DataSourceParameters.add_member(:exasol_parameters, Shapes::ShapeRef.new(shape: ExasolParameters, location_name: "ExasolParameters"))
    DataSourceParameters.add_member(:databricks_parameters, Shapes::ShapeRef.new(shape: DatabricksParameters, location_name: "DatabricksParameters"))
    DataSourceParameters.struct_class = Types::DataSourceParameters

    DataSourceParametersList.member = Shapes::ShapeRef.new(shape: DataSourceParameters)

    DataSourceSearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, required: true, location_name: "Operator"))
    DataSourceSearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: DataSourceFilterAttribute, required: true, location_name: "Name"))
    DataSourceSearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    DataSourceSearchFilter.struct_class = Types::DataSourceSearchFilter

    DataSourceSearchFilterList.member = Shapes::ShapeRef.new(shape: DataSourceSearchFilter)

    DataSourceSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DataSourceSummary.add_member(:data_source_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "DataSourceId"))
    DataSourceSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    DataSourceSummary.add_member(:type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "Type"))
    DataSourceSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DataSourceSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    DataSourceSummary.struct_class = Types::DataSourceSummary

    DataSourceSummaryList.member = Shapes::ShapeRef.new(shape: DataSourceSummary)

    DatabricksParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    DatabricksParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    DatabricksParameters.add_member(:sql_endpoint_path, Shapes::ShapeRef.new(shape: SqlEndpointPath, required: true, location_name: "SqlEndpointPath"))
    DatabricksParameters.struct_class = Types::DatabricksParameters

    DatasetMetadata.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DatasetArn"))
    DatasetMetadata.add_member(:dataset_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "DatasetName"))
    DatasetMetadata.add_member(:dataset_description, Shapes::ShapeRef.new(shape: LimitedString, location_name: "DatasetDescription"))
    DatasetMetadata.add_member(:data_aggregation, Shapes::ShapeRef.new(shape: DataAggregation, location_name: "DataAggregation"))
    DatasetMetadata.add_member(:filters, Shapes::ShapeRef.new(shape: TopicFilters, location_name: "Filters"))
    DatasetMetadata.add_member(:columns, Shapes::ShapeRef.new(shape: TopicColumns, location_name: "Columns"))
    DatasetMetadata.add_member(:calculated_fields, Shapes::ShapeRef.new(shape: TopicCalculatedFields, location_name: "CalculatedFields"))
    DatasetMetadata.add_member(:named_entities, Shapes::ShapeRef.new(shape: TopicNamedEntities, location_name: "NamedEntities"))
    DatasetMetadata.struct_class = Types::DatasetMetadata

    DatasetParameter.add_member(:string_dataset_parameter, Shapes::ShapeRef.new(shape: StringDatasetParameter, location_name: "StringDatasetParameter"))
    DatasetParameter.add_member(:decimal_dataset_parameter, Shapes::ShapeRef.new(shape: DecimalDatasetParameter, location_name: "DecimalDatasetParameter"))
    DatasetParameter.add_member(:integer_dataset_parameter, Shapes::ShapeRef.new(shape: IntegerDatasetParameter, location_name: "IntegerDatasetParameter"))
    DatasetParameter.add_member(:date_time_dataset_parameter, Shapes::ShapeRef.new(shape: DateTimeDatasetParameter, location_name: "DateTimeDatasetParameter"))
    DatasetParameter.struct_class = Types::DatasetParameter

    DatasetParameterList.member = Shapes::ShapeRef.new(shape: DatasetParameter)

    Datasets.member = Shapes::ShapeRef.new(shape: DatasetMetadata)

    DateAxisOptions.add_member(:missing_date_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "MissingDateVisibility"))
    DateAxisOptions.struct_class = Types::DateAxisOptions

    DateDimensionField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    DateDimensionField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    DateDimensionField.add_member(:date_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "DateGranularity"))
    DateDimensionField.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: HierarchyId, location_name: "HierarchyId"))
    DateDimensionField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: DateTimeFormatConfiguration, location_name: "FormatConfiguration"))
    DateDimensionField.struct_class = Types::DateDimensionField

    DateMeasureField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    DateMeasureField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    DateMeasureField.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: DateAggregationFunction, location_name: "AggregationFunction"))
    DateMeasureField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: DateTimeFormatConfiguration, location_name: "FormatConfiguration"))
    DateMeasureField.struct_class = Types::DateMeasureField

    DateTimeDatasetParameter.add_member(:id, Shapes::ShapeRef.new(shape: DatasetParameterId, required: true, location_name: "Id"))
    DateTimeDatasetParameter.add_member(:name, Shapes::ShapeRef.new(shape: DatasetParameterName, required: true, location_name: "Name"))
    DateTimeDatasetParameter.add_member(:value_type, Shapes::ShapeRef.new(shape: DatasetParameterValueType, required: true, location_name: "ValueType"))
    DateTimeDatasetParameter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "TimeGranularity"))
    DateTimeDatasetParameter.add_member(:default_values, Shapes::ShapeRef.new(shape: DateTimeDatasetParameterDefaultValues, location_name: "DefaultValues"))
    DateTimeDatasetParameter.struct_class = Types::DateTimeDatasetParameter

    DateTimeDatasetParameterDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: DateTimeDatasetParameterValueList, location_name: "StaticValues"))
    DateTimeDatasetParameterDefaultValues.struct_class = Types::DateTimeDatasetParameterDefaultValues

    DateTimeDatasetParameterValueList.member = Shapes::ShapeRef.new(shape: DateTimeDatasetParameterDefaultValue)

    DateTimeDefaultValueList.member = Shapes::ShapeRef.new(shape: SensitiveTimestamp)

    DateTimeDefaultValues.add_member(:dynamic_value, Shapes::ShapeRef.new(shape: DynamicDefaultValue, location_name: "DynamicValue"))
    DateTimeDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: DateTimeDefaultValueList, location_name: "StaticValues"))
    DateTimeDefaultValues.add_member(:rolling_date, Shapes::ShapeRef.new(shape: RollingDateConfiguration, location_name: "RollingDate"))
    DateTimeDefaultValues.struct_class = Types::DateTimeDefaultValues

    DateTimeFormatConfiguration.add_member(:date_time_format, Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: "DateTimeFormat"))
    DateTimeFormatConfiguration.add_member(:null_value_format_configuration, Shapes::ShapeRef.new(shape: NullValueFormatConfiguration, location_name: "NullValueFormatConfiguration"))
    DateTimeFormatConfiguration.add_member(:numeric_format_configuration, Shapes::ShapeRef.new(shape: NumericFormatConfiguration, location_name: "NumericFormatConfiguration"))
    DateTimeFormatConfiguration.struct_class = Types::DateTimeFormatConfiguration

    DateTimeHierarchy.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: HierarchyId, required: true, location_name: "HierarchyId"))
    DateTimeHierarchy.add_member(:drill_down_filters, Shapes::ShapeRef.new(shape: DrillDownFilterList, location_name: "DrillDownFilters"))
    DateTimeHierarchy.struct_class = Types::DateTimeHierarchy

    DateTimeParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    DateTimeParameter.add_member(:values, Shapes::ShapeRef.new(shape: SensitiveTimestampList, required: true, location_name: "Values"))
    DateTimeParameter.struct_class = Types::DateTimeParameter

    DateTimeParameterDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "Name"))
    DateTimeParameterDeclaration.add_member(:default_values, Shapes::ShapeRef.new(shape: DateTimeDefaultValues, location_name: "DefaultValues"))
    DateTimeParameterDeclaration.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "TimeGranularity"))
    DateTimeParameterDeclaration.add_member(:value_when_unset, Shapes::ShapeRef.new(shape: DateTimeValueWhenUnsetConfiguration, location_name: "ValueWhenUnset"))
    DateTimeParameterDeclaration.add_member(:mapped_data_set_parameters, Shapes::ShapeRef.new(shape: MappedDataSetParameters, location_name: "MappedDataSetParameters"))
    DateTimeParameterDeclaration.struct_class = Types::DateTimeParameterDeclaration

    DateTimeParameterList.member = Shapes::ShapeRef.new(shape: DateTimeParameter)

    DateTimePickerControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    DateTimePickerControlDisplayOptions.add_member(:date_time_format, Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: "DateTimeFormat"))
    DateTimePickerControlDisplayOptions.struct_class = Types::DateTimePickerControlDisplayOptions

    DateTimeValueWhenUnsetConfiguration.add_member(:value_when_unset_option, Shapes::ShapeRef.new(shape: ValueWhenUnsetOption, location_name: "ValueWhenUnsetOption"))
    DateTimeValueWhenUnsetConfiguration.add_member(:custom_value, Shapes::ShapeRef.new(shape: SensitiveTimestamp, location_name: "CustomValue"))
    DateTimeValueWhenUnsetConfiguration.struct_class = Types::DateTimeValueWhenUnsetConfiguration

    DecimalDatasetParameter.add_member(:id, Shapes::ShapeRef.new(shape: DatasetParameterId, required: true, location_name: "Id"))
    DecimalDatasetParameter.add_member(:name, Shapes::ShapeRef.new(shape: DatasetParameterName, required: true, location_name: "Name"))
    DecimalDatasetParameter.add_member(:value_type, Shapes::ShapeRef.new(shape: DatasetParameterValueType, required: true, location_name: "ValueType"))
    DecimalDatasetParameter.add_member(:default_values, Shapes::ShapeRef.new(shape: DecimalDatasetParameterDefaultValues, location_name: "DefaultValues"))
    DecimalDatasetParameter.struct_class = Types::DecimalDatasetParameter

    DecimalDatasetParameterDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: DecimalDatasetParameterValueList, location_name: "StaticValues"))
    DecimalDatasetParameterDefaultValues.struct_class = Types::DecimalDatasetParameterDefaultValues

    DecimalDatasetParameterValueList.member = Shapes::ShapeRef.new(shape: DecimalDatasetParameterDefaultValue)

    DecimalDefaultValueList.member = Shapes::ShapeRef.new(shape: SensitiveDoubleObject)

    DecimalDefaultValues.add_member(:dynamic_value, Shapes::ShapeRef.new(shape: DynamicDefaultValue, location_name: "DynamicValue"))
    DecimalDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: DecimalDefaultValueList, location_name: "StaticValues"))
    DecimalDefaultValues.struct_class = Types::DecimalDefaultValues

    DecimalParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    DecimalParameter.add_member(:values, Shapes::ShapeRef.new(shape: SensitiveDoubleList, required: true, location_name: "Values"))
    DecimalParameter.struct_class = Types::DecimalParameter

    DecimalParameterDeclaration.add_member(:parameter_value_type, Shapes::ShapeRef.new(shape: ParameterValueType, required: true, location_name: "ParameterValueType"))
    DecimalParameterDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "Name"))
    DecimalParameterDeclaration.add_member(:default_values, Shapes::ShapeRef.new(shape: DecimalDefaultValues, location_name: "DefaultValues"))
    DecimalParameterDeclaration.add_member(:value_when_unset, Shapes::ShapeRef.new(shape: DecimalValueWhenUnsetConfiguration, location_name: "ValueWhenUnset"))
    DecimalParameterDeclaration.add_member(:mapped_data_set_parameters, Shapes::ShapeRef.new(shape: MappedDataSetParameters, location_name: "MappedDataSetParameters"))
    DecimalParameterDeclaration.struct_class = Types::DecimalParameterDeclaration

    DecimalParameterList.member = Shapes::ShapeRef.new(shape: DecimalParameter)

    DecimalPlacesConfiguration.add_member(:decimal_places, Shapes::ShapeRef.new(shape: DecimalPlaces, required: true, location_name: "DecimalPlaces"))
    DecimalPlacesConfiguration.struct_class = Types::DecimalPlacesConfiguration

    DecimalValueWhenUnsetConfiguration.add_member(:value_when_unset_option, Shapes::ShapeRef.new(shape: ValueWhenUnsetOption, location_name: "ValueWhenUnsetOption"))
    DecimalValueWhenUnsetConfiguration.add_member(:custom_value, Shapes::ShapeRef.new(shape: SensitiveDouble, location_name: "CustomValue", metadata: {"box"=>true}))
    DecimalValueWhenUnsetConfiguration.struct_class = Types::DecimalValueWhenUnsetConfiguration

    DefaultFormatting.add_member(:display_format, Shapes::ShapeRef.new(shape: DisplayFormat, location_name: "DisplayFormat"))
    DefaultFormatting.add_member(:display_format_options, Shapes::ShapeRef.new(shape: DisplayFormatOptions, location_name: "DisplayFormatOptions"))
    DefaultFormatting.struct_class = Types::DefaultFormatting

    DefaultFreeFormLayoutConfiguration.add_member(:canvas_size_options, Shapes::ShapeRef.new(shape: FreeFormLayoutCanvasSizeOptions, required: true, location_name: "CanvasSizeOptions"))
    DefaultFreeFormLayoutConfiguration.struct_class = Types::DefaultFreeFormLayoutConfiguration

    DefaultGridLayoutConfiguration.add_member(:canvas_size_options, Shapes::ShapeRef.new(shape: GridLayoutCanvasSizeOptions, required: true, location_name: "CanvasSizeOptions"))
    DefaultGridLayoutConfiguration.struct_class = Types::DefaultGridLayoutConfiguration

    DefaultInteractiveLayoutConfiguration.add_member(:grid, Shapes::ShapeRef.new(shape: DefaultGridLayoutConfiguration, location_name: "Grid"))
    DefaultInteractiveLayoutConfiguration.add_member(:free_form, Shapes::ShapeRef.new(shape: DefaultFreeFormLayoutConfiguration, location_name: "FreeForm"))
    DefaultInteractiveLayoutConfiguration.struct_class = Types::DefaultInteractiveLayoutConfiguration

    DefaultNewSheetConfiguration.add_member(:interactive_layout_configuration, Shapes::ShapeRef.new(shape: DefaultInteractiveLayoutConfiguration, location_name: "InteractiveLayoutConfiguration"))
    DefaultNewSheetConfiguration.add_member(:paginated_layout_configuration, Shapes::ShapeRef.new(shape: DefaultPaginatedLayoutConfiguration, location_name: "PaginatedLayoutConfiguration"))
    DefaultNewSheetConfiguration.add_member(:sheet_content_type, Shapes::ShapeRef.new(shape: SheetContentType, location_name: "SheetContentType"))
    DefaultNewSheetConfiguration.struct_class = Types::DefaultNewSheetConfiguration

    DefaultPaginatedLayoutConfiguration.add_member(:section_based, Shapes::ShapeRef.new(shape: DefaultSectionBasedLayoutConfiguration, location_name: "SectionBased"))
    DefaultPaginatedLayoutConfiguration.struct_class = Types::DefaultPaginatedLayoutConfiguration

    DefaultSectionBasedLayoutConfiguration.add_member(:canvas_size_options, Shapes::ShapeRef.new(shape: SectionBasedLayoutCanvasSizeOptions, required: true, location_name: "CanvasSizeOptions"))
    DefaultSectionBasedLayoutConfiguration.struct_class = Types::DefaultSectionBasedLayoutConfiguration

    DeleteAccountCustomizationRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteAccountCustomizationRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    DeleteAccountCustomizationRequest.struct_class = Types::DeleteAccountCustomizationRequest

    DeleteAccountCustomizationResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteAccountCustomizationResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteAccountCustomizationResponse.struct_class = Types::DeleteAccountCustomizationResponse

    DeleteAccountSubscriptionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteAccountSubscriptionRequest.struct_class = Types::DeleteAccountSubscriptionRequest

    DeleteAccountSubscriptionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteAccountSubscriptionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteAccountSubscriptionResponse.struct_class = Types::DeleteAccountSubscriptionResponse

    DeleteAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DeleteAnalysisRequest.add_member(:recovery_window_in_days, Shapes::ShapeRef.new(shape: RecoveryWindowInDays, location: "querystring", location_name: "recovery-window-in-days"))
    DeleteAnalysisRequest.add_member(:force_delete_without_recovery, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "force-delete-without-recovery"))
    DeleteAnalysisRequest.struct_class = Types::DeleteAnalysisRequest

    DeleteAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    DeleteAnalysisResponse.add_member(:deletion_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "DeletionTime"))
    DeleteAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteAnalysisResponse.struct_class = Types::DeleteAnalysisResponse

    DeleteDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    DeleteDashboardRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DeleteDashboardRequest.struct_class = Types::DeleteDashboardRequest

    DeleteDashboardResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
    DeleteDashboardResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteDashboardResponse.struct_class = Types::DeleteDashboardResponse

    DeleteDataSetRefreshPropertiesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteDataSetRefreshPropertiesRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DeleteDataSetRefreshPropertiesRequest.struct_class = Types::DeleteDataSetRefreshPropertiesRequest

    DeleteDataSetRefreshPropertiesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteDataSetRefreshPropertiesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteDataSetRefreshPropertiesResponse.struct_class = Types::DeleteDataSetRefreshPropertiesResponse

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

    DeleteFolderMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteFolderMembershipRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    DeleteFolderMembershipRequest.add_member(:member_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "MemberId"))
    DeleteFolderMembershipRequest.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, required: true, location: "uri", location_name: "MemberType"))
    DeleteFolderMembershipRequest.struct_class = Types::DeleteFolderMembershipRequest

    DeleteFolderMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location_name: "Status"))
    DeleteFolderMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteFolderMembershipResponse.struct_class = Types::DeleteFolderMembershipResponse

    DeleteFolderRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    DeleteFolderRequest.struct_class = Types::DeleteFolderRequest

    DeleteFolderResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteFolderResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteFolderResponse.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    DeleteFolderResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteFolderResponse.struct_class = Types::DeleteFolderResponse

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

    DeleteRefreshScheduleRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DeleteRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteRefreshScheduleRequest.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ScheduleId"))
    DeleteRefreshScheduleRequest.struct_class = Types::DeleteRefreshScheduleRequest

    DeleteRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteRefreshScheduleResponse.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleId"))
    DeleteRefreshScheduleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteRefreshScheduleResponse.struct_class = Types::DeleteRefreshScheduleResponse

    DeleteTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DeleteTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DeleteTemplateAliasRequest.struct_class = Types::DeleteTemplateAliasRequest

    DeleteTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteTemplateAliasResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    DeleteTemplateAliasResponse.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location_name: "AliasName"))
    DeleteTemplateAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteTemplateAliasResponse.struct_class = Types::DeleteTemplateAliasResponse

    DeleteTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DeleteTemplateRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DeleteTemplateRequest.struct_class = Types::DeleteTemplateRequest

    DeleteTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    DeleteTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteTemplateResponse.struct_class = Types::DeleteTemplateResponse

    DeleteThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DeleteThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DeleteThemeAliasRequest.struct_class = Types::DeleteThemeAliasRequest

    DeleteThemeAliasResponse.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location_name: "AliasName"))
    DeleteThemeAliasResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteThemeAliasResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    DeleteThemeAliasResponse.struct_class = Types::DeleteThemeAliasResponse

    DeleteThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DeleteThemeRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DeleteThemeRequest.struct_class = Types::DeleteThemeRequest

    DeleteThemeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteThemeResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    DeleteThemeResponse.struct_class = Types::DeleteThemeResponse

    DeleteTopicRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteTopicRefreshScheduleRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    DeleteTopicRefreshScheduleRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DatasetId"))
    DeleteTopicRefreshScheduleRequest.struct_class = Types::DeleteTopicRefreshScheduleRequest

    DeleteTopicRefreshScheduleResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    DeleteTopicRefreshScheduleResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    DeleteTopicRefreshScheduleResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    DeleteTopicRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteTopicRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteTopicRefreshScheduleResponse.struct_class = Types::DeleteTopicRefreshScheduleResponse

    DeleteTopicRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteTopicRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    DeleteTopicRequest.struct_class = Types::DeleteTopicRequest

    DeleteTopicResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteTopicResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    DeleteTopicResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteTopicResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteTopicResponse.struct_class = Types::DeleteTopicResponse

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

    DeleteVPCConnectionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DeleteVPCConnectionRequest.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, required: true, location: "uri", location_name: "VPCConnectionId"))
    DeleteVPCConnectionRequest.struct_class = Types::DeleteVPCConnectionRequest

    DeleteVPCConnectionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DeleteVPCConnectionResponse.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, location_name: "VPCConnectionId"))
    DeleteVPCConnectionResponse.add_member(:deletion_status, Shapes::ShapeRef.new(shape: VPCConnectionResourceStatus, location_name: "DeletionStatus"))
    DeleteVPCConnectionResponse.add_member(:availability_status, Shapes::ShapeRef.new(shape: VPCConnectionAvailabilityStatus, location_name: "AvailabilityStatus"))
    DeleteVPCConnectionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DeleteVPCConnectionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DeleteVPCConnectionResponse.struct_class = Types::DeleteVPCConnectionResponse

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

    DescribeAccountSubscriptionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAccountSubscriptionRequest.struct_class = Types::DescribeAccountSubscriptionRequest

    DescribeAccountSubscriptionResponse.add_member(:account_info, Shapes::ShapeRef.new(shape: AccountInfo, location_name: "AccountInfo"))
    DescribeAccountSubscriptionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAccountSubscriptionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAccountSubscriptionResponse.struct_class = Types::DescribeAccountSubscriptionResponse

    DescribeAnalysisDefinitionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAnalysisDefinitionRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DescribeAnalysisDefinitionRequest.struct_class = Types::DescribeAnalysisDefinitionRequest

    DescribeAnalysisDefinitionResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    DescribeAnalysisDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, location_name: "Name"))
    DescribeAnalysisDefinitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: AnalysisErrorList, location_name: "Errors"))
    DescribeAnalysisDefinitionResponse.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "ResourceStatus"))
    DescribeAnalysisDefinitionResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    DescribeAnalysisDefinitionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: AnalysisDefinition, location_name: "Definition"))
    DescribeAnalysisDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAnalysisDefinitionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAnalysisDefinitionResponse.struct_class = Types::DescribeAnalysisDefinitionResponse

    DescribeAnalysisPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAnalysisPermissionsRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DescribeAnalysisPermissionsRequest.struct_class = Types::DescribeAnalysisPermissionsRequest

    DescribeAnalysisPermissionsResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    DescribeAnalysisPermissionsResponse.add_member(:analysis_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnalysisArn"))
    DescribeAnalysisPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeAnalysisPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAnalysisPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAnalysisPermissionsResponse.struct_class = Types::DescribeAnalysisPermissionsResponse

    DescribeAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    DescribeAnalysisRequest.struct_class = Types::DescribeAnalysisRequest

    DescribeAnalysisResponse.add_member(:analysis, Shapes::ShapeRef.new(shape: Analysis, location_name: "Analysis"))
    DescribeAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeAnalysisResponse.struct_class = Types::DescribeAnalysisResponse

    DescribeAssetBundleExportJobRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAssetBundleExportJobRequest.add_member(:asset_bundle_export_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AssetBundleExportJobId"))
    DescribeAssetBundleExportJobRequest.struct_class = Types::DescribeAssetBundleExportJobRequest

    DescribeAssetBundleExportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: AssetBundleExportJobStatus, location_name: "JobStatus"))
    DescribeAssetBundleExportJobResponse.add_member(:download_url, Shapes::ShapeRef.new(shape: String, location_name: "DownloadUrl"))
    DescribeAssetBundleExportJobResponse.add_member(:errors, Shapes::ShapeRef.new(shape: AssetBundleExportJobErrorList, location_name: "Errors"))
    DescribeAssetBundleExportJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeAssetBundleExportJobResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DescribeAssetBundleExportJobResponse.add_member(:asset_bundle_export_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AssetBundleExportJobId"))
    DescribeAssetBundleExportJobResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    DescribeAssetBundleExportJobResponse.add_member(:resource_arns, Shapes::ShapeRef.new(shape: AssetBundleResourceArns, location_name: "ResourceArns"))
    DescribeAssetBundleExportJobResponse.add_member(:include_all_dependencies, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeAllDependencies"))
    DescribeAssetBundleExportJobResponse.add_member(:export_format, Shapes::ShapeRef.new(shape: AssetBundleExportFormat, location_name: "ExportFormat"))
    DescribeAssetBundleExportJobResponse.add_member(:cloud_formation_override_property_configuration, Shapes::ShapeRef.new(shape: AssetBundleCloudFormationOverridePropertyConfiguration, location_name: "CloudFormationOverridePropertyConfiguration"))
    DescribeAssetBundleExportJobResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RequestId"))
    DescribeAssetBundleExportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAssetBundleExportJobResponse.struct_class = Types::DescribeAssetBundleExportJobResponse

    DescribeAssetBundleImportJobRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeAssetBundleImportJobRequest.add_member(:asset_bundle_import_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AssetBundleImportJobId"))
    DescribeAssetBundleImportJobRequest.struct_class = Types::DescribeAssetBundleImportJobRequest

    DescribeAssetBundleImportJobResponse.add_member(:job_status, Shapes::ShapeRef.new(shape: AssetBundleImportJobStatus, location_name: "JobStatus"))
    DescribeAssetBundleImportJobResponse.add_member(:errors, Shapes::ShapeRef.new(shape: AssetBundleImportJobErrorList, location_name: "Errors"))
    DescribeAssetBundleImportJobResponse.add_member(:rollback_errors, Shapes::ShapeRef.new(shape: AssetBundleImportJobErrorList, location_name: "RollbackErrors"))
    DescribeAssetBundleImportJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeAssetBundleImportJobResponse.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    DescribeAssetBundleImportJobResponse.add_member(:asset_bundle_import_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AssetBundleImportJobId"))
    DescribeAssetBundleImportJobResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    DescribeAssetBundleImportJobResponse.add_member(:asset_bundle_import_source, Shapes::ShapeRef.new(shape: AssetBundleImportSourceDescription, location_name: "AssetBundleImportSource"))
    DescribeAssetBundleImportJobResponse.add_member(:override_parameters, Shapes::ShapeRef.new(shape: AssetBundleImportJobOverrideParameters, location_name: "OverrideParameters"))
    DescribeAssetBundleImportJobResponse.add_member(:failure_action, Shapes::ShapeRef.new(shape: AssetBundleImportFailureAction, location_name: "FailureAction"))
    DescribeAssetBundleImportJobResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RequestId"))
    DescribeAssetBundleImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeAssetBundleImportJobResponse.struct_class = Types::DescribeAssetBundleImportJobResponse

    DescribeDashboardDefinitionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDashboardDefinitionRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    DescribeDashboardDefinitionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeDashboardDefinitionRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeDashboardDefinitionRequest.struct_class = Types::DescribeDashboardDefinitionRequest

    DescribeDashboardDefinitionResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
    DescribeDashboardDefinitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: DashboardErrorList, location_name: "Errors"))
    DescribeDashboardDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, location_name: "Name"))
    DescribeDashboardDefinitionResponse.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "ResourceStatus"))
    DescribeDashboardDefinitionResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    DescribeDashboardDefinitionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: DashboardVersionDefinition, location_name: "Definition"))
    DescribeDashboardDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDashboardDefinitionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDashboardDefinitionResponse.add_member(:dashboard_publish_options, Shapes::ShapeRef.new(shape: DashboardPublishOptions, location_name: "DashboardPublishOptions"))
    DescribeDashboardDefinitionResponse.struct_class = Types::DescribeDashboardDefinitionResponse

    DescribeDashboardPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDashboardPermissionsRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    DescribeDashboardPermissionsRequest.struct_class = Types::DescribeDashboardPermissionsRequest

    DescribeDashboardPermissionsResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
    DescribeDashboardPermissionsResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DashboardArn"))
    DescribeDashboardPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeDashboardPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDashboardPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDashboardPermissionsResponse.add_member(:link_sharing_configuration, Shapes::ShapeRef.new(shape: LinkSharingConfiguration, location_name: "LinkSharingConfiguration"))
    DescribeDashboardPermissionsResponse.struct_class = Types::DescribeDashboardPermissionsResponse

    DescribeDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
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

    DescribeDataSetRefreshPropertiesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeDataSetRefreshPropertiesRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DescribeDataSetRefreshPropertiesRequest.struct_class = Types::DescribeDataSetRefreshPropertiesRequest

    DescribeDataSetRefreshPropertiesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeDataSetRefreshPropertiesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeDataSetRefreshPropertiesResponse.add_member(:data_set_refresh_properties, Shapes::ShapeRef.new(shape: DataSetRefreshProperties, location_name: "DataSetRefreshProperties"))
    DescribeDataSetRefreshPropertiesResponse.struct_class = Types::DescribeDataSetRefreshPropertiesResponse

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

    DescribeFolderPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeFolderPermissionsRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    DescribeFolderPermissionsRequest.struct_class = Types::DescribeFolderPermissionsRequest

    DescribeFolderPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeFolderPermissionsResponse.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    DescribeFolderPermissionsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeFolderPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeFolderPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeFolderPermissionsResponse.struct_class = Types::DescribeFolderPermissionsResponse

    DescribeFolderRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    DescribeFolderRequest.struct_class = Types::DescribeFolderRequest

    DescribeFolderResolvedPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeFolderResolvedPermissionsRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    DescribeFolderResolvedPermissionsRequest.struct_class = Types::DescribeFolderResolvedPermissionsRequest

    DescribeFolderResolvedPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeFolderResolvedPermissionsResponse.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    DescribeFolderResolvedPermissionsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeFolderResolvedPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeFolderResolvedPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeFolderResolvedPermissionsResponse.struct_class = Types::DescribeFolderResolvedPermissionsResponse

    DescribeFolderResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeFolderResponse.add_member(:folder, Shapes::ShapeRef.new(shape: Folder, location_name: "Folder"))
    DescribeFolderResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeFolderResponse.struct_class = Types::DescribeFolderResponse

    DescribeGroupMembershipRequest.add_member(:member_name, Shapes::ShapeRef.new(shape: GroupMemberName, required: true, location: "uri", location_name: "MemberName"))
    DescribeGroupMembershipRequest.add_member(:group_name, Shapes::ShapeRef.new(shape: GroupName, required: true, location: "uri", location_name: "GroupName"))
    DescribeGroupMembershipRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeGroupMembershipRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeGroupMembershipRequest.struct_class = Types::DescribeGroupMembershipRequest

    DescribeGroupMembershipResponse.add_member(:group_member, Shapes::ShapeRef.new(shape: GroupMember, location_name: "GroupMember"))
    DescribeGroupMembershipResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeGroupMembershipResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeGroupMembershipResponse.struct_class = Types::DescribeGroupMembershipResponse

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
    DescribeIngestionRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DataSetId"))
    DescribeIngestionRequest.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, required: true, location: "uri", location_name: "IngestionId"))
    DescribeIngestionRequest.struct_class = Types::DescribeIngestionRequest

    DescribeIngestionResponse.add_member(:ingestion, Shapes::ShapeRef.new(shape: Ingestion, location_name: "Ingestion"))
    DescribeIngestionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeIngestionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeIngestionResponse.struct_class = Types::DescribeIngestionResponse

    DescribeIpRestrictionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeIpRestrictionRequest.struct_class = Types::DescribeIpRestrictionRequest

    DescribeIpRestrictionResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    DescribeIpRestrictionResponse.add_member(:ip_restriction_rule_map, Shapes::ShapeRef.new(shape: IpRestrictionRuleMap, location_name: "IpRestrictionRuleMap"))
    DescribeIpRestrictionResponse.add_member(:enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Enabled"))
    DescribeIpRestrictionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeIpRestrictionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeIpRestrictionResponse.struct_class = Types::DescribeIpRestrictionResponse

    DescribeNamespaceRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeNamespaceRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeNamespaceRequest.struct_class = Types::DescribeNamespaceRequest

    DescribeNamespaceResponse.add_member(:namespace, Shapes::ShapeRef.new(shape: NamespaceInfoV2, location_name: "Namespace"))
    DescribeNamespaceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeNamespaceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeNamespaceResponse.struct_class = Types::DescribeNamespaceResponse

    DescribeRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeRefreshScheduleRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    DescribeRefreshScheduleRequest.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "ScheduleId"))
    DescribeRefreshScheduleRequest.struct_class = Types::DescribeRefreshScheduleRequest

    DescribeRefreshScheduleResponse.add_member(:refresh_schedule, Shapes::ShapeRef.new(shape: RefreshSchedule, location_name: "RefreshSchedule"))
    DescribeRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeRefreshScheduleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeRefreshScheduleResponse.struct_class = Types::DescribeRefreshScheduleResponse

    DescribeTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DescribeTemplateAliasRequest.struct_class = Types::DescribeTemplateAliasRequest

    DescribeTemplateAliasResponse.add_member(:template_alias, Shapes::ShapeRef.new(shape: TemplateAlias, location_name: "TemplateAlias"))
    DescribeTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplateAliasResponse.struct_class = Types::DescribeTemplateAliasResponse

    DescribeTemplateDefinitionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplateDefinitionRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplateDefinitionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeTemplateDefinitionRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeTemplateDefinitionRequest.struct_class = Types::DescribeTemplateDefinitionRequest

    DescribeTemplateDefinitionResponse.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    DescribeTemplateDefinitionResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    DescribeTemplateDefinitionResponse.add_member(:errors, Shapes::ShapeRef.new(shape: TemplateErrorList, location_name: "Errors"))
    DescribeTemplateDefinitionResponse.add_member(:resource_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "ResourceStatus"))
    DescribeTemplateDefinitionResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    DescribeTemplateDefinitionResponse.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateVersionDefinition, location_name: "Definition"))
    DescribeTemplateDefinitionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplateDefinitionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplateDefinitionResponse.struct_class = Types::DescribeTemplateDefinitionResponse

    DescribeTemplatePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplatePermissionsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplatePermissionsRequest.struct_class = Types::DescribeTemplatePermissionsRequest

    DescribeTemplatePermissionsResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    DescribeTemplatePermissionsResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TemplateArn"))
    DescribeTemplatePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeTemplatePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplatePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplatePermissionsResponse.struct_class = Types::DescribeTemplatePermissionsResponse

    DescribeTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    DescribeTemplateRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeTemplateRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeTemplateRequest.struct_class = Types::DescribeTemplateRequest

    DescribeTemplateResponse.add_member(:template, Shapes::ShapeRef.new(shape: Template, location_name: "Template"))
    DescribeTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTemplateResponse.struct_class = Types::DescribeTemplateResponse

    DescribeThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DescribeThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    DescribeThemeAliasRequest.struct_class = Types::DescribeThemeAliasRequest

    DescribeThemeAliasResponse.add_member(:theme_alias, Shapes::ShapeRef.new(shape: ThemeAlias, location_name: "ThemeAlias"))
    DescribeThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeThemeAliasResponse.struct_class = Types::DescribeThemeAliasResponse

    DescribeThemePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeThemePermissionsRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DescribeThemePermissionsRequest.struct_class = Types::DescribeThemePermissionsRequest

    DescribeThemePermissionsResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    DescribeThemePermissionsResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    DescribeThemePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeThemePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeThemePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeThemePermissionsResponse.struct_class = Types::DescribeThemePermissionsResponse

    DescribeThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAndAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    DescribeThemeRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location: "querystring", location_name: "version-number"))
    DescribeThemeRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, location: "querystring", location_name: "alias-name"))
    DescribeThemeRequest.struct_class = Types::DescribeThemeRequest

    DescribeThemeResponse.add_member(:theme, Shapes::ShapeRef.new(shape: Theme, location_name: "Theme"))
    DescribeThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeThemeResponse.struct_class = Types::DescribeThemeResponse

    DescribeTopicPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTopicPermissionsRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    DescribeTopicPermissionsRequest.struct_class = Types::DescribeTopicPermissionsRequest

    DescribeTopicPermissionsResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    DescribeTopicPermissionsResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    DescribeTopicPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    DescribeTopicPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTopicPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTopicPermissionsResponse.struct_class = Types::DescribeTopicPermissionsResponse

    DescribeTopicRefreshRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTopicRefreshRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    DescribeTopicRefreshRequest.add_member(:refresh_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "RefreshId"))
    DescribeTopicRefreshRequest.struct_class = Types::DescribeTopicRefreshRequest

    DescribeTopicRefreshResponse.add_member(:refresh_details, Shapes::ShapeRef.new(shape: TopicRefreshDetails, location_name: "RefreshDetails"))
    DescribeTopicRefreshResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTopicRefreshResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTopicRefreshResponse.struct_class = Types::DescribeTopicRefreshResponse

    DescribeTopicRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTopicRefreshScheduleRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    DescribeTopicRefreshScheduleRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DatasetId"))
    DescribeTopicRefreshScheduleRequest.struct_class = Types::DescribeTopicRefreshScheduleRequest

    DescribeTopicRefreshScheduleResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    DescribeTopicRefreshScheduleResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    DescribeTopicRefreshScheduleResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    DescribeTopicRefreshScheduleResponse.add_member(:refresh_schedule, Shapes::ShapeRef.new(shape: TopicRefreshSchedule, location_name: "RefreshSchedule"))
    DescribeTopicRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTopicRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTopicRefreshScheduleResponse.struct_class = Types::DescribeTopicRefreshScheduleResponse

    DescribeTopicRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeTopicRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    DescribeTopicRequest.struct_class = Types::DescribeTopicRequest

    DescribeTopicResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    DescribeTopicResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    DescribeTopicResponse.add_member(:topic, Shapes::ShapeRef.new(shape: TopicDetails, location_name: "Topic"))
    DescribeTopicResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeTopicResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeTopicResponse.struct_class = Types::DescribeTopicResponse

    DescribeUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    DescribeUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    DescribeUserRequest.struct_class = Types::DescribeUserRequest

    DescribeUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    DescribeUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    DescribeUserResponse.struct_class = Types::DescribeUserResponse

    DescribeVPCConnectionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    DescribeVPCConnectionRequest.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, required: true, location: "uri", location_name: "VPCConnectionId"))
    DescribeVPCConnectionRequest.struct_class = Types::DescribeVPCConnectionRequest

    DescribeVPCConnectionResponse.add_member(:vpc_connection, Shapes::ShapeRef.new(shape: VPCConnection, location_name: "VPCConnection"))
    DescribeVPCConnectionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DescribeVPCConnectionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location_name: "Status"))
    DescribeVPCConnectionResponse.struct_class = Types::DescribeVPCConnectionResponse

    DestinationParameterValueConfiguration.add_member(:custom_values_configuration, Shapes::ShapeRef.new(shape: CustomValuesConfiguration, location_name: "CustomValuesConfiguration"))
    DestinationParameterValueConfiguration.add_member(:select_all_value_options, Shapes::ShapeRef.new(shape: SelectAllValueOptions, location_name: "SelectAllValueOptions"))
    DestinationParameterValueConfiguration.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: String, location_name: "SourceParameterName"))
    DestinationParameterValueConfiguration.add_member(:source_field, Shapes::ShapeRef.new(shape: FieldId, location_name: "SourceField"))
    DestinationParameterValueConfiguration.add_member(:source_column, Shapes::ShapeRef.new(shape: ColumnIdentifier, location_name: "SourceColumn"))
    DestinationParameterValueConfiguration.struct_class = Types::DestinationParameterValueConfiguration

    DimensionField.add_member(:numerical_dimension_field, Shapes::ShapeRef.new(shape: NumericalDimensionField, location_name: "NumericalDimensionField"))
    DimensionField.add_member(:categorical_dimension_field, Shapes::ShapeRef.new(shape: CategoricalDimensionField, location_name: "CategoricalDimensionField"))
    DimensionField.add_member(:date_dimension_field, Shapes::ShapeRef.new(shape: DateDimensionField, location_name: "DateDimensionField"))
    DimensionField.struct_class = Types::DimensionField

    DimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    DisplayFormatOptions.add_member(:use_blank_cell_format, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseBlankCellFormat"))
    DisplayFormatOptions.add_member(:blank_cell_format, Shapes::ShapeRef.new(shape: LimitedString, location_name: "BlankCellFormat"))
    DisplayFormatOptions.add_member(:date_format, Shapes::ShapeRef.new(shape: LimitedString, location_name: "DateFormat"))
    DisplayFormatOptions.add_member(:decimal_separator, Shapes::ShapeRef.new(shape: TopicNumericSeparatorSymbol, location_name: "DecimalSeparator"))
    DisplayFormatOptions.add_member(:grouping_separator, Shapes::ShapeRef.new(shape: LimitedString, location_name: "GroupingSeparator"))
    DisplayFormatOptions.add_member(:use_grouping, Shapes::ShapeRef.new(shape: Boolean, location_name: "UseGrouping"))
    DisplayFormatOptions.add_member(:fraction_digits, Shapes::ShapeRef.new(shape: Integer, location_name: "FractionDigits"))
    DisplayFormatOptions.add_member(:prefix, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Prefix"))
    DisplayFormatOptions.add_member(:suffix, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Suffix"))
    DisplayFormatOptions.add_member(:unit_scaler, Shapes::ShapeRef.new(shape: NumberScale, location_name: "UnitScaler"))
    DisplayFormatOptions.add_member(:negative_format, Shapes::ShapeRef.new(shape: NegativeFormat, location_name: "NegativeFormat"))
    DisplayFormatOptions.add_member(:currency_symbol, Shapes::ShapeRef.new(shape: LimitedString, location_name: "CurrencySymbol"))
    DisplayFormatOptions.struct_class = Types::DisplayFormatOptions

    DnsResolverList.member = Shapes::ShapeRef.new(shape: IPv4Address)

    DomainNotWhitelistedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    DomainNotWhitelistedException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    DomainNotWhitelistedException.struct_class = Types::DomainNotWhitelistedException

    DonutCenterOptions.add_member(:label_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "LabelVisibility"))
    DonutCenterOptions.struct_class = Types::DonutCenterOptions

    DonutOptions.add_member(:arc_options, Shapes::ShapeRef.new(shape: ArcOptions, location_name: "ArcOptions"))
    DonutOptions.add_member(:donut_center_options, Shapes::ShapeRef.new(shape: DonutCenterOptions, location_name: "DonutCenterOptions"))
    DonutOptions.struct_class = Types::DonutOptions

    DrillDownFilter.add_member(:numeric_equality_filter, Shapes::ShapeRef.new(shape: NumericEqualityDrillDownFilter, location_name: "NumericEqualityFilter"))
    DrillDownFilter.add_member(:category_filter, Shapes::ShapeRef.new(shape: CategoryDrillDownFilter, location_name: "CategoryFilter"))
    DrillDownFilter.add_member(:time_range_filter, Shapes::ShapeRef.new(shape: TimeRangeDrillDownFilter, location_name: "TimeRangeFilter"))
    DrillDownFilter.struct_class = Types::DrillDownFilter

    DrillDownFilterList.member = Shapes::ShapeRef.new(shape: DrillDownFilter)

    DropDownControlDisplayOptions.add_member(:select_all_options, Shapes::ShapeRef.new(shape: ListControlSelectAllOptions, location_name: "SelectAllOptions"))
    DropDownControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    DropDownControlDisplayOptions.struct_class = Types::DropDownControlDisplayOptions

    DynamicDefaultValue.add_member(:user_name_column, Shapes::ShapeRef.new(shape: ColumnIdentifier, location_name: "UserNameColumn"))
    DynamicDefaultValue.add_member(:group_name_column, Shapes::ShapeRef.new(shape: ColumnIdentifier, location_name: "GroupNameColumn"))
    DynamicDefaultValue.add_member(:default_value_column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "DefaultValueColumn"))
    DynamicDefaultValue.struct_class = Types::DynamicDefaultValue

    EmptyVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    EmptyVisual.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "DataSetIdentifier"))
    EmptyVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    EmptyVisual.struct_class = Types::EmptyVisual

    Entity.add_member(:path, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Path"))
    Entity.struct_class = Types::Entity

    EntityList.member = Shapes::ShapeRef.new(shape: Entity)

    ErrorInfo.add_member(:type, Shapes::ShapeRef.new(shape: IngestionErrorType, location_name: "Type"))
    ErrorInfo.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ErrorInfo.struct_class = Types::ErrorInfo

    ExasolParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    ExasolParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    ExasolParameters.struct_class = Types::ExasolParameters

    ExcludePeriodConfiguration.add_member(:amount, Shapes::ShapeRef.new(shape: Integer, required: true, location_name: "Amount", metadata: {"box"=>true}))
    ExcludePeriodConfiguration.add_member(:granularity, Shapes::ShapeRef.new(shape: TimeGranularity, required: true, location_name: "Granularity"))
    ExcludePeriodConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: WidgetStatus, location_name: "Status"))
    ExcludePeriodConfiguration.struct_class = Types::ExcludePeriodConfiguration

    ExplicitHierarchy.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: HierarchyId, required: true, location_name: "HierarchyId"))
    ExplicitHierarchy.add_member(:columns, Shapes::ShapeRef.new(shape: ExplicitHierarchyColumnList, required: true, location_name: "Columns"))
    ExplicitHierarchy.add_member(:drill_down_filters, Shapes::ShapeRef.new(shape: DrillDownFilterList, location_name: "DrillDownFilters"))
    ExplicitHierarchy.struct_class = Types::ExplicitHierarchy

    ExplicitHierarchyColumnList.member = Shapes::ShapeRef.new(shape: ColumnIdentifier)

    ExportHiddenFieldsOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    ExportHiddenFieldsOption.struct_class = Types::ExportHiddenFieldsOption

    ExportToCSVOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    ExportToCSVOption.struct_class = Types::ExportToCSVOption

    ExportWithHiddenFieldsOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    ExportWithHiddenFieldsOption.struct_class = Types::ExportWithHiddenFieldsOption

    FieldBasedTooltip.add_member(:aggregation_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "AggregationVisibility"))
    FieldBasedTooltip.add_member(:tooltip_title_type, Shapes::ShapeRef.new(shape: TooltipTitleType, location_name: "TooltipTitleType"))
    FieldBasedTooltip.add_member(:tooltip_fields, Shapes::ShapeRef.new(shape: TooltipItemList, location_name: "TooltipFields"))
    FieldBasedTooltip.struct_class = Types::FieldBasedTooltip

    FieldFolder.add_member(:description, Shapes::ShapeRef.new(shape: FieldFolderDescription, location_name: "description"))
    FieldFolder.add_member(:columns, Shapes::ShapeRef.new(shape: FolderColumnList, location_name: "columns"))
    FieldFolder.struct_class = Types::FieldFolder

    FieldFolderMap.key = Shapes::ShapeRef.new(shape: FieldFolderPath)
    FieldFolderMap.value = Shapes::ShapeRef.new(shape: FieldFolder)

    FieldLabelType.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, location_name: "FieldId"))
    FieldLabelType.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    FieldLabelType.struct_class = Types::FieldLabelType

    FieldOrderList.member = Shapes::ShapeRef.new(shape: FieldId)

    FieldSeriesItem.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    FieldSeriesItem.add_member(:axis_binding, Shapes::ShapeRef.new(shape: AxisBinding, required: true, location_name: "AxisBinding"))
    FieldSeriesItem.add_member(:settings, Shapes::ShapeRef.new(shape: LineChartSeriesSettings, location_name: "Settings"))
    FieldSeriesItem.struct_class = Types::FieldSeriesItem

    FieldSort.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    FieldSort.add_member(:direction, Shapes::ShapeRef.new(shape: SortDirection, required: true, location_name: "Direction"))
    FieldSort.struct_class = Types::FieldSort

    FieldSortOptions.add_member(:field_sort, Shapes::ShapeRef.new(shape: FieldSort, location_name: "FieldSort"))
    FieldSortOptions.add_member(:column_sort, Shapes::ShapeRef.new(shape: ColumnSort, location_name: "ColumnSort"))
    FieldSortOptions.struct_class = Types::FieldSortOptions

    FieldSortOptionsList.member = Shapes::ShapeRef.new(shape: FieldSortOptions)

    FieldTooltipItem.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    FieldTooltipItem.add_member(:label, Shapes::ShapeRef.new(shape: String, location_name: "Label"))
    FieldTooltipItem.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    FieldTooltipItem.struct_class = Types::FieldTooltipItem

    FilledMapAggregatedFieldWells.add_member(:geospatial, Shapes::ShapeRef.new(shape: FilledMapDimensionFieldList, location_name: "Geospatial"))
    FilledMapAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: FilledMapMeasureFieldList, location_name: "Values"))
    FilledMapAggregatedFieldWells.struct_class = Types::FilledMapAggregatedFieldWells

    FilledMapConditionalFormatting.add_member(:conditional_formatting_options, Shapes::ShapeRef.new(shape: FilledMapConditionalFormattingOptionList, required: true, location_name: "ConditionalFormattingOptions"))
    FilledMapConditionalFormatting.struct_class = Types::FilledMapConditionalFormatting

    FilledMapConditionalFormattingOption.add_member(:shape, Shapes::ShapeRef.new(shape: FilledMapShapeConditionalFormatting, required: true, location_name: "Shape"))
    FilledMapConditionalFormattingOption.struct_class = Types::FilledMapConditionalFormattingOption

    FilledMapConditionalFormattingOptionList.member = Shapes::ShapeRef.new(shape: FilledMapConditionalFormattingOption)

    FilledMapConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: FilledMapFieldWells, location_name: "FieldWells"))
    FilledMapConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: FilledMapSortConfiguration, location_name: "SortConfiguration"))
    FilledMapConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    FilledMapConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    FilledMapConfiguration.add_member(:window_options, Shapes::ShapeRef.new(shape: GeospatialWindowOptions, location_name: "WindowOptions"))
    FilledMapConfiguration.add_member(:map_style_options, Shapes::ShapeRef.new(shape: GeospatialMapStyleOptions, location_name: "MapStyleOptions"))
    FilledMapConfiguration.struct_class = Types::FilledMapConfiguration

    FilledMapDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    FilledMapFieldWells.add_member(:filled_map_aggregated_field_wells, Shapes::ShapeRef.new(shape: FilledMapAggregatedFieldWells, location_name: "FilledMapAggregatedFieldWells"))
    FilledMapFieldWells.struct_class = Types::FilledMapFieldWells

    FilledMapMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    FilledMapShapeConditionalFormatting.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    FilledMapShapeConditionalFormatting.add_member(:format, Shapes::ShapeRef.new(shape: ShapeConditionalFormat, location_name: "Format"))
    FilledMapShapeConditionalFormatting.struct_class = Types::FilledMapShapeConditionalFormatting

    FilledMapSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    FilledMapSortConfiguration.struct_class = Types::FilledMapSortConfiguration

    FilledMapVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    FilledMapVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    FilledMapVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    FilledMapVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: FilledMapConfiguration, location_name: "ChartConfiguration"))
    FilledMapVisual.add_member(:conditional_formatting, Shapes::ShapeRef.new(shape: FilledMapConditionalFormatting, location_name: "ConditionalFormatting"))
    FilledMapVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    FilledMapVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    FilledMapVisual.struct_class = Types::FilledMapVisual

    Filter.add_member(:category_filter, Shapes::ShapeRef.new(shape: CategoryFilter, location_name: "CategoryFilter"))
    Filter.add_member(:numeric_range_filter, Shapes::ShapeRef.new(shape: NumericRangeFilter, location_name: "NumericRangeFilter"))
    Filter.add_member(:numeric_equality_filter, Shapes::ShapeRef.new(shape: NumericEqualityFilter, location_name: "NumericEqualityFilter"))
    Filter.add_member(:time_equality_filter, Shapes::ShapeRef.new(shape: TimeEqualityFilter, location_name: "TimeEqualityFilter"))
    Filter.add_member(:time_range_filter, Shapes::ShapeRef.new(shape: TimeRangeFilter, location_name: "TimeRangeFilter"))
    Filter.add_member(:relative_dates_filter, Shapes::ShapeRef.new(shape: RelativeDatesFilter, location_name: "RelativeDatesFilter"))
    Filter.add_member(:top_bottom_filter, Shapes::ShapeRef.new(shape: TopBottomFilter, location_name: "TopBottomFilter"))
    Filter.struct_class = Types::Filter

    FilterControl.add_member(:date_time_picker, Shapes::ShapeRef.new(shape: FilterDateTimePickerControl, location_name: "DateTimePicker"))
    FilterControl.add_member(:list, Shapes::ShapeRef.new(shape: FilterListControl, location_name: "List"))
    FilterControl.add_member(:dropdown, Shapes::ShapeRef.new(shape: FilterDropDownControl, location_name: "Dropdown"))
    FilterControl.add_member(:text_field, Shapes::ShapeRef.new(shape: FilterTextFieldControl, location_name: "TextField"))
    FilterControl.add_member(:text_area, Shapes::ShapeRef.new(shape: FilterTextAreaControl, location_name: "TextArea"))
    FilterControl.add_member(:slider, Shapes::ShapeRef.new(shape: FilterSliderControl, location_name: "Slider"))
    FilterControl.add_member(:relative_date_time, Shapes::ShapeRef.new(shape: FilterRelativeDateTimeControl, location_name: "RelativeDateTime"))
    FilterControl.struct_class = Types::FilterControl

    FilterControlList.member = Shapes::ShapeRef.new(shape: FilterControl)

    FilterDateTimePickerControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterDateTimePickerControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterDateTimePickerControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterDateTimePickerControl.add_member(:display_options, Shapes::ShapeRef.new(shape: DateTimePickerControlDisplayOptions, location_name: "DisplayOptions"))
    FilterDateTimePickerControl.add_member(:type, Shapes::ShapeRef.new(shape: SheetControlDateTimePickerType, location_name: "Type"))
    FilterDateTimePickerControl.struct_class = Types::FilterDateTimePickerControl

    FilterDropDownControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterDropDownControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterDropDownControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterDropDownControl.add_member(:display_options, Shapes::ShapeRef.new(shape: DropDownControlDisplayOptions, location_name: "DisplayOptions"))
    FilterDropDownControl.add_member(:type, Shapes::ShapeRef.new(shape: SheetControlListType, location_name: "Type"))
    FilterDropDownControl.add_member(:selectable_values, Shapes::ShapeRef.new(shape: FilterSelectableValues, location_name: "SelectableValues"))
    FilterDropDownControl.add_member(:cascading_control_configuration, Shapes::ShapeRef.new(shape: CascadingControlConfiguration, location_name: "CascadingControlConfiguration"))
    FilterDropDownControl.struct_class = Types::FilterDropDownControl

    FilterGroup.add_member(:filter_group_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterGroupId"))
    FilterGroup.add_member(:filters, Shapes::ShapeRef.new(shape: FilterList, required: true, location_name: "Filters"))
    FilterGroup.add_member(:scope_configuration, Shapes::ShapeRef.new(shape: FilterScopeConfiguration, required: true, location_name: "ScopeConfiguration"))
    FilterGroup.add_member(:status, Shapes::ShapeRef.new(shape: WidgetStatus, location_name: "Status"))
    FilterGroup.add_member(:cross_dataset, Shapes::ShapeRef.new(shape: CrossDatasetTypes, required: true, location_name: "CrossDataset"))
    FilterGroup.struct_class = Types::FilterGroup

    FilterGroupList.member = Shapes::ShapeRef.new(shape: FilterGroup)

    FilterList.member = Shapes::ShapeRef.new(shape: Filter)

    FilterListConfiguration.add_member(:match_operator, Shapes::ShapeRef.new(shape: CategoryFilterMatchOperator, required: true, location_name: "MatchOperator"))
    FilterListConfiguration.add_member(:category_values, Shapes::ShapeRef.new(shape: CategoryValueList, location_name: "CategoryValues"))
    FilterListConfiguration.add_member(:select_all_options, Shapes::ShapeRef.new(shape: CategoryFilterSelectAllOptions, location_name: "SelectAllOptions"))
    FilterListConfiguration.struct_class = Types::FilterListConfiguration

    FilterListControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterListControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterListControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterListControl.add_member(:display_options, Shapes::ShapeRef.new(shape: ListControlDisplayOptions, location_name: "DisplayOptions"))
    FilterListControl.add_member(:type, Shapes::ShapeRef.new(shape: SheetControlListType, location_name: "Type"))
    FilterListControl.add_member(:selectable_values, Shapes::ShapeRef.new(shape: FilterSelectableValues, location_name: "SelectableValues"))
    FilterListControl.add_member(:cascading_control_configuration, Shapes::ShapeRef.new(shape: CascadingControlConfiguration, location_name: "CascadingControlConfiguration"))
    FilterListControl.struct_class = Types::FilterListControl

    FilterOperation.add_member(:condition_expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "ConditionExpression"))
    FilterOperation.struct_class = Types::FilterOperation

    FilterOperationSelectedFieldsConfiguration.add_member(:selected_fields, Shapes::ShapeRef.new(shape: SelectedFieldList, location_name: "SelectedFields"))
    FilterOperationSelectedFieldsConfiguration.add_member(:selected_field_options, Shapes::ShapeRef.new(shape: SelectedFieldOptions, location_name: "SelectedFieldOptions"))
    FilterOperationSelectedFieldsConfiguration.add_member(:selected_columns, Shapes::ShapeRef.new(shape: CustomActionColumnList, location_name: "SelectedColumns"))
    FilterOperationSelectedFieldsConfiguration.struct_class = Types::FilterOperationSelectedFieldsConfiguration

    FilterOperationTargetVisualsConfiguration.add_member(:same_sheet_target_visual_configuration, Shapes::ShapeRef.new(shape: SameSheetTargetVisualConfiguration, location_name: "SameSheetTargetVisualConfiguration"))
    FilterOperationTargetVisualsConfiguration.struct_class = Types::FilterOperationTargetVisualsConfiguration

    FilterRelativeDateTimeControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterRelativeDateTimeControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterRelativeDateTimeControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterRelativeDateTimeControl.add_member(:display_options, Shapes::ShapeRef.new(shape: RelativeDateTimeControlDisplayOptions, location_name: "DisplayOptions"))
    FilterRelativeDateTimeControl.struct_class = Types::FilterRelativeDateTimeControl

    FilterScopeConfiguration.add_member(:selected_sheets, Shapes::ShapeRef.new(shape: SelectedSheetsFilterScopeConfiguration, location_name: "SelectedSheets"))
    FilterScopeConfiguration.struct_class = Types::FilterScopeConfiguration

    FilterSelectableValues.add_member(:values, Shapes::ShapeRef.new(shape: ParameterSelectableValueList, location_name: "Values"))
    FilterSelectableValues.struct_class = Types::FilterSelectableValues

    FilterSliderControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterSliderControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterSliderControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterSliderControl.add_member(:display_options, Shapes::ShapeRef.new(shape: SliderControlDisplayOptions, location_name: "DisplayOptions"))
    FilterSliderControl.add_member(:type, Shapes::ShapeRef.new(shape: SheetControlSliderType, location_name: "Type"))
    FilterSliderControl.add_member(:maximum_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "MaximumValue"))
    FilterSliderControl.add_member(:minimum_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "MinimumValue"))
    FilterSliderControl.add_member(:step_size, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "StepSize"))
    FilterSliderControl.struct_class = Types::FilterSliderControl

    FilterTextAreaControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterTextAreaControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterTextAreaControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterTextAreaControl.add_member(:delimiter, Shapes::ShapeRef.new(shape: TextAreaControlDelimiter, location_name: "Delimiter"))
    FilterTextAreaControl.add_member(:display_options, Shapes::ShapeRef.new(shape: TextAreaControlDisplayOptions, location_name: "DisplayOptions"))
    FilterTextAreaControl.struct_class = Types::FilterTextAreaControl

    FilterTextFieldControl.add_member(:filter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterControlId"))
    FilterTextFieldControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    FilterTextFieldControl.add_member(:source_filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SourceFilterId"))
    FilterTextFieldControl.add_member(:display_options, Shapes::ShapeRef.new(shape: TextFieldControlDisplayOptions, location_name: "DisplayOptions"))
    FilterTextFieldControl.struct_class = Types::FilterTextFieldControl

    FilteredVisualsList.member = Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId)

    Folder.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    Folder.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Folder.add_member(:name, Shapes::ShapeRef.new(shape: FolderName, location_name: "Name"))
    Folder.add_member(:folder_type, Shapes::ShapeRef.new(shape: FolderType, location_name: "FolderType"))
    Folder.add_member(:folder_path, Shapes::ShapeRef.new(shape: Path, location_name: "FolderPath"))
    Folder.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    Folder.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    Folder.struct_class = Types::Folder

    FolderColumnList.member = Shapes::ShapeRef.new(shape: String)

    FolderMember.add_member(:member_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "MemberId"))
    FolderMember.add_member(:member_type, Shapes::ShapeRef.new(shape: MemberType, location_name: "MemberType"))
    FolderMember.struct_class = Types::FolderMember

    FolderMemberList.member = Shapes::ShapeRef.new(shape: MemberIdArnPair)

    FolderSearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: FilterOperator, location_name: "Operator"))
    FolderSearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: FolderFilterAttribute, location_name: "Name"))
    FolderSearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    FolderSearchFilter.struct_class = Types::FolderSearchFilter

    FolderSearchFilterList.member = Shapes::ShapeRef.new(shape: FolderSearchFilter)

    FolderSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    FolderSummary.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    FolderSummary.add_member(:name, Shapes::ShapeRef.new(shape: FolderName, location_name: "Name"))
    FolderSummary.add_member(:folder_type, Shapes::ShapeRef.new(shape: FolderType, location_name: "FolderType"))
    FolderSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    FolderSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    FolderSummary.struct_class = Types::FolderSummary

    FolderSummaryList.member = Shapes::ShapeRef.new(shape: FolderSummary)

    Font.add_member(:font_family, Shapes::ShapeRef.new(shape: String, location_name: "FontFamily"))
    Font.struct_class = Types::Font

    FontConfiguration.add_member(:font_size, Shapes::ShapeRef.new(shape: FontSize, location_name: "FontSize"))
    FontConfiguration.add_member(:font_decoration, Shapes::ShapeRef.new(shape: FontDecoration, location_name: "FontDecoration"))
    FontConfiguration.add_member(:font_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "FontColor"))
    FontConfiguration.add_member(:font_weight, Shapes::ShapeRef.new(shape: FontWeight, location_name: "FontWeight"))
    FontConfiguration.add_member(:font_style, Shapes::ShapeRef.new(shape: FontStyle, location_name: "FontStyle"))
    FontConfiguration.struct_class = Types::FontConfiguration

    FontList.member = Shapes::ShapeRef.new(shape: Font)

    FontSize.add_member(:relative, Shapes::ShapeRef.new(shape: RelativeFontSize, location_name: "Relative"))
    FontSize.struct_class = Types::FontSize

    FontWeight.add_member(:name, Shapes::ShapeRef.new(shape: FontWeightName, location_name: "Name"))
    FontWeight.struct_class = Types::FontWeight

    ForecastComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    ForecastComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    ForecastComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    ForecastComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    ForecastComputation.add_member(:periods_forward, Shapes::ShapeRef.new(shape: PeriodsForward, location_name: "PeriodsForward"))
    ForecastComputation.add_member(:periods_backward, Shapes::ShapeRef.new(shape: PeriodsBackward, location_name: "PeriodsBackward"))
    ForecastComputation.add_member(:upper_boundary, Shapes::ShapeRef.new(shape: Double, location_name: "UpperBoundary", metadata: {"box"=>true}))
    ForecastComputation.add_member(:lower_boundary, Shapes::ShapeRef.new(shape: Double, location_name: "LowerBoundary", metadata: {"box"=>true}))
    ForecastComputation.add_member(:prediction_interval, Shapes::ShapeRef.new(shape: PredictionInterval, location_name: "PredictionInterval"))
    ForecastComputation.add_member(:seasonality, Shapes::ShapeRef.new(shape: ForecastComputationSeasonality, location_name: "Seasonality"))
    ForecastComputation.add_member(:custom_seasonality_value, Shapes::ShapeRef.new(shape: ForecastComputationCustomSeasonalityValue, location_name: "CustomSeasonalityValue", metadata: {"box"=>true}))
    ForecastComputation.struct_class = Types::ForecastComputation

    ForecastConfiguration.add_member(:forecast_properties, Shapes::ShapeRef.new(shape: TimeBasedForecastProperties, location_name: "ForecastProperties"))
    ForecastConfiguration.add_member(:scenario, Shapes::ShapeRef.new(shape: ForecastScenario, location_name: "Scenario"))
    ForecastConfiguration.struct_class = Types::ForecastConfiguration

    ForecastConfigurationList.member = Shapes::ShapeRef.new(shape: ForecastConfiguration)

    ForecastScenario.add_member(:what_if_point_scenario, Shapes::ShapeRef.new(shape: WhatIfPointScenario, location_name: "WhatIfPointScenario"))
    ForecastScenario.add_member(:what_if_range_scenario, Shapes::ShapeRef.new(shape: WhatIfRangeScenario, location_name: "WhatIfRangeScenario"))
    ForecastScenario.struct_class = Types::ForecastScenario

    FormatConfiguration.add_member(:string_format_configuration, Shapes::ShapeRef.new(shape: StringFormatConfiguration, location_name: "StringFormatConfiguration"))
    FormatConfiguration.add_member(:number_format_configuration, Shapes::ShapeRef.new(shape: NumberFormatConfiguration, location_name: "NumberFormatConfiguration"))
    FormatConfiguration.add_member(:date_time_format_configuration, Shapes::ShapeRef.new(shape: DateTimeFormatConfiguration, location_name: "DateTimeFormatConfiguration"))
    FormatConfiguration.struct_class = Types::FormatConfiguration

    FreeFormLayoutCanvasSizeOptions.add_member(:screen_canvas_size_options, Shapes::ShapeRef.new(shape: FreeFormLayoutScreenCanvasSizeOptions, location_name: "ScreenCanvasSizeOptions"))
    FreeFormLayoutCanvasSizeOptions.struct_class = Types::FreeFormLayoutCanvasSizeOptions

    FreeFormLayoutConfiguration.add_member(:elements, Shapes::ShapeRef.new(shape: FreeFromLayoutElementList, required: true, location_name: "Elements"))
    FreeFormLayoutConfiguration.add_member(:canvas_size_options, Shapes::ShapeRef.new(shape: FreeFormLayoutCanvasSizeOptions, location_name: "CanvasSizeOptions"))
    FreeFormLayoutConfiguration.struct_class = Types::FreeFormLayoutConfiguration

    FreeFormLayoutElement.add_member(:element_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ElementId"))
    FreeFormLayoutElement.add_member(:element_type, Shapes::ShapeRef.new(shape: LayoutElementType, required: true, location_name: "ElementType"))
    FreeFormLayoutElement.add_member(:x_axis_location, Shapes::ShapeRef.new(shape: PixelLength, required: true, location_name: "XAxisLocation"))
    FreeFormLayoutElement.add_member(:y_axis_location, Shapes::ShapeRef.new(shape: UnlimitedPixelLength, required: true, location_name: "YAxisLocation"))
    FreeFormLayoutElement.add_member(:width, Shapes::ShapeRef.new(shape: PixelLength, required: true, location_name: "Width"))
    FreeFormLayoutElement.add_member(:height, Shapes::ShapeRef.new(shape: PixelLength, required: true, location_name: "Height"))
    FreeFormLayoutElement.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    FreeFormLayoutElement.add_member(:rendering_rules, Shapes::ShapeRef.new(shape: SheetElementRenderingRuleList, location_name: "RenderingRules"))
    FreeFormLayoutElement.add_member(:border_style, Shapes::ShapeRef.new(shape: FreeFormLayoutElementBorderStyle, location_name: "BorderStyle"))
    FreeFormLayoutElement.add_member(:selected_border_style, Shapes::ShapeRef.new(shape: FreeFormLayoutElementBorderStyle, location_name: "SelectedBorderStyle"))
    FreeFormLayoutElement.add_member(:background_style, Shapes::ShapeRef.new(shape: FreeFormLayoutElementBackgroundStyle, location_name: "BackgroundStyle"))
    FreeFormLayoutElement.add_member(:loading_animation, Shapes::ShapeRef.new(shape: LoadingAnimation, location_name: "LoadingAnimation"))
    FreeFormLayoutElement.struct_class = Types::FreeFormLayoutElement

    FreeFormLayoutElementBackgroundStyle.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    FreeFormLayoutElementBackgroundStyle.add_member(:color, Shapes::ShapeRef.new(shape: HexColorWithTransparency, location_name: "Color"))
    FreeFormLayoutElementBackgroundStyle.struct_class = Types::FreeFormLayoutElementBackgroundStyle

    FreeFormLayoutElementBorderStyle.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    FreeFormLayoutElementBorderStyle.add_member(:color, Shapes::ShapeRef.new(shape: HexColorWithTransparency, location_name: "Color"))
    FreeFormLayoutElementBorderStyle.struct_class = Types::FreeFormLayoutElementBorderStyle

    FreeFormLayoutScreenCanvasSizeOptions.add_member(:optimized_view_port_width, Shapes::ShapeRef.new(shape: PixelLength, required: true, location_name: "OptimizedViewPortWidth", metadata: {"box"=>true}))
    FreeFormLayoutScreenCanvasSizeOptions.struct_class = Types::FreeFormLayoutScreenCanvasSizeOptions

    FreeFormSectionLayoutConfiguration.add_member(:elements, Shapes::ShapeRef.new(shape: FreeFromLayoutElementList, required: true, location_name: "Elements"))
    FreeFormSectionLayoutConfiguration.struct_class = Types::FreeFormSectionLayoutConfiguration

    FreeFromLayoutElementList.member = Shapes::ShapeRef.new(shape: FreeFormLayoutElement)

    FunnelChartAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: FunnelChartDimensionFieldList, location_name: "Category"))
    FunnelChartAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: FunnelChartMeasureFieldList, location_name: "Values"))
    FunnelChartAggregatedFieldWells.struct_class = Types::FunnelChartAggregatedFieldWells

    FunnelChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: FunnelChartFieldWells, location_name: "FieldWells"))
    FunnelChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: FunnelChartSortConfiguration, location_name: "SortConfiguration"))
    FunnelChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    FunnelChartConfiguration.add_member(:value_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ValueLabelOptions"))
    FunnelChartConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    FunnelChartConfiguration.add_member(:data_label_options, Shapes::ShapeRef.new(shape: FunnelChartDataLabelOptions, location_name: "DataLabelOptions"))
    FunnelChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    FunnelChartConfiguration.struct_class = Types::FunnelChartConfiguration

    FunnelChartDataLabelOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    FunnelChartDataLabelOptions.add_member(:category_label_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "CategoryLabelVisibility"))
    FunnelChartDataLabelOptions.add_member(:measure_label_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "MeasureLabelVisibility"))
    FunnelChartDataLabelOptions.add_member(:position, Shapes::ShapeRef.new(shape: DataLabelPosition, location_name: "Position"))
    FunnelChartDataLabelOptions.add_member(:label_font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "LabelFontConfiguration"))
    FunnelChartDataLabelOptions.add_member(:label_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "LabelColor"))
    FunnelChartDataLabelOptions.add_member(:measure_data_label_style, Shapes::ShapeRef.new(shape: FunnelChartMeasureDataLabelStyle, location_name: "MeasureDataLabelStyle"))
    FunnelChartDataLabelOptions.struct_class = Types::FunnelChartDataLabelOptions

    FunnelChartDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    FunnelChartFieldWells.add_member(:funnel_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: FunnelChartAggregatedFieldWells, location_name: "FunnelChartAggregatedFieldWells"))
    FunnelChartFieldWells.struct_class = Types::FunnelChartFieldWells

    FunnelChartMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    FunnelChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    FunnelChartSortConfiguration.add_member(:category_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimit"))
    FunnelChartSortConfiguration.struct_class = Types::FunnelChartSortConfiguration

    FunnelChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    FunnelChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    FunnelChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    FunnelChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: FunnelChartConfiguration, location_name: "ChartConfiguration"))
    FunnelChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    FunnelChartVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    FunnelChartVisual.struct_class = Types::FunnelChartVisual

    GaugeChartArcConditionalFormatting.add_member(:foreground_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "ForegroundColor"))
    GaugeChartArcConditionalFormatting.struct_class = Types::GaugeChartArcConditionalFormatting

    GaugeChartConditionalFormatting.add_member(:conditional_formatting_options, Shapes::ShapeRef.new(shape: GaugeChartConditionalFormattingOptionList, location_name: "ConditionalFormattingOptions"))
    GaugeChartConditionalFormatting.struct_class = Types::GaugeChartConditionalFormatting

    GaugeChartConditionalFormattingOption.add_member(:primary_value, Shapes::ShapeRef.new(shape: GaugeChartPrimaryValueConditionalFormatting, location_name: "PrimaryValue"))
    GaugeChartConditionalFormattingOption.add_member(:arc, Shapes::ShapeRef.new(shape: GaugeChartArcConditionalFormatting, location_name: "Arc"))
    GaugeChartConditionalFormattingOption.struct_class = Types::GaugeChartConditionalFormattingOption

    GaugeChartConditionalFormattingOptionList.member = Shapes::ShapeRef.new(shape: GaugeChartConditionalFormattingOption)

    GaugeChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: GaugeChartFieldWells, location_name: "FieldWells"))
    GaugeChartConfiguration.add_member(:gauge_chart_options, Shapes::ShapeRef.new(shape: GaugeChartOptions, location_name: "GaugeChartOptions"))
    GaugeChartConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    GaugeChartConfiguration.add_member(:tooltip_options, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "TooltipOptions"))
    GaugeChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    GaugeChartConfiguration.struct_class = Types::GaugeChartConfiguration

    GaugeChartFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    GaugeChartFieldWells.add_member(:target_values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "TargetValues"))
    GaugeChartFieldWells.struct_class = Types::GaugeChartFieldWells

    GaugeChartOptions.add_member(:primary_value_display_type, Shapes::ShapeRef.new(shape: PrimaryValueDisplayType, location_name: "PrimaryValueDisplayType"))
    GaugeChartOptions.add_member(:comparison, Shapes::ShapeRef.new(shape: ComparisonConfiguration, location_name: "Comparison"))
    GaugeChartOptions.add_member(:arc_axis, Shapes::ShapeRef.new(shape: ArcAxisConfiguration, location_name: "ArcAxis"))
    GaugeChartOptions.add_member(:arc, Shapes::ShapeRef.new(shape: ArcConfiguration, location_name: "Arc"))
    GaugeChartOptions.add_member(:primary_value_font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "PrimaryValueFontConfiguration"))
    GaugeChartOptions.struct_class = Types::GaugeChartOptions

    GaugeChartPrimaryValueConditionalFormatting.add_member(:text_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "TextColor"))
    GaugeChartPrimaryValueConditionalFormatting.add_member(:icon, Shapes::ShapeRef.new(shape: ConditionalFormattingIcon, location_name: "Icon"))
    GaugeChartPrimaryValueConditionalFormatting.struct_class = Types::GaugeChartPrimaryValueConditionalFormatting

    GaugeChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    GaugeChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    GaugeChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    GaugeChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: GaugeChartConfiguration, location_name: "ChartConfiguration"))
    GaugeChartVisual.add_member(:conditional_formatting, Shapes::ShapeRef.new(shape: GaugeChartConditionalFormatting, location_name: "ConditionalFormatting"))
    GaugeChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    GaugeChartVisual.struct_class = Types::GaugeChartVisual

    GenerateEmbedUrlForAnonymousUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    GenerateEmbedUrlForAnonymousUserRequest.add_member(:session_lifetime_in_minutes, Shapes::ShapeRef.new(shape: SessionLifetimeInMinutes, location_name: "SessionLifetimeInMinutes"))
    GenerateEmbedUrlForAnonymousUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location_name: "Namespace"))
    GenerateEmbedUrlForAnonymousUserRequest.add_member(:session_tags, Shapes::ShapeRef.new(shape: SessionTagList, location_name: "SessionTags"))
    GenerateEmbedUrlForAnonymousUserRequest.add_member(:authorized_resource_arns, Shapes::ShapeRef.new(shape: ArnList, required: true, location_name: "AuthorizedResourceArns"))
    GenerateEmbedUrlForAnonymousUserRequest.add_member(:experience_configuration, Shapes::ShapeRef.new(shape: AnonymousUserEmbeddingExperienceConfiguration, required: true, location_name: "ExperienceConfiguration"))
    GenerateEmbedUrlForAnonymousUserRequest.add_member(:allowed_domains, Shapes::ShapeRef.new(shape: StringList, location_name: "AllowedDomains"))
    GenerateEmbedUrlForAnonymousUserRequest.struct_class = Types::GenerateEmbedUrlForAnonymousUserRequest

    GenerateEmbedUrlForAnonymousUserResponse.add_member(:embed_url, Shapes::ShapeRef.new(shape: EmbeddingUrl, required: true, location_name: "EmbedUrl"))
    GenerateEmbedUrlForAnonymousUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, required: true, location: "statusCode", location_name: "Status"))
    GenerateEmbedUrlForAnonymousUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequestId"))
    GenerateEmbedUrlForAnonymousUserResponse.add_member(:anonymous_user_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "AnonymousUserArn"))
    GenerateEmbedUrlForAnonymousUserResponse.struct_class = Types::GenerateEmbedUrlForAnonymousUserResponse

    GenerateEmbedUrlForRegisteredUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    GenerateEmbedUrlForRegisteredUserRequest.add_member(:session_lifetime_in_minutes, Shapes::ShapeRef.new(shape: SessionLifetimeInMinutes, location_name: "SessionLifetimeInMinutes"))
    GenerateEmbedUrlForRegisteredUserRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "UserArn"))
    GenerateEmbedUrlForRegisteredUserRequest.add_member(:experience_configuration, Shapes::ShapeRef.new(shape: RegisteredUserEmbeddingExperienceConfiguration, required: true, location_name: "ExperienceConfiguration"))
    GenerateEmbedUrlForRegisteredUserRequest.add_member(:allowed_domains, Shapes::ShapeRef.new(shape: StringList, location_name: "AllowedDomains"))
    GenerateEmbedUrlForRegisteredUserRequest.struct_class = Types::GenerateEmbedUrlForRegisteredUserRequest

    GenerateEmbedUrlForRegisteredUserResponse.add_member(:embed_url, Shapes::ShapeRef.new(shape: EmbeddingUrl, required: true, location_name: "EmbedUrl"))
    GenerateEmbedUrlForRegisteredUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, required: true, location: "statusCode", location_name: "Status"))
    GenerateEmbedUrlForRegisteredUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "RequestId"))
    GenerateEmbedUrlForRegisteredUserResponse.struct_class = Types::GenerateEmbedUrlForRegisteredUserResponse

    GeoSpatialColumnGroup.add_member(:name, Shapes::ShapeRef.new(shape: ColumnGroupName, required: true, location_name: "Name"))
    GeoSpatialColumnGroup.add_member(:country_code, Shapes::ShapeRef.new(shape: GeoSpatialCountryCode, location_name: "CountryCode"))
    GeoSpatialColumnGroup.add_member(:columns, Shapes::ShapeRef.new(shape: ColumnList, required: true, location_name: "Columns"))
    GeoSpatialColumnGroup.struct_class = Types::GeoSpatialColumnGroup

    GeospatialCoordinateBounds.add_member(:north, Shapes::ShapeRef.new(shape: Latitude, required: true, location_name: "North"))
    GeospatialCoordinateBounds.add_member(:south, Shapes::ShapeRef.new(shape: Latitude, required: true, location_name: "South"))
    GeospatialCoordinateBounds.add_member(:west, Shapes::ShapeRef.new(shape: Longitude, required: true, location_name: "West"))
    GeospatialCoordinateBounds.add_member(:east, Shapes::ShapeRef.new(shape: Longitude, required: true, location_name: "East"))
    GeospatialCoordinateBounds.struct_class = Types::GeospatialCoordinateBounds

    GeospatialHeatmapColorScale.add_member(:colors, Shapes::ShapeRef.new(shape: GeospatialHeatmapDataColorList, location_name: "Colors"))
    GeospatialHeatmapColorScale.struct_class = Types::GeospatialHeatmapColorScale

    GeospatialHeatmapConfiguration.add_member(:heatmap_color, Shapes::ShapeRef.new(shape: GeospatialHeatmapColorScale, location_name: "HeatmapColor"))
    GeospatialHeatmapConfiguration.struct_class = Types::GeospatialHeatmapConfiguration

    GeospatialHeatmapDataColor.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, required: true, location_name: "Color"))
    GeospatialHeatmapDataColor.struct_class = Types::GeospatialHeatmapDataColor

    GeospatialHeatmapDataColorList.member = Shapes::ShapeRef.new(shape: GeospatialHeatmapDataColor)

    GeospatialMapAggregatedFieldWells.add_member(:geospatial, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Geospatial"))
    GeospatialMapAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    GeospatialMapAggregatedFieldWells.add_member(:colors, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Colors"))
    GeospatialMapAggregatedFieldWells.struct_class = Types::GeospatialMapAggregatedFieldWells

    GeospatialMapConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: GeospatialMapFieldWells, location_name: "FieldWells"))
    GeospatialMapConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    GeospatialMapConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    GeospatialMapConfiguration.add_member(:window_options, Shapes::ShapeRef.new(shape: GeospatialWindowOptions, location_name: "WindowOptions"))
    GeospatialMapConfiguration.add_member(:map_style_options, Shapes::ShapeRef.new(shape: GeospatialMapStyleOptions, location_name: "MapStyleOptions"))
    GeospatialMapConfiguration.add_member(:point_style_options, Shapes::ShapeRef.new(shape: GeospatialPointStyleOptions, location_name: "PointStyleOptions"))
    GeospatialMapConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    GeospatialMapConfiguration.struct_class = Types::GeospatialMapConfiguration

    GeospatialMapFieldWells.add_member(:geospatial_map_aggregated_field_wells, Shapes::ShapeRef.new(shape: GeospatialMapAggregatedFieldWells, location_name: "GeospatialMapAggregatedFieldWells"))
    GeospatialMapFieldWells.struct_class = Types::GeospatialMapFieldWells

    GeospatialMapStyleOptions.add_member(:base_map_style, Shapes::ShapeRef.new(shape: BaseMapStyleType, location_name: "BaseMapStyle"))
    GeospatialMapStyleOptions.struct_class = Types::GeospatialMapStyleOptions

    GeospatialMapVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    GeospatialMapVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    GeospatialMapVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    GeospatialMapVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: GeospatialMapConfiguration, location_name: "ChartConfiguration"))
    GeospatialMapVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    GeospatialMapVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    GeospatialMapVisual.struct_class = Types::GeospatialMapVisual

    GeospatialPointStyleOptions.add_member(:selected_point_style, Shapes::ShapeRef.new(shape: GeospatialSelectedPointStyle, location_name: "SelectedPointStyle"))
    GeospatialPointStyleOptions.add_member(:cluster_marker_configuration, Shapes::ShapeRef.new(shape: ClusterMarkerConfiguration, location_name: "ClusterMarkerConfiguration"))
    GeospatialPointStyleOptions.add_member(:heatmap_configuration, Shapes::ShapeRef.new(shape: GeospatialHeatmapConfiguration, location_name: "HeatmapConfiguration"))
    GeospatialPointStyleOptions.struct_class = Types::GeospatialPointStyleOptions

    GeospatialWindowOptions.add_member(:bounds, Shapes::ShapeRef.new(shape: GeospatialCoordinateBounds, location_name: "Bounds"))
    GeospatialWindowOptions.add_member(:map_zoom_mode, Shapes::ShapeRef.new(shape: MapZoomMode, location_name: "MapZoomMode"))
    GeospatialWindowOptions.struct_class = Types::GeospatialWindowOptions

    GetDashboardEmbedUrlRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    GetDashboardEmbedUrlRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    GetDashboardEmbedUrlRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: EmbeddingIdentityType, required: true, location: "querystring", location_name: "creds-type"))
    GetDashboardEmbedUrlRequest.add_member(:session_lifetime_in_minutes, Shapes::ShapeRef.new(shape: SessionLifetimeInMinutes, location: "querystring", location_name: "session-lifetime"))
    GetDashboardEmbedUrlRequest.add_member(:undo_redo_disabled, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "undo-redo-disabled"))
    GetDashboardEmbedUrlRequest.add_member(:reset_disabled, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "reset-disabled"))
    GetDashboardEmbedUrlRequest.add_member(:state_persistence_enabled, Shapes::ShapeRef.new(shape: Boolean, location: "querystring", location_name: "state-persistence-enabled"))
    GetDashboardEmbedUrlRequest.add_member(:user_arn, Shapes::ShapeRef.new(shape: Arn, location: "querystring", location_name: "user-arn"))
    GetDashboardEmbedUrlRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location: "querystring", location_name: "namespace"))
    GetDashboardEmbedUrlRequest.add_member(:additional_dashboard_ids, Shapes::ShapeRef.new(shape: AdditionalDashboardIdList, location: "querystring", location_name: "additional-dashboard-ids"))
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

    GlobalTableBorderOptions.add_member(:uniform_border, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "UniformBorder"))
    GlobalTableBorderOptions.add_member(:side_specific_border, Shapes::ShapeRef.new(shape: TableSideBorderOptions, location_name: "SideSpecificBorder"))
    GlobalTableBorderOptions.struct_class = Types::GlobalTableBorderOptions

    GradientColor.add_member(:stops, Shapes::ShapeRef.new(shape: GradientStopList, location_name: "Stops"))
    GradientColor.struct_class = Types::GradientColor

    GradientStop.add_member(:gradient_offset, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "GradientOffset"))
    GradientStop.add_member(:data_value, Shapes::ShapeRef.new(shape: Double, location_name: "DataValue", metadata: {"box"=>true}))
    GradientStop.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    GradientStop.struct_class = Types::GradientStop

    GradientStopList.member = Shapes::ShapeRef.new(shape: GradientStop)

    GridLayoutCanvasSizeOptions.add_member(:screen_canvas_size_options, Shapes::ShapeRef.new(shape: GridLayoutScreenCanvasSizeOptions, location_name: "ScreenCanvasSizeOptions"))
    GridLayoutCanvasSizeOptions.struct_class = Types::GridLayoutCanvasSizeOptions

    GridLayoutConfiguration.add_member(:elements, Shapes::ShapeRef.new(shape: GridLayoutElementList, required: true, location_name: "Elements"))
    GridLayoutConfiguration.add_member(:canvas_size_options, Shapes::ShapeRef.new(shape: GridLayoutCanvasSizeOptions, location_name: "CanvasSizeOptions"))
    GridLayoutConfiguration.struct_class = Types::GridLayoutConfiguration

    GridLayoutElement.add_member(:element_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ElementId"))
    GridLayoutElement.add_member(:element_type, Shapes::ShapeRef.new(shape: LayoutElementType, required: true, location_name: "ElementType"))
    GridLayoutElement.add_member(:column_index, Shapes::ShapeRef.new(shape: GridLayoutElementColumnIndex, location_name: "ColumnIndex"))
    GridLayoutElement.add_member(:column_span, Shapes::ShapeRef.new(shape: GridLayoutElementColumnSpan, required: true, location_name: "ColumnSpan"))
    GridLayoutElement.add_member(:row_index, Shapes::ShapeRef.new(shape: GridLayoutElementRowIndex, location_name: "RowIndex"))
    GridLayoutElement.add_member(:row_span, Shapes::ShapeRef.new(shape: GridLayoutElementRowSpan, required: true, location_name: "RowSpan"))
    GridLayoutElement.struct_class = Types::GridLayoutElement

    GridLayoutElementList.member = Shapes::ShapeRef.new(shape: GridLayoutElement)

    GridLayoutScreenCanvasSizeOptions.add_member(:resize_option, Shapes::ShapeRef.new(shape: ResizeOption, required: true, location_name: "ResizeOption"))
    GridLayoutScreenCanvasSizeOptions.add_member(:optimized_view_port_width, Shapes::ShapeRef.new(shape: PixelLength, location_name: "OptimizedViewPortWidth", metadata: {"box"=>true}))
    GridLayoutScreenCanvasSizeOptions.struct_class = Types::GridLayoutScreenCanvasSizeOptions

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

    GroupSearchFilter.add_member(:operator, Shapes::ShapeRef.new(shape: GroupFilterOperator, required: true, location_name: "Operator"))
    GroupSearchFilter.add_member(:name, Shapes::ShapeRef.new(shape: GroupFilterAttribute, required: true, location_name: "Name"))
    GroupSearchFilter.add_member(:value, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Value"))
    GroupSearchFilter.struct_class = Types::GroupSearchFilter

    GroupSearchFilterList.member = Shapes::ShapeRef.new(shape: GroupSearchFilter)

    GroupsList.member = Shapes::ShapeRef.new(shape: String)

    GrowthRateComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    GrowthRateComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    GrowthRateComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    GrowthRateComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    GrowthRateComputation.add_member(:period_size, Shapes::ShapeRef.new(shape: GrowthRatePeriodSize, location_name: "PeriodSize"))
    GrowthRateComputation.struct_class = Types::GrowthRateComputation

    GutterStyle.add_member(:show, Shapes::ShapeRef.new(shape: Boolean, location_name: "Show", metadata: {"box"=>true}))
    GutterStyle.struct_class = Types::GutterStyle

    HeaderFooterSectionConfiguration.add_member(:section_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SectionId"))
    HeaderFooterSectionConfiguration.add_member(:layout, Shapes::ShapeRef.new(shape: SectionLayoutConfiguration, required: true, location_name: "Layout"))
    HeaderFooterSectionConfiguration.add_member(:style, Shapes::ShapeRef.new(shape: SectionStyle, location_name: "Style"))
    HeaderFooterSectionConfiguration.struct_class = Types::HeaderFooterSectionConfiguration

    HeaderFooterSectionConfigurationList.member = Shapes::ShapeRef.new(shape: HeaderFooterSectionConfiguration)

    HeatMapAggregatedFieldWells.add_member(:rows, Shapes::ShapeRef.new(shape: HeatMapDimensionFieldList, location_name: "Rows"))
    HeatMapAggregatedFieldWells.add_member(:columns, Shapes::ShapeRef.new(shape: HeatMapDimensionFieldList, location_name: "Columns"))
    HeatMapAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: HeatMapMeasureFieldList, location_name: "Values"))
    HeatMapAggregatedFieldWells.struct_class = Types::HeatMapAggregatedFieldWells

    HeatMapConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: HeatMapFieldWells, location_name: "FieldWells"))
    HeatMapConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: HeatMapSortConfiguration, location_name: "SortConfiguration"))
    HeatMapConfiguration.add_member(:row_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "RowLabelOptions"))
    HeatMapConfiguration.add_member(:column_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ColumnLabelOptions"))
    HeatMapConfiguration.add_member(:color_scale, Shapes::ShapeRef.new(shape: ColorScale, location_name: "ColorScale"))
    HeatMapConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    HeatMapConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    HeatMapConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    HeatMapConfiguration.struct_class = Types::HeatMapConfiguration

    HeatMapDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    HeatMapFieldWells.add_member(:heat_map_aggregated_field_wells, Shapes::ShapeRef.new(shape: HeatMapAggregatedFieldWells, location_name: "HeatMapAggregatedFieldWells"))
    HeatMapFieldWells.struct_class = Types::HeatMapFieldWells

    HeatMapMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    HeatMapSortConfiguration.add_member(:heat_map_row_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "HeatMapRowSort"))
    HeatMapSortConfiguration.add_member(:heat_map_column_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "HeatMapColumnSort"))
    HeatMapSortConfiguration.add_member(:heat_map_row_items_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "HeatMapRowItemsLimitConfiguration"))
    HeatMapSortConfiguration.add_member(:heat_map_column_items_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "HeatMapColumnItemsLimitConfiguration"))
    HeatMapSortConfiguration.struct_class = Types::HeatMapSortConfiguration

    HeatMapVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    HeatMapVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    HeatMapVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    HeatMapVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: HeatMapConfiguration, location_name: "ChartConfiguration"))
    HeatMapVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    HeatMapVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    HeatMapVisual.struct_class = Types::HeatMapVisual

    HistogramAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: HistogramMeasureFieldList, location_name: "Values"))
    HistogramAggregatedFieldWells.struct_class = Types::HistogramAggregatedFieldWells

    HistogramBinOptions.add_member(:selected_bin_type, Shapes::ShapeRef.new(shape: HistogramBinType, location_name: "SelectedBinType"))
    HistogramBinOptions.add_member(:bin_count, Shapes::ShapeRef.new(shape: BinCountOptions, location_name: "BinCount"))
    HistogramBinOptions.add_member(:bin_width, Shapes::ShapeRef.new(shape: BinWidthOptions, location_name: "BinWidth"))
    HistogramBinOptions.add_member(:start_value, Shapes::ShapeRef.new(shape: Double, location_name: "StartValue", metadata: {"box"=>true}))
    HistogramBinOptions.struct_class = Types::HistogramBinOptions

    HistogramConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: HistogramFieldWells, location_name: "FieldWells"))
    HistogramConfiguration.add_member(:x_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "XAxisDisplayOptions"))
    HistogramConfiguration.add_member(:x_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "XAxisLabelOptions"))
    HistogramConfiguration.add_member(:y_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "YAxisDisplayOptions"))
    HistogramConfiguration.add_member(:bin_options, Shapes::ShapeRef.new(shape: HistogramBinOptions, location_name: "BinOptions"))
    HistogramConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    HistogramConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    HistogramConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    HistogramConfiguration.struct_class = Types::HistogramConfiguration

    HistogramFieldWells.add_member(:histogram_aggregated_field_wells, Shapes::ShapeRef.new(shape: HistogramAggregatedFieldWells, location_name: "HistogramAggregatedFieldWells"))
    HistogramFieldWells.struct_class = Types::HistogramFieldWells

    HistogramMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    HistogramVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    HistogramVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    HistogramVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    HistogramVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: HistogramConfiguration, location_name: "ChartConfiguration"))
    HistogramVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    HistogramVisual.struct_class = Types::HistogramVisual

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

    IncrementalRefresh.add_member(:lookback_window, Shapes::ShapeRef.new(shape: LookbackWindow, required: true, location_name: "LookbackWindow"))
    IncrementalRefresh.struct_class = Types::IncrementalRefresh

    Ingestion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    Ingestion.add_member(:ingestion_id, Shapes::ShapeRef.new(shape: IngestionId, location_name: "IngestionId"))
    Ingestion.add_member(:ingestion_status, Shapes::ShapeRef.new(shape: IngestionStatus, required: true, location_name: "IngestionStatus"))
    Ingestion.add_member(:error_info, Shapes::ShapeRef.new(shape: ErrorInfo, location_name: "ErrorInfo"))
    Ingestion.add_member(:row_info, Shapes::ShapeRef.new(shape: RowInfo, location_name: "RowInfo"))
    Ingestion.add_member(:queue_info, Shapes::ShapeRef.new(shape: QueueInfo, location_name: "QueueInfo"))
    Ingestion.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreatedTime"))
    Ingestion.add_member(:ingestion_time_in_seconds, Shapes::ShapeRef.new(shape: Long, location_name: "IngestionTimeInSeconds", metadata: {"box"=>true}))
    Ingestion.add_member(:ingestion_size_in_bytes, Shapes::ShapeRef.new(shape: Long, location_name: "IngestionSizeInBytes", metadata: {"box"=>true}))
    Ingestion.add_member(:request_source, Shapes::ShapeRef.new(shape: IngestionRequestSource, location_name: "RequestSource"))
    Ingestion.add_member(:request_type, Shapes::ShapeRef.new(shape: IngestionRequestType, location_name: "RequestType"))
    Ingestion.struct_class = Types::Ingestion

    Ingestions.member = Shapes::ShapeRef.new(shape: Ingestion)

    InputColumn.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "Name"))
    InputColumn.add_member(:type, Shapes::ShapeRef.new(shape: InputColumnDataType, required: true, location_name: "Type"))
    InputColumn.struct_class = Types::InputColumn

    InputColumnList.member = Shapes::ShapeRef.new(shape: InputColumn)

    InsightConfiguration.add_member(:computations, Shapes::ShapeRef.new(shape: ComputationList, location_name: "Computations"))
    InsightConfiguration.add_member(:custom_narrative, Shapes::ShapeRef.new(shape: CustomNarrativeOptions, location_name: "CustomNarrative"))
    InsightConfiguration.struct_class = Types::InsightConfiguration

    InsightVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    InsightVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    InsightVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    InsightVisual.add_member(:insight_configuration, Shapes::ShapeRef.new(shape: InsightConfiguration, location_name: "InsightConfiguration"))
    InsightVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    InsightVisual.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "DataSetIdentifier"))
    InsightVisual.struct_class = Types::InsightVisual

    IntegerDatasetParameter.add_member(:id, Shapes::ShapeRef.new(shape: DatasetParameterId, required: true, location_name: "Id"))
    IntegerDatasetParameter.add_member(:name, Shapes::ShapeRef.new(shape: DatasetParameterName, required: true, location_name: "Name"))
    IntegerDatasetParameter.add_member(:value_type, Shapes::ShapeRef.new(shape: DatasetParameterValueType, required: true, location_name: "ValueType"))
    IntegerDatasetParameter.add_member(:default_values, Shapes::ShapeRef.new(shape: IntegerDatasetParameterDefaultValues, location_name: "DefaultValues"))
    IntegerDatasetParameter.struct_class = Types::IntegerDatasetParameter

    IntegerDatasetParameterDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: IntegerDatasetParameterValueList, location_name: "StaticValues"))
    IntegerDatasetParameterDefaultValues.struct_class = Types::IntegerDatasetParameterDefaultValues

    IntegerDatasetParameterValueList.member = Shapes::ShapeRef.new(shape: IntegerDatasetParameterDefaultValue)

    IntegerDefaultValueList.member = Shapes::ShapeRef.new(shape: SensitiveLongObject)

    IntegerDefaultValues.add_member(:dynamic_value, Shapes::ShapeRef.new(shape: DynamicDefaultValue, location_name: "DynamicValue"))
    IntegerDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: IntegerDefaultValueList, location_name: "StaticValues"))
    IntegerDefaultValues.struct_class = Types::IntegerDefaultValues

    IntegerParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    IntegerParameter.add_member(:values, Shapes::ShapeRef.new(shape: SensitiveLongList, required: true, location_name: "Values"))
    IntegerParameter.struct_class = Types::IntegerParameter

    IntegerParameterDeclaration.add_member(:parameter_value_type, Shapes::ShapeRef.new(shape: ParameterValueType, required: true, location_name: "ParameterValueType"))
    IntegerParameterDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "Name"))
    IntegerParameterDeclaration.add_member(:default_values, Shapes::ShapeRef.new(shape: IntegerDefaultValues, location_name: "DefaultValues"))
    IntegerParameterDeclaration.add_member(:value_when_unset, Shapes::ShapeRef.new(shape: IntegerValueWhenUnsetConfiguration, location_name: "ValueWhenUnset"))
    IntegerParameterDeclaration.add_member(:mapped_data_set_parameters, Shapes::ShapeRef.new(shape: MappedDataSetParameters, location_name: "MappedDataSetParameters"))
    IntegerParameterDeclaration.struct_class = Types::IntegerParameterDeclaration

    IntegerParameterList.member = Shapes::ShapeRef.new(shape: IntegerParameter)

    IntegerValueWhenUnsetConfiguration.add_member(:value_when_unset_option, Shapes::ShapeRef.new(shape: ValueWhenUnsetOption, location_name: "ValueWhenUnsetOption"))
    IntegerValueWhenUnsetConfiguration.add_member(:custom_value, Shapes::ShapeRef.new(shape: SensitiveLong, location_name: "CustomValue", metadata: {"box"=>true}))
    IntegerValueWhenUnsetConfiguration.struct_class = Types::IntegerValueWhenUnsetConfiguration

    InternalFailureException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InternalFailureException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InternalFailureException.struct_class = Types::InternalFailureException

    InvalidNextTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidNextTokenException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidNextTokenException.struct_class = Types::InvalidNextTokenException

    InvalidParameterValueException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidParameterValueException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidParameterValueException.struct_class = Types::InvalidParameterValueException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidRequestException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    IpRestrictionRuleMap.key = Shapes::ShapeRef.new(shape: CIDR)
    IpRestrictionRuleMap.value = Shapes::ShapeRef.new(shape: IpRestrictionRuleDescription)

    ItemsLimitConfiguration.add_member(:items_limit, Shapes::ShapeRef.new(shape: Long, location_name: "ItemsLimit", metadata: {"box"=>true}))
    ItemsLimitConfiguration.add_member(:other_categories, Shapes::ShapeRef.new(shape: OtherCategories, location_name: "OtherCategories"))
    ItemsLimitConfiguration.struct_class = Types::ItemsLimitConfiguration

    JiraParameters.add_member(:site_base_url, Shapes::ShapeRef.new(shape: SiteBaseUrl, required: true, location_name: "SiteBaseUrl"))
    JiraParameters.struct_class = Types::JiraParameters

    JoinInstruction.add_member(:left_operand, Shapes::ShapeRef.new(shape: LogicalTableId, required: true, location_name: "LeftOperand"))
    JoinInstruction.add_member(:right_operand, Shapes::ShapeRef.new(shape: LogicalTableId, required: true, location_name: "RightOperand"))
    JoinInstruction.add_member(:left_join_key_properties, Shapes::ShapeRef.new(shape: JoinKeyProperties, location_name: "LeftJoinKeyProperties"))
    JoinInstruction.add_member(:right_join_key_properties, Shapes::ShapeRef.new(shape: JoinKeyProperties, location_name: "RightJoinKeyProperties"))
    JoinInstruction.add_member(:type, Shapes::ShapeRef.new(shape: JoinType, required: true, location_name: "Type"))
    JoinInstruction.add_member(:on_clause, Shapes::ShapeRef.new(shape: OnClause, required: true, location_name: "OnClause"))
    JoinInstruction.struct_class = Types::JoinInstruction

    JoinKeyProperties.add_member(:unique_key, Shapes::ShapeRef.new(shape: Boolean, location_name: "UniqueKey", metadata: {"box"=>true}))
    JoinKeyProperties.struct_class = Types::JoinKeyProperties

    KPIConditionalFormatting.add_member(:conditional_formatting_options, Shapes::ShapeRef.new(shape: KPIConditionalFormattingOptionList, location_name: "ConditionalFormattingOptions"))
    KPIConditionalFormatting.struct_class = Types::KPIConditionalFormatting

    KPIConditionalFormattingOption.add_member(:primary_value, Shapes::ShapeRef.new(shape: KPIPrimaryValueConditionalFormatting, location_name: "PrimaryValue"))
    KPIConditionalFormattingOption.add_member(:progress_bar, Shapes::ShapeRef.new(shape: KPIProgressBarConditionalFormatting, location_name: "ProgressBar"))
    KPIConditionalFormattingOption.struct_class = Types::KPIConditionalFormattingOption

    KPIConditionalFormattingOptionList.member = Shapes::ShapeRef.new(shape: KPIConditionalFormattingOption)

    KPIConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: KPIFieldWells, location_name: "FieldWells"))
    KPIConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: KPISortConfiguration, location_name: "SortConfiguration"))
    KPIConfiguration.add_member(:kpi_options, Shapes::ShapeRef.new(shape: KPIOptions, location_name: "KPIOptions"))
    KPIConfiguration.struct_class = Types::KPIConfiguration

    KPIFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    KPIFieldWells.add_member(:target_values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "TargetValues"))
    KPIFieldWells.add_member(:trend_groups, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "TrendGroups"))
    KPIFieldWells.struct_class = Types::KPIFieldWells

    KPIOptions.add_member(:progress_bar, Shapes::ShapeRef.new(shape: ProgressBarOptions, location_name: "ProgressBar"))
    KPIOptions.add_member(:trend_arrows, Shapes::ShapeRef.new(shape: TrendArrowOptions, location_name: "TrendArrows"))
    KPIOptions.add_member(:secondary_value, Shapes::ShapeRef.new(shape: SecondaryValueOptions, location_name: "SecondaryValue"))
    KPIOptions.add_member(:comparison, Shapes::ShapeRef.new(shape: ComparisonConfiguration, location_name: "Comparison"))
    KPIOptions.add_member(:primary_value_display_type, Shapes::ShapeRef.new(shape: PrimaryValueDisplayType, location_name: "PrimaryValueDisplayType"))
    KPIOptions.add_member(:primary_value_font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "PrimaryValueFontConfiguration"))
    KPIOptions.add_member(:secondary_value_font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "SecondaryValueFontConfiguration"))
    KPIOptions.struct_class = Types::KPIOptions

    KPIPrimaryValueConditionalFormatting.add_member(:text_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "TextColor"))
    KPIPrimaryValueConditionalFormatting.add_member(:icon, Shapes::ShapeRef.new(shape: ConditionalFormattingIcon, location_name: "Icon"))
    KPIPrimaryValueConditionalFormatting.struct_class = Types::KPIPrimaryValueConditionalFormatting

    KPIProgressBarConditionalFormatting.add_member(:foreground_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "ForegroundColor"))
    KPIProgressBarConditionalFormatting.struct_class = Types::KPIProgressBarConditionalFormatting

    KPISortConfiguration.add_member(:trend_group_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "TrendGroupSort"))
    KPISortConfiguration.struct_class = Types::KPISortConfiguration

    KPIVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    KPIVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    KPIVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    KPIVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: KPIConfiguration, location_name: "ChartConfiguration"))
    KPIVisual.add_member(:conditional_formatting, Shapes::ShapeRef.new(shape: KPIConditionalFormatting, location_name: "ConditionalFormatting"))
    KPIVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    KPIVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    KPIVisual.struct_class = Types::KPIVisual

    LabelOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    LabelOptions.add_member(:font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "FontConfiguration"))
    LabelOptions.add_member(:custom_label, Shapes::ShapeRef.new(shape: String, location_name: "CustomLabel"))
    LabelOptions.struct_class = Types::LabelOptions

    Layout.add_member(:configuration, Shapes::ShapeRef.new(shape: LayoutConfiguration, required: true, location_name: "Configuration"))
    Layout.struct_class = Types::Layout

    LayoutConfiguration.add_member(:grid_layout, Shapes::ShapeRef.new(shape: GridLayoutConfiguration, location_name: "GridLayout"))
    LayoutConfiguration.add_member(:free_form_layout, Shapes::ShapeRef.new(shape: FreeFormLayoutConfiguration, location_name: "FreeFormLayout"))
    LayoutConfiguration.add_member(:section_based_layout, Shapes::ShapeRef.new(shape: SectionBasedLayoutConfiguration, location_name: "SectionBasedLayout"))
    LayoutConfiguration.struct_class = Types::LayoutConfiguration

    LayoutList.member = Shapes::ShapeRef.new(shape: Layout)

    LegendOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    LegendOptions.add_member(:title, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "Title"))
    LegendOptions.add_member(:position, Shapes::ShapeRef.new(shape: LegendPosition, location_name: "Position"))
    LegendOptions.add_member(:width, Shapes::ShapeRef.new(shape: PixelLength, location_name: "Width"))
    LegendOptions.add_member(:height, Shapes::ShapeRef.new(shape: PixelLength, location_name: "Height"))
    LegendOptions.struct_class = Types::LegendOptions

    LimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    LimitExceededException.add_member(:resource_type, Shapes::ShapeRef.new(shape: ExceptionResourceType, location_name: "ResourceType"))
    LimitExceededException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    LimitExceededException.struct_class = Types::LimitExceededException

    LineChartAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Category"))
    LineChartAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    LineChartAggregatedFieldWells.add_member(:colors, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Colors"))
    LineChartAggregatedFieldWells.add_member(:small_multiples, Shapes::ShapeRef.new(shape: SmallMultiplesDimensionFieldList, location_name: "SmallMultiples"))
    LineChartAggregatedFieldWells.struct_class = Types::LineChartAggregatedFieldWells

    LineChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: LineChartFieldWells, location_name: "FieldWells"))
    LineChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: LineChartSortConfiguration, location_name: "SortConfiguration"))
    LineChartConfiguration.add_member(:forecast_configurations, Shapes::ShapeRef.new(shape: ForecastConfigurationList, location_name: "ForecastConfigurations"))
    LineChartConfiguration.add_member(:type, Shapes::ShapeRef.new(shape: LineChartType, location_name: "Type"))
    LineChartConfiguration.add_member(:small_multiples_options, Shapes::ShapeRef.new(shape: SmallMultiplesOptions, location_name: "SmallMultiplesOptions"))
    LineChartConfiguration.add_member(:x_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "XAxisDisplayOptions"))
    LineChartConfiguration.add_member(:x_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "XAxisLabelOptions"))
    LineChartConfiguration.add_member(:primary_y_axis_display_options, Shapes::ShapeRef.new(shape: LineSeriesAxisDisplayOptions, location_name: "PrimaryYAxisDisplayOptions"))
    LineChartConfiguration.add_member(:primary_y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "PrimaryYAxisLabelOptions"))
    LineChartConfiguration.add_member(:secondary_y_axis_display_options, Shapes::ShapeRef.new(shape: LineSeriesAxisDisplayOptions, location_name: "SecondaryYAxisDisplayOptions"))
    LineChartConfiguration.add_member(:secondary_y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "SecondaryYAxisLabelOptions"))
    LineChartConfiguration.add_member(:default_series_settings, Shapes::ShapeRef.new(shape: LineChartDefaultSeriesSettings, location_name: "DefaultSeriesSettings"))
    LineChartConfiguration.add_member(:series, Shapes::ShapeRef.new(shape: SeriesItemList, location_name: "Series"))
    LineChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    LineChartConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    LineChartConfiguration.add_member(:reference_lines, Shapes::ShapeRef.new(shape: ReferenceLineList, location_name: "ReferenceLines"))
    LineChartConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    LineChartConfiguration.add_member(:contribution_analysis_defaults, Shapes::ShapeRef.new(shape: ContributionAnalysisDefaultList, location_name: "ContributionAnalysisDefaults"))
    LineChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    LineChartConfiguration.struct_class = Types::LineChartConfiguration

    LineChartDefaultSeriesSettings.add_member(:axis_binding, Shapes::ShapeRef.new(shape: AxisBinding, location_name: "AxisBinding"))
    LineChartDefaultSeriesSettings.add_member(:line_style_settings, Shapes::ShapeRef.new(shape: LineChartLineStyleSettings, location_name: "LineStyleSettings"))
    LineChartDefaultSeriesSettings.add_member(:marker_style_settings, Shapes::ShapeRef.new(shape: LineChartMarkerStyleSettings, location_name: "MarkerStyleSettings"))
    LineChartDefaultSeriesSettings.struct_class = Types::LineChartDefaultSeriesSettings

    LineChartFieldWells.add_member(:line_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: LineChartAggregatedFieldWells, location_name: "LineChartAggregatedFieldWells"))
    LineChartFieldWells.struct_class = Types::LineChartFieldWells

    LineChartLineStyleSettings.add_member(:line_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "LineVisibility"))
    LineChartLineStyleSettings.add_member(:line_interpolation, Shapes::ShapeRef.new(shape: LineInterpolation, location_name: "LineInterpolation"))
    LineChartLineStyleSettings.add_member(:line_style, Shapes::ShapeRef.new(shape: LineChartLineStyle, location_name: "LineStyle"))
    LineChartLineStyleSettings.add_member(:line_width, Shapes::ShapeRef.new(shape: PixelLength, location_name: "LineWidth"))
    LineChartLineStyleSettings.struct_class = Types::LineChartLineStyleSettings

    LineChartMarkerStyleSettings.add_member(:marker_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "MarkerVisibility"))
    LineChartMarkerStyleSettings.add_member(:marker_shape, Shapes::ShapeRef.new(shape: LineChartMarkerShape, location_name: "MarkerShape"))
    LineChartMarkerStyleSettings.add_member(:marker_size, Shapes::ShapeRef.new(shape: PixelLength, location_name: "MarkerSize"))
    LineChartMarkerStyleSettings.add_member(:marker_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "MarkerColor"))
    LineChartMarkerStyleSettings.struct_class = Types::LineChartMarkerStyleSettings

    LineChartSeriesSettings.add_member(:line_style_settings, Shapes::ShapeRef.new(shape: LineChartLineStyleSettings, location_name: "LineStyleSettings"))
    LineChartSeriesSettings.add_member(:marker_style_settings, Shapes::ShapeRef.new(shape: LineChartMarkerStyleSettings, location_name: "MarkerStyleSettings"))
    LineChartSeriesSettings.struct_class = Types::LineChartSeriesSettings

    LineChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    LineChartSortConfiguration.add_member(:category_items_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimitConfiguration"))
    LineChartSortConfiguration.add_member(:color_items_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "ColorItemsLimitConfiguration"))
    LineChartSortConfiguration.add_member(:small_multiples_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "SmallMultiplesSort"))
    LineChartSortConfiguration.add_member(:small_multiples_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "SmallMultiplesLimitConfiguration"))
    LineChartSortConfiguration.struct_class = Types::LineChartSortConfiguration

    LineChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    LineChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    LineChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    LineChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: LineChartConfiguration, location_name: "ChartConfiguration"))
    LineChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    LineChartVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    LineChartVisual.struct_class = Types::LineChartVisual

    LineSeriesAxisDisplayOptions.add_member(:axis_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "AxisOptions"))
    LineSeriesAxisDisplayOptions.add_member(:missing_data_configurations, Shapes::ShapeRef.new(shape: MissingDataConfigurationList, location_name: "MissingDataConfigurations"))
    LineSeriesAxisDisplayOptions.struct_class = Types::LineSeriesAxisDisplayOptions

    LinkSharingConfiguration.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    LinkSharingConfiguration.struct_class = Types::LinkSharingConfiguration

    ListAnalysesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListAnalysesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAnalysesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListAnalysesRequest.struct_class = Types::ListAnalysesRequest

    ListAnalysesResponse.add_member(:analysis_summary_list, Shapes::ShapeRef.new(shape: AnalysisSummaryList, location_name: "AnalysisSummaryList"))
    ListAnalysesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAnalysesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListAnalysesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListAnalysesResponse.struct_class = Types::ListAnalysesResponse

    ListAssetBundleExportJobsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListAssetBundleExportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAssetBundleExportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListAssetBundleExportJobsRequest.struct_class = Types::ListAssetBundleExportJobsRequest

    ListAssetBundleExportJobsResponse.add_member(:asset_bundle_export_job_summary_list, Shapes::ShapeRef.new(shape: AssetBundleExportJobSummaryList, location_name: "AssetBundleExportJobSummaryList"))
    ListAssetBundleExportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssetBundleExportJobsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RequestId"))
    ListAssetBundleExportJobsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListAssetBundleExportJobsResponse.struct_class = Types::ListAssetBundleExportJobsResponse

    ListAssetBundleImportJobsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListAssetBundleImportJobsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListAssetBundleImportJobsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListAssetBundleImportJobsRequest.struct_class = Types::ListAssetBundleImportJobsRequest

    ListAssetBundleImportJobsResponse.add_member(:asset_bundle_import_job_summary_list, Shapes::ShapeRef.new(shape: AssetBundleImportJobSummaryList, location_name: "AssetBundleImportJobSummaryList"))
    ListAssetBundleImportJobsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListAssetBundleImportJobsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RequestId"))
    ListAssetBundleImportJobsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListAssetBundleImportJobsResponse.struct_class = Types::ListAssetBundleImportJobsResponse

    ListControlDisplayOptions.add_member(:search_options, Shapes::ShapeRef.new(shape: ListControlSearchOptions, location_name: "SearchOptions"))
    ListControlDisplayOptions.add_member(:select_all_options, Shapes::ShapeRef.new(shape: ListControlSelectAllOptions, location_name: "SelectAllOptions"))
    ListControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    ListControlDisplayOptions.struct_class = Types::ListControlDisplayOptions

    ListControlSearchOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ListControlSearchOptions.struct_class = Types::ListControlSearchOptions

    ListControlSelectAllOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ListControlSelectAllOptions.struct_class = Types::ListControlSelectAllOptions

    ListDashboardVersionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListDashboardVersionsRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
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

    ListFolderMembersRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListFolderMembersRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    ListFolderMembersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListFolderMembersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListFolderMembersRequest.struct_class = Types::ListFolderMembersRequest

    ListFolderMembersResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListFolderMembersResponse.add_member(:folder_member_list, Shapes::ShapeRef.new(shape: FolderMemberList, location_name: "FolderMemberList"))
    ListFolderMembersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFolderMembersResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListFolderMembersResponse.struct_class = Types::ListFolderMembersResponse

    ListFoldersRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListFoldersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListFoldersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListFoldersRequest.struct_class = Types::ListFoldersRequest

    ListFoldersResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListFoldersResponse.add_member(:folder_summary_list, Shapes::ShapeRef.new(shape: FolderSummaryList, location_name: "FolderSummaryList"))
    ListFoldersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListFoldersResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListFoldersResponse.struct_class = Types::ListFoldersResponse

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
    ListIAMPolicyAssignmentsRequest.add_member(:assignment_status, Shapes::ShapeRef.new(shape: AssignmentStatus, location: "querystring", location_name: "assignment-status"))
    ListIAMPolicyAssignmentsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    ListIAMPolicyAssignmentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListIAMPolicyAssignmentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListIAMPolicyAssignmentsRequest.struct_class = Types::ListIAMPolicyAssignmentsRequest

    ListIAMPolicyAssignmentsResponse.add_member(:iam_policy_assignments, Shapes::ShapeRef.new(shape: IAMPolicyAssignmentSummaryList, location_name: "IAMPolicyAssignments"))
    ListIAMPolicyAssignmentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIAMPolicyAssignmentsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListIAMPolicyAssignmentsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListIAMPolicyAssignmentsResponse.struct_class = Types::ListIAMPolicyAssignmentsResponse

    ListIngestionsRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DataSetId"))
    ListIngestionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListIngestionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListIngestionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: IngestionMaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListIngestionsRequest.struct_class = Types::ListIngestionsRequest

    ListIngestionsResponse.add_member(:ingestions, Shapes::ShapeRef.new(shape: Ingestions, location_name: "Ingestions"))
    ListIngestionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListIngestionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
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

    ListRefreshSchedulesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListRefreshSchedulesRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    ListRefreshSchedulesRequest.struct_class = Types::ListRefreshSchedulesRequest

    ListRefreshSchedulesResponse.add_member(:refresh_schedules, Shapes::ShapeRef.new(shape: RefreshSchedules, location_name: "RefreshSchedules"))
    ListRefreshSchedulesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListRefreshSchedulesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListRefreshSchedulesResponse.struct_class = Types::ListRefreshSchedulesResponse

    ListTagsForResourceRequest.add_member(:resource_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location: "uri", location_name: "ResourceArn"))
    ListTagsForResourceRequest.struct_class = Types::ListTagsForResourceRequest

    ListTagsForResourceResponse.add_member(:tags, Shapes::ShapeRef.new(shape: TagList, location_name: "Tags"))
    ListTagsForResourceResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTagsForResourceResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTagsForResourceResponse.struct_class = Types::ListTagsForResourceResponse

    ListTemplateAliasesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTemplateAliasesRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    ListTemplateAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListTemplateAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-result", metadata: {"box"=>true}))
    ListTemplateAliasesRequest.struct_class = Types::ListTemplateAliasesRequest

    ListTemplateAliasesResponse.add_member(:template_alias_list, Shapes::ShapeRef.new(shape: TemplateAliasList, location_name: "TemplateAliasList"))
    ListTemplateAliasesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTemplateAliasesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTemplateAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTemplateAliasesResponse.struct_class = Types::ListTemplateAliasesResponse

    ListTemplateVersionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTemplateVersionsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
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
    ListThemeAliasesRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    ListThemeAliasesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListThemeAliasesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-result", metadata: {"box"=>true}))
    ListThemeAliasesRequest.struct_class = Types::ListThemeAliasesRequest

    ListThemeAliasesResponse.add_member(:theme_alias_list, Shapes::ShapeRef.new(shape: ThemeAliasList, location_name: "ThemeAliasList"))
    ListThemeAliasesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListThemeAliasesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListThemeAliasesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListThemeAliasesResponse.struct_class = Types::ListThemeAliasesResponse

    ListThemeVersionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListThemeVersionsRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
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

    ListTopicRefreshSchedulesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTopicRefreshSchedulesRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    ListTopicRefreshSchedulesRequest.struct_class = Types::ListTopicRefreshSchedulesRequest

    ListTopicRefreshSchedulesResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    ListTopicRefreshSchedulesResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    ListTopicRefreshSchedulesResponse.add_member(:refresh_schedules, Shapes::ShapeRef.new(shape: TopicRefreshScheduleSummaries, location_name: "RefreshSchedules"))
    ListTopicRefreshSchedulesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTopicRefreshSchedulesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTopicRefreshSchedulesResponse.struct_class = Types::ListTopicRefreshSchedulesResponse

    ListTopicsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListTopicsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListTopicsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListTopicsRequest.struct_class = Types::ListTopicsRequest

    ListTopicsResponse.add_member(:topics_summaries, Shapes::ShapeRef.new(shape: TopicSummaries, location_name: "TopicsSummaries"))
    ListTopicsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListTopicsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListTopicsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListTopicsResponse.struct_class = Types::ListTopicsResponse

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

    ListVPCConnectionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    ListVPCConnectionsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    ListVPCConnectionsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    ListVPCConnectionsRequest.struct_class = Types::ListVPCConnectionsRequest

    ListVPCConnectionsResponse.add_member(:vpc_connection_summaries, Shapes::ShapeRef.new(shape: VPCConnectionSummaryList, location_name: "VPCConnectionSummaries"))
    ListVPCConnectionsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    ListVPCConnectionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ListVPCConnectionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    ListVPCConnectionsResponse.struct_class = Types::ListVPCConnectionsResponse

    LoadingAnimation.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    LoadingAnimation.struct_class = Types::LoadingAnimation

    LocalNavigationConfiguration.add_member(:target_sheet_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "TargetSheetId"))
    LocalNavigationConfiguration.struct_class = Types::LocalNavigationConfiguration

    LogicalTable.add_member(:alias, Shapes::ShapeRef.new(shape: LogicalTableAlias, required: true, location_name: "Alias"))
    LogicalTable.add_member(:data_transforms, Shapes::ShapeRef.new(shape: TransformOperationList, location_name: "DataTransforms"))
    LogicalTable.add_member(:source, Shapes::ShapeRef.new(shape: LogicalTableSource, required: true, location_name: "Source"))
    LogicalTable.struct_class = Types::LogicalTable

    LogicalTableMap.key = Shapes::ShapeRef.new(shape: LogicalTableId)
    LogicalTableMap.value = Shapes::ShapeRef.new(shape: LogicalTable)

    LogicalTableSource.add_member(:join_instruction, Shapes::ShapeRef.new(shape: JoinInstruction, location_name: "JoinInstruction"))
    LogicalTableSource.add_member(:physical_table_id, Shapes::ShapeRef.new(shape: PhysicalTableId, location_name: "PhysicalTableId"))
    LogicalTableSource.add_member(:data_set_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DataSetArn"))
    LogicalTableSource.struct_class = Types::LogicalTableSource

    LongFormatText.add_member(:plain_text, Shapes::ShapeRef.new(shape: LongPlainText, location_name: "PlainText"))
    LongFormatText.add_member(:rich_text, Shapes::ShapeRef.new(shape: LongRichText, location_name: "RichText"))
    LongFormatText.struct_class = Types::LongFormatText

    LookbackWindow.add_member(:column_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ColumnName"))
    LookbackWindow.add_member(:size, Shapes::ShapeRef.new(shape: PositiveLong, required: true, location_name: "Size"))
    LookbackWindow.add_member(:size_unit, Shapes::ShapeRef.new(shape: LookbackWindowSizeUnit, required: true, location_name: "SizeUnit"))
    LookbackWindow.struct_class = Types::LookbackWindow

    ManifestFileLocation.add_member(:bucket, Shapes::ShapeRef.new(shape: S3Bucket, required: true, location_name: "Bucket"))
    ManifestFileLocation.add_member(:key, Shapes::ShapeRef.new(shape: S3Key, required: true, location_name: "Key"))
    ManifestFileLocation.struct_class = Types::ManifestFileLocation

    MappedDataSetParameter.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, required: true, location_name: "DataSetIdentifier"))
    MappedDataSetParameter.add_member(:data_set_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "DataSetParameterName"))
    MappedDataSetParameter.struct_class = Types::MappedDataSetParameter

    MappedDataSetParameters.member = Shapes::ShapeRef.new(shape: MappedDataSetParameter)

    MarginStyle.add_member(:show, Shapes::ShapeRef.new(shape: Boolean, location_name: "Show", metadata: {"box"=>true}))
    MarginStyle.struct_class = Types::MarginStyle

    MariaDbParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    MariaDbParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    MariaDbParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    MariaDbParameters.struct_class = Types::MariaDbParameters

    MaximumLabelType.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    MaximumLabelType.struct_class = Types::MaximumLabelType

    MaximumMinimumComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    MaximumMinimumComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    MaximumMinimumComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    MaximumMinimumComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    MaximumMinimumComputation.add_member(:type, Shapes::ShapeRef.new(shape: MaximumMinimumComputationType, required: true, location_name: "Type"))
    MaximumMinimumComputation.struct_class = Types::MaximumMinimumComputation

    MeasureField.add_member(:numerical_measure_field, Shapes::ShapeRef.new(shape: NumericalMeasureField, location_name: "NumericalMeasureField"))
    MeasureField.add_member(:categorical_measure_field, Shapes::ShapeRef.new(shape: CategoricalMeasureField, location_name: "CategoricalMeasureField"))
    MeasureField.add_member(:date_measure_field, Shapes::ShapeRef.new(shape: DateMeasureField, location_name: "DateMeasureField"))
    MeasureField.add_member(:calculated_measure_field, Shapes::ShapeRef.new(shape: CalculatedMeasureField, location_name: "CalculatedMeasureField"))
    MeasureField.struct_class = Types::MeasureField

    MeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    MemberIdArnPair.add_member(:member_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "MemberId"))
    MemberIdArnPair.add_member(:member_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "MemberArn"))
    MemberIdArnPair.struct_class = Types::MemberIdArnPair

    MetricComparisonComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    MetricComparisonComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    MetricComparisonComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    MetricComparisonComputation.add_member(:from_value, Shapes::ShapeRef.new(shape: MeasureField, required: true, location_name: "FromValue"))
    MetricComparisonComputation.add_member(:target_value, Shapes::ShapeRef.new(shape: MeasureField, required: true, location_name: "TargetValue"))
    MetricComparisonComputation.struct_class = Types::MetricComparisonComputation

    MinimumLabelType.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    MinimumLabelType.struct_class = Types::MinimumLabelType

    MissingDataConfiguration.add_member(:treatment_option, Shapes::ShapeRef.new(shape: MissingDataTreatmentOption, location_name: "TreatmentOption"))
    MissingDataConfiguration.struct_class = Types::MissingDataConfiguration

    MissingDataConfigurationList.member = Shapes::ShapeRef.new(shape: MissingDataConfiguration)

    MySqlParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    MySqlParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    MySqlParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    MySqlParameters.struct_class = Types::MySqlParameters

    NamedEntityDefinition.add_member(:field_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "FieldName"))
    NamedEntityDefinition.add_member(:property_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "PropertyName"))
    NamedEntityDefinition.add_member(:property_role, Shapes::ShapeRef.new(shape: PropertyRole, location_name: "PropertyRole"))
    NamedEntityDefinition.add_member(:property_usage, Shapes::ShapeRef.new(shape: PropertyUsage, location_name: "PropertyUsage"))
    NamedEntityDefinition.add_member(:metric, Shapes::ShapeRef.new(shape: NamedEntityDefinitionMetric, location_name: "Metric"))
    NamedEntityDefinition.struct_class = Types::NamedEntityDefinition

    NamedEntityDefinitionMetric.add_member(:aggregation, Shapes::ShapeRef.new(shape: NamedEntityAggType, location_name: "Aggregation"))
    NamedEntityDefinitionMetric.add_member(:aggregation_function_parameters, Shapes::ShapeRef.new(shape: AggregationFunctionParameters, location_name: "AggregationFunctionParameters"))
    NamedEntityDefinitionMetric.struct_class = Types::NamedEntityDefinitionMetric

    NamedEntityDefinitions.member = Shapes::ShapeRef.new(shape: NamedEntityDefinition)

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

    NegativeFormat.add_member(:prefix, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Prefix"))
    NegativeFormat.add_member(:suffix, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Suffix"))
    NegativeFormat.struct_class = Types::NegativeFormat

    NegativeValueConfiguration.add_member(:display_mode, Shapes::ShapeRef.new(shape: NegativeValueDisplayMode, required: true, location_name: "DisplayMode"))
    NegativeValueConfiguration.struct_class = Types::NegativeValueConfiguration

    NetworkInterface.add_member(:subnet_id, Shapes::ShapeRef.new(shape: SubnetId, location_name: "SubnetId"))
    NetworkInterface.add_member(:availability_zone, Shapes::ShapeRef.new(shape: String, location_name: "AvailabilityZone"))
    NetworkInterface.add_member(:error_message, Shapes::ShapeRef.new(shape: String, location_name: "ErrorMessage"))
    NetworkInterface.add_member(:status, Shapes::ShapeRef.new(shape: NetworkInterfaceStatus, location_name: "Status"))
    NetworkInterface.add_member(:network_interface_id, Shapes::ShapeRef.new(shape: NetworkInterfaceId, location_name: "NetworkInterfaceId"))
    NetworkInterface.struct_class = Types::NetworkInterface

    NetworkInterfaceList.member = Shapes::ShapeRef.new(shape: NetworkInterface)

    NewDefaultValues.add_member(:string_static_values, Shapes::ShapeRef.new(shape: StringDatasetParameterValueList, location_name: "StringStaticValues"))
    NewDefaultValues.add_member(:decimal_static_values, Shapes::ShapeRef.new(shape: DecimalDatasetParameterValueList, location_name: "DecimalStaticValues"))
    NewDefaultValues.add_member(:date_time_static_values, Shapes::ShapeRef.new(shape: DateTimeDatasetParameterValueList, location_name: "DateTimeStaticValues"))
    NewDefaultValues.add_member(:integer_static_values, Shapes::ShapeRef.new(shape: IntegerDatasetParameterValueList, location_name: "IntegerStaticValues"))
    NewDefaultValues.struct_class = Types::NewDefaultValues

    NullValueFormatConfiguration.add_member(:null_string, Shapes::ShapeRef.new(shape: NullString, required: true, location_name: "NullString"))
    NullValueFormatConfiguration.struct_class = Types::NullValueFormatConfiguration

    NumberDisplayFormatConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    NumberDisplayFormatConfiguration.add_member(:suffix, Shapes::ShapeRef.new(shape: Suffix, location_name: "Suffix"))
    NumberDisplayFormatConfiguration.add_member(:separator_configuration, Shapes::ShapeRef.new(shape: NumericSeparatorConfiguration, location_name: "SeparatorConfiguration"))
    NumberDisplayFormatConfiguration.add_member(:decimal_places_configuration, Shapes::ShapeRef.new(shape: DecimalPlacesConfiguration, location_name: "DecimalPlacesConfiguration"))
    NumberDisplayFormatConfiguration.add_member(:number_scale, Shapes::ShapeRef.new(shape: NumberScale, location_name: "NumberScale"))
    NumberDisplayFormatConfiguration.add_member(:negative_value_configuration, Shapes::ShapeRef.new(shape: NegativeValueConfiguration, location_name: "NegativeValueConfiguration"))
    NumberDisplayFormatConfiguration.add_member(:null_value_format_configuration, Shapes::ShapeRef.new(shape: NullValueFormatConfiguration, location_name: "NullValueFormatConfiguration"))
    NumberDisplayFormatConfiguration.struct_class = Types::NumberDisplayFormatConfiguration

    NumberFormatConfiguration.add_member(:format_configuration, Shapes::ShapeRef.new(shape: NumericFormatConfiguration, location_name: "FormatConfiguration"))
    NumberFormatConfiguration.struct_class = Types::NumberFormatConfiguration

    NumericAxisOptions.add_member(:scale, Shapes::ShapeRef.new(shape: AxisScale, location_name: "Scale"))
    NumericAxisOptions.add_member(:range, Shapes::ShapeRef.new(shape: AxisDisplayRange, location_name: "Range"))
    NumericAxisOptions.struct_class = Types::NumericAxisOptions

    NumericEqualityDrillDownFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    NumericEqualityDrillDownFilter.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    NumericEqualityDrillDownFilter.struct_class = Types::NumericEqualityDrillDownFilter

    NumericEqualityFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    NumericEqualityFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    NumericEqualityFilter.add_member(:value, Shapes::ShapeRef.new(shape: Double, location_name: "Value", metadata: {"box"=>true}))
    NumericEqualityFilter.add_member(:select_all_options, Shapes::ShapeRef.new(shape: NumericFilterSelectAllOptions, location_name: "SelectAllOptions"))
    NumericEqualityFilter.add_member(:match_operator, Shapes::ShapeRef.new(shape: NumericEqualityMatchOperator, required: true, location_name: "MatchOperator"))
    NumericEqualityFilter.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: AggregationFunction, location_name: "AggregationFunction"))
    NumericEqualityFilter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    NumericEqualityFilter.add_member(:null_option, Shapes::ShapeRef.new(shape: FilterNullOption, required: true, location_name: "NullOption"))
    NumericEqualityFilter.struct_class = Types::NumericEqualityFilter

    NumericFormatConfiguration.add_member(:number_display_format_configuration, Shapes::ShapeRef.new(shape: NumberDisplayFormatConfiguration, location_name: "NumberDisplayFormatConfiguration"))
    NumericFormatConfiguration.add_member(:currency_display_format_configuration, Shapes::ShapeRef.new(shape: CurrencyDisplayFormatConfiguration, location_name: "CurrencyDisplayFormatConfiguration"))
    NumericFormatConfiguration.add_member(:percentage_display_format_configuration, Shapes::ShapeRef.new(shape: PercentageDisplayFormatConfiguration, location_name: "PercentageDisplayFormatConfiguration"))
    NumericFormatConfiguration.struct_class = Types::NumericFormatConfiguration

    NumericRangeFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    NumericRangeFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    NumericRangeFilter.add_member(:include_minimum, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeMinimum", metadata: {"box"=>true}))
    NumericRangeFilter.add_member(:include_maximum, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeMaximum", metadata: {"box"=>true}))
    NumericRangeFilter.add_member(:range_minimum, Shapes::ShapeRef.new(shape: NumericRangeFilterValue, location_name: "RangeMinimum", metadata: {"box"=>true}))
    NumericRangeFilter.add_member(:range_maximum, Shapes::ShapeRef.new(shape: NumericRangeFilterValue, location_name: "RangeMaximum", metadata: {"box"=>true}))
    NumericRangeFilter.add_member(:select_all_options, Shapes::ShapeRef.new(shape: NumericFilterSelectAllOptions, location_name: "SelectAllOptions"))
    NumericRangeFilter.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: AggregationFunction, location_name: "AggregationFunction"))
    NumericRangeFilter.add_member(:null_option, Shapes::ShapeRef.new(shape: FilterNullOption, required: true, location_name: "NullOption"))
    NumericRangeFilter.struct_class = Types::NumericRangeFilter

    NumericRangeFilterValue.add_member(:static_value, Shapes::ShapeRef.new(shape: Double, location_name: "StaticValue", metadata: {"box"=>true}))
    NumericRangeFilterValue.add_member(:parameter, Shapes::ShapeRef.new(shape: ParameterName, location_name: "Parameter"))
    NumericRangeFilterValue.struct_class = Types::NumericRangeFilterValue

    NumericSeparatorConfiguration.add_member(:decimal_separator, Shapes::ShapeRef.new(shape: NumericSeparatorSymbol, location_name: "DecimalSeparator"))
    NumericSeparatorConfiguration.add_member(:thousands_separator, Shapes::ShapeRef.new(shape: ThousandSeparatorOptions, location_name: "ThousandsSeparator"))
    NumericSeparatorConfiguration.struct_class = Types::NumericSeparatorConfiguration

    NumericalAggregationFunction.add_member(:simple_numerical_aggregation, Shapes::ShapeRef.new(shape: SimpleNumericalAggregationFunction, location_name: "SimpleNumericalAggregation"))
    NumericalAggregationFunction.add_member(:percentile_aggregation, Shapes::ShapeRef.new(shape: PercentileAggregation, location_name: "PercentileAggregation"))
    NumericalAggregationFunction.struct_class = Types::NumericalAggregationFunction

    NumericalDimensionField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    NumericalDimensionField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    NumericalDimensionField.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: HierarchyId, location_name: "HierarchyId"))
    NumericalDimensionField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: NumberFormatConfiguration, location_name: "FormatConfiguration"))
    NumericalDimensionField.struct_class = Types::NumericalDimensionField

    NumericalMeasureField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    NumericalMeasureField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    NumericalMeasureField.add_member(:aggregation_function, Shapes::ShapeRef.new(shape: NumericalAggregationFunction, location_name: "AggregationFunction"))
    NumericalMeasureField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: NumberFormatConfiguration, location_name: "FormatConfiguration"))
    NumericalMeasureField.struct_class = Types::NumericalMeasureField

    OracleParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    OracleParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    OracleParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    OracleParameters.struct_class = Types::OracleParameters

    OutputColumn.add_member(:name, Shapes::ShapeRef.new(shape: ColumnName, location_name: "Name"))
    OutputColumn.add_member(:description, Shapes::ShapeRef.new(shape: ColumnDescriptiveText, location_name: "Description"))
    OutputColumn.add_member(:type, Shapes::ShapeRef.new(shape: ColumnDataType, location_name: "Type"))
    OutputColumn.struct_class = Types::OutputColumn

    OutputColumnList.member = Shapes::ShapeRef.new(shape: OutputColumn)

    OverrideDatasetParameterOperation.add_member(:parameter_name, Shapes::ShapeRef.new(shape: DatasetParameterName, required: true, location_name: "ParameterName"))
    OverrideDatasetParameterOperation.add_member(:new_parameter_name, Shapes::ShapeRef.new(shape: DatasetParameterName, location_name: "NewParameterName"))
    OverrideDatasetParameterOperation.add_member(:new_default_values, Shapes::ShapeRef.new(shape: NewDefaultValues, location_name: "NewDefaultValues"))
    OverrideDatasetParameterOperation.struct_class = Types::OverrideDatasetParameterOperation

    PaginationConfiguration.add_member(:page_size, Shapes::ShapeRef.new(shape: Long, required: true, location_name: "PageSize", metadata: {"box"=>true}))
    PaginationConfiguration.add_member(:page_number, Shapes::ShapeRef.new(shape: PageNumber, required: true, location_name: "PageNumber"))
    PaginationConfiguration.struct_class = Types::PaginationConfiguration

    PanelConfiguration.add_member(:title, Shapes::ShapeRef.new(shape: PanelTitleOptions, location_name: "Title"))
    PanelConfiguration.add_member(:border_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "BorderVisibility"))
    PanelConfiguration.add_member(:border_thickness, Shapes::ShapeRef.new(shape: PixelLength, location_name: "BorderThickness"))
    PanelConfiguration.add_member(:border_style, Shapes::ShapeRef.new(shape: PanelBorderStyle, location_name: "BorderStyle"))
    PanelConfiguration.add_member(:border_color, Shapes::ShapeRef.new(shape: HexColorWithTransparency, location_name: "BorderColor"))
    PanelConfiguration.add_member(:gutter_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "GutterVisibility"))
    PanelConfiguration.add_member(:gutter_spacing, Shapes::ShapeRef.new(shape: PixelLength, location_name: "GutterSpacing"))
    PanelConfiguration.add_member(:background_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "BackgroundVisibility"))
    PanelConfiguration.add_member(:background_color, Shapes::ShapeRef.new(shape: HexColorWithTransparency, location_name: "BackgroundColor"))
    PanelConfiguration.struct_class = Types::PanelConfiguration

    PanelTitleOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    PanelTitleOptions.add_member(:font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "FontConfiguration"))
    PanelTitleOptions.add_member(:horizontal_text_alignment, Shapes::ShapeRef.new(shape: HorizontalTextAlignment, location_name: "HorizontalTextAlignment"))
    PanelTitleOptions.struct_class = Types::PanelTitleOptions

    ParameterControl.add_member(:date_time_picker, Shapes::ShapeRef.new(shape: ParameterDateTimePickerControl, location_name: "DateTimePicker"))
    ParameterControl.add_member(:list, Shapes::ShapeRef.new(shape: ParameterListControl, location_name: "List"))
    ParameterControl.add_member(:dropdown, Shapes::ShapeRef.new(shape: ParameterDropDownControl, location_name: "Dropdown"))
    ParameterControl.add_member(:text_field, Shapes::ShapeRef.new(shape: ParameterTextFieldControl, location_name: "TextField"))
    ParameterControl.add_member(:text_area, Shapes::ShapeRef.new(shape: ParameterTextAreaControl, location_name: "TextArea"))
    ParameterControl.add_member(:slider, Shapes::ShapeRef.new(shape: ParameterSliderControl, location_name: "Slider"))
    ParameterControl.struct_class = Types::ParameterControl

    ParameterControlList.member = Shapes::ShapeRef.new(shape: ParameterControl)

    ParameterDateTimePickerControl.add_member(:parameter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ParameterControlId"))
    ParameterDateTimePickerControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    ParameterDateTimePickerControl.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "SourceParameterName"))
    ParameterDateTimePickerControl.add_member(:display_options, Shapes::ShapeRef.new(shape: DateTimePickerControlDisplayOptions, location_name: "DisplayOptions"))
    ParameterDateTimePickerControl.struct_class = Types::ParameterDateTimePickerControl

    ParameterDeclaration.add_member(:string_parameter_declaration, Shapes::ShapeRef.new(shape: StringParameterDeclaration, location_name: "StringParameterDeclaration"))
    ParameterDeclaration.add_member(:decimal_parameter_declaration, Shapes::ShapeRef.new(shape: DecimalParameterDeclaration, location_name: "DecimalParameterDeclaration"))
    ParameterDeclaration.add_member(:integer_parameter_declaration, Shapes::ShapeRef.new(shape: IntegerParameterDeclaration, location_name: "IntegerParameterDeclaration"))
    ParameterDeclaration.add_member(:date_time_parameter_declaration, Shapes::ShapeRef.new(shape: DateTimeParameterDeclaration, location_name: "DateTimeParameterDeclaration"))
    ParameterDeclaration.struct_class = Types::ParameterDeclaration

    ParameterDeclarationList.member = Shapes::ShapeRef.new(shape: ParameterDeclaration)

    ParameterDropDownControl.add_member(:parameter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ParameterControlId"))
    ParameterDropDownControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    ParameterDropDownControl.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "SourceParameterName"))
    ParameterDropDownControl.add_member(:display_options, Shapes::ShapeRef.new(shape: DropDownControlDisplayOptions, location_name: "DisplayOptions"))
    ParameterDropDownControl.add_member(:type, Shapes::ShapeRef.new(shape: SheetControlListType, location_name: "Type"))
    ParameterDropDownControl.add_member(:selectable_values, Shapes::ShapeRef.new(shape: ParameterSelectableValues, location_name: "SelectableValues"))
    ParameterDropDownControl.add_member(:cascading_control_configuration, Shapes::ShapeRef.new(shape: CascadingControlConfiguration, location_name: "CascadingControlConfiguration"))
    ParameterDropDownControl.struct_class = Types::ParameterDropDownControl

    ParameterListControl.add_member(:parameter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ParameterControlId"))
    ParameterListControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    ParameterListControl.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "SourceParameterName"))
    ParameterListControl.add_member(:display_options, Shapes::ShapeRef.new(shape: ListControlDisplayOptions, location_name: "DisplayOptions"))
    ParameterListControl.add_member(:type, Shapes::ShapeRef.new(shape: SheetControlListType, location_name: "Type"))
    ParameterListControl.add_member(:selectable_values, Shapes::ShapeRef.new(shape: ParameterSelectableValues, location_name: "SelectableValues"))
    ParameterListControl.add_member(:cascading_control_configuration, Shapes::ShapeRef.new(shape: CascadingControlConfiguration, location_name: "CascadingControlConfiguration"))
    ParameterListControl.struct_class = Types::ParameterListControl

    ParameterSelectableValueList.member = Shapes::ShapeRef.new(shape: String)

    ParameterSelectableValues.add_member(:values, Shapes::ShapeRef.new(shape: ParameterSelectableValueList, location_name: "Values"))
    ParameterSelectableValues.add_member(:link_to_data_set_column, Shapes::ShapeRef.new(shape: ColumnIdentifier, location_name: "LinkToDataSetColumn"))
    ParameterSelectableValues.struct_class = Types::ParameterSelectableValues

    ParameterSliderControl.add_member(:parameter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ParameterControlId"))
    ParameterSliderControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    ParameterSliderControl.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "SourceParameterName"))
    ParameterSliderControl.add_member(:display_options, Shapes::ShapeRef.new(shape: SliderControlDisplayOptions, location_name: "DisplayOptions"))
    ParameterSliderControl.add_member(:maximum_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "MaximumValue"))
    ParameterSliderControl.add_member(:minimum_value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "MinimumValue"))
    ParameterSliderControl.add_member(:step_size, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "StepSize"))
    ParameterSliderControl.struct_class = Types::ParameterSliderControl

    ParameterTextAreaControl.add_member(:parameter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ParameterControlId"))
    ParameterTextAreaControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    ParameterTextAreaControl.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "SourceParameterName"))
    ParameterTextAreaControl.add_member(:delimiter, Shapes::ShapeRef.new(shape: TextAreaControlDelimiter, location_name: "Delimiter"))
    ParameterTextAreaControl.add_member(:display_options, Shapes::ShapeRef.new(shape: TextAreaControlDisplayOptions, location_name: "DisplayOptions"))
    ParameterTextAreaControl.struct_class = Types::ParameterTextAreaControl

    ParameterTextFieldControl.add_member(:parameter_control_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ParameterControlId"))
    ParameterTextFieldControl.add_member(:title, Shapes::ShapeRef.new(shape: SheetControlTitle, required: true, location_name: "Title"))
    ParameterTextFieldControl.add_member(:source_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "SourceParameterName"))
    ParameterTextFieldControl.add_member(:display_options, Shapes::ShapeRef.new(shape: TextFieldControlDisplayOptions, location_name: "DisplayOptions"))
    ParameterTextFieldControl.struct_class = Types::ParameterTextFieldControl

    Parameters.add_member(:string_parameters, Shapes::ShapeRef.new(shape: StringParameterList, location_name: "StringParameters"))
    Parameters.add_member(:integer_parameters, Shapes::ShapeRef.new(shape: IntegerParameterList, location_name: "IntegerParameters"))
    Parameters.add_member(:decimal_parameters, Shapes::ShapeRef.new(shape: DecimalParameterList, location_name: "DecimalParameters"))
    Parameters.add_member(:date_time_parameters, Shapes::ShapeRef.new(shape: DateTimeParameterList, location_name: "DateTimeParameters"))
    Parameters.struct_class = Types::Parameters

    Path.member = Shapes::ShapeRef.new(shape: Arn)

    PercentVisibleRange.add_member(:from, Shapes::ShapeRef.new(shape: PercentNumber, location_name: "From", metadata: {"box"=>true}))
    PercentVisibleRange.add_member(:to, Shapes::ShapeRef.new(shape: PercentNumber, location_name: "To", metadata: {"box"=>true}))
    PercentVisibleRange.struct_class = Types::PercentVisibleRange

    PercentageDisplayFormatConfiguration.add_member(:prefix, Shapes::ShapeRef.new(shape: Prefix, location_name: "Prefix"))
    PercentageDisplayFormatConfiguration.add_member(:suffix, Shapes::ShapeRef.new(shape: Suffix, location_name: "Suffix"))
    PercentageDisplayFormatConfiguration.add_member(:separator_configuration, Shapes::ShapeRef.new(shape: NumericSeparatorConfiguration, location_name: "SeparatorConfiguration"))
    PercentageDisplayFormatConfiguration.add_member(:decimal_places_configuration, Shapes::ShapeRef.new(shape: DecimalPlacesConfiguration, location_name: "DecimalPlacesConfiguration"))
    PercentageDisplayFormatConfiguration.add_member(:negative_value_configuration, Shapes::ShapeRef.new(shape: NegativeValueConfiguration, location_name: "NegativeValueConfiguration"))
    PercentageDisplayFormatConfiguration.add_member(:null_value_format_configuration, Shapes::ShapeRef.new(shape: NullValueFormatConfiguration, location_name: "NullValueFormatConfiguration"))
    PercentageDisplayFormatConfiguration.struct_class = Types::PercentageDisplayFormatConfiguration

    PercentileAggregation.add_member(:percentile_value, Shapes::ShapeRef.new(shape: PercentileValue, location_name: "PercentileValue"))
    PercentileAggregation.struct_class = Types::PercentileAggregation

    PeriodOverPeriodComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    PeriodOverPeriodComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    PeriodOverPeriodComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    PeriodOverPeriodComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    PeriodOverPeriodComputation.struct_class = Types::PeriodOverPeriodComputation

    PeriodToDateComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    PeriodToDateComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    PeriodToDateComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    PeriodToDateComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    PeriodToDateComputation.add_member(:period_time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "PeriodTimeGranularity"))
    PeriodToDateComputation.struct_class = Types::PeriodToDateComputation

    PhysicalTable.add_member(:relational_table, Shapes::ShapeRef.new(shape: RelationalTable, location_name: "RelationalTable"))
    PhysicalTable.add_member(:custom_sql, Shapes::ShapeRef.new(shape: CustomSql, location_name: "CustomSql"))
    PhysicalTable.add_member(:s3_source, Shapes::ShapeRef.new(shape: S3Source, location_name: "S3Source"))
    PhysicalTable.struct_class = Types::PhysicalTable

    PhysicalTableMap.key = Shapes::ShapeRef.new(shape: PhysicalTableId)
    PhysicalTableMap.value = Shapes::ShapeRef.new(shape: PhysicalTable)

    PieChartAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Category"))
    PieChartAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    PieChartAggregatedFieldWells.add_member(:small_multiples, Shapes::ShapeRef.new(shape: SmallMultiplesDimensionFieldList, location_name: "SmallMultiples"))
    PieChartAggregatedFieldWells.struct_class = Types::PieChartAggregatedFieldWells

    PieChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: PieChartFieldWells, location_name: "FieldWells"))
    PieChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: PieChartSortConfiguration, location_name: "SortConfiguration"))
    PieChartConfiguration.add_member(:donut_options, Shapes::ShapeRef.new(shape: DonutOptions, location_name: "DonutOptions"))
    PieChartConfiguration.add_member(:small_multiples_options, Shapes::ShapeRef.new(shape: SmallMultiplesOptions, location_name: "SmallMultiplesOptions"))
    PieChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    PieChartConfiguration.add_member(:value_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ValueLabelOptions"))
    PieChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    PieChartConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    PieChartConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    PieChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    PieChartConfiguration.add_member(:contribution_analysis_defaults, Shapes::ShapeRef.new(shape: ContributionAnalysisDefaultList, location_name: "ContributionAnalysisDefaults"))
    PieChartConfiguration.struct_class = Types::PieChartConfiguration

    PieChartFieldWells.add_member(:pie_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: PieChartAggregatedFieldWells, location_name: "PieChartAggregatedFieldWells"))
    PieChartFieldWells.struct_class = Types::PieChartFieldWells

    PieChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    PieChartSortConfiguration.add_member(:category_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimit"))
    PieChartSortConfiguration.add_member(:small_multiples_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "SmallMultiplesSort"))
    PieChartSortConfiguration.add_member(:small_multiples_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "SmallMultiplesLimitConfiguration"))
    PieChartSortConfiguration.struct_class = Types::PieChartSortConfiguration

    PieChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    PieChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    PieChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    PieChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: PieChartConfiguration, location_name: "ChartConfiguration"))
    PieChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    PieChartVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    PieChartVisual.struct_class = Types::PieChartVisual

    PivotFieldSortOptions.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    PivotFieldSortOptions.add_member(:sort_by, Shapes::ShapeRef.new(shape: PivotTableSortBy, required: true, location_name: "SortBy"))
    PivotFieldSortOptions.struct_class = Types::PivotFieldSortOptions

    PivotFieldSortOptionsList.member = Shapes::ShapeRef.new(shape: PivotFieldSortOptions)

    PivotMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    PivotTableAggregatedFieldWells.add_member(:rows, Shapes::ShapeRef.new(shape: PivotTableDimensionList, location_name: "Rows"))
    PivotTableAggregatedFieldWells.add_member(:columns, Shapes::ShapeRef.new(shape: PivotTableDimensionList, location_name: "Columns"))
    PivotTableAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: PivotMeasureFieldList, location_name: "Values"))
    PivotTableAggregatedFieldWells.struct_class = Types::PivotTableAggregatedFieldWells

    PivotTableCellConditionalFormatting.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    PivotTableCellConditionalFormatting.add_member(:text_format, Shapes::ShapeRef.new(shape: TextConditionalFormat, location_name: "TextFormat"))
    PivotTableCellConditionalFormatting.add_member(:scope, Shapes::ShapeRef.new(shape: PivotTableConditionalFormattingScope, location_name: "Scope"))
    PivotTableCellConditionalFormatting.add_member(:scopes, Shapes::ShapeRef.new(shape: PivotTableConditionalFormattingScopeList, location_name: "Scopes"))
    PivotTableCellConditionalFormatting.struct_class = Types::PivotTableCellConditionalFormatting

    PivotTableConditionalFormatting.add_member(:conditional_formatting_options, Shapes::ShapeRef.new(shape: PivotTableConditionalFormattingOptionList, location_name: "ConditionalFormattingOptions"))
    PivotTableConditionalFormatting.struct_class = Types::PivotTableConditionalFormatting

    PivotTableConditionalFormattingOption.add_member(:cell, Shapes::ShapeRef.new(shape: PivotTableCellConditionalFormatting, location_name: "Cell"))
    PivotTableConditionalFormattingOption.struct_class = Types::PivotTableConditionalFormattingOption

    PivotTableConditionalFormattingOptionList.member = Shapes::ShapeRef.new(shape: PivotTableConditionalFormattingOption)

    PivotTableConditionalFormattingScope.add_member(:role, Shapes::ShapeRef.new(shape: PivotTableConditionalFormattingScopeRole, location_name: "Role"))
    PivotTableConditionalFormattingScope.struct_class = Types::PivotTableConditionalFormattingScope

    PivotTableConditionalFormattingScopeList.member = Shapes::ShapeRef.new(shape: PivotTableConditionalFormattingScope)

    PivotTableConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: PivotTableFieldWells, location_name: "FieldWells"))
    PivotTableConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: PivotTableSortConfiguration, location_name: "SortConfiguration"))
    PivotTableConfiguration.add_member(:table_options, Shapes::ShapeRef.new(shape: PivotTableOptions, location_name: "TableOptions"))
    PivotTableConfiguration.add_member(:total_options, Shapes::ShapeRef.new(shape: PivotTableTotalOptions, location_name: "TotalOptions"))
    PivotTableConfiguration.add_member(:field_options, Shapes::ShapeRef.new(shape: PivotTableFieldOptions, location_name: "FieldOptions"))
    PivotTableConfiguration.add_member(:paginated_report_options, Shapes::ShapeRef.new(shape: PivotTablePaginatedReportOptions, location_name: "PaginatedReportOptions"))
    PivotTableConfiguration.struct_class = Types::PivotTableConfiguration

    PivotTableDataPathOption.add_member(:data_path_list, Shapes::ShapeRef.new(shape: DataPathValueList, required: true, location_name: "DataPathList"))
    PivotTableDataPathOption.add_member(:width, Shapes::ShapeRef.new(shape: PixelLength, location_name: "Width"))
    PivotTableDataPathOption.struct_class = Types::PivotTableDataPathOption

    PivotTableDataPathOptionList.member = Shapes::ShapeRef.new(shape: PivotTableDataPathOption)

    PivotTableDimensionList.member = Shapes::ShapeRef.new(shape: DimensionField)

    PivotTableFieldCollapseStateOption.add_member(:target, Shapes::ShapeRef.new(shape: PivotTableFieldCollapseStateTarget, required: true, location_name: "Target"))
    PivotTableFieldCollapseStateOption.add_member(:state, Shapes::ShapeRef.new(shape: PivotTableFieldCollapseState, location_name: "State"))
    PivotTableFieldCollapseStateOption.struct_class = Types::PivotTableFieldCollapseStateOption

    PivotTableFieldCollapseStateOptionList.member = Shapes::ShapeRef.new(shape: PivotTableFieldCollapseStateOption)

    PivotTableFieldCollapseStateTarget.add_member(:field_id, Shapes::ShapeRef.new(shape: String, location_name: "FieldId"))
    PivotTableFieldCollapseStateTarget.add_member(:field_data_path_values, Shapes::ShapeRef.new(shape: DataPathValueList, location_name: "FieldDataPathValues"))
    PivotTableFieldCollapseStateTarget.struct_class = Types::PivotTableFieldCollapseStateTarget

    PivotTableFieldOption.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    PivotTableFieldOption.add_member(:custom_label, Shapes::ShapeRef.new(shape: CustomLabel, location_name: "CustomLabel"))
    PivotTableFieldOption.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    PivotTableFieldOption.struct_class = Types::PivotTableFieldOption

    PivotTableFieldOptionList.member = Shapes::ShapeRef.new(shape: PivotTableFieldOption)

    PivotTableFieldOptions.add_member(:selected_field_options, Shapes::ShapeRef.new(shape: PivotTableFieldOptionList, location_name: "SelectedFieldOptions"))
    PivotTableFieldOptions.add_member(:data_path_options, Shapes::ShapeRef.new(shape: PivotTableDataPathOptionList, location_name: "DataPathOptions"))
    PivotTableFieldOptions.add_member(:collapse_state_options, Shapes::ShapeRef.new(shape: PivotTableFieldCollapseStateOptionList, location_name: "CollapseStateOptions"))
    PivotTableFieldOptions.struct_class = Types::PivotTableFieldOptions

    PivotTableFieldSubtotalOptions.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, location_name: "FieldId"))
    PivotTableFieldSubtotalOptions.struct_class = Types::PivotTableFieldSubtotalOptions

    PivotTableFieldSubtotalOptionsList.member = Shapes::ShapeRef.new(shape: PivotTableFieldSubtotalOptions)

    PivotTableFieldWells.add_member(:pivot_table_aggregated_field_wells, Shapes::ShapeRef.new(shape: PivotTableAggregatedFieldWells, location_name: "PivotTableAggregatedFieldWells"))
    PivotTableFieldWells.struct_class = Types::PivotTableFieldWells

    PivotTableOptions.add_member(:metric_placement, Shapes::ShapeRef.new(shape: PivotTableMetricPlacement, location_name: "MetricPlacement"))
    PivotTableOptions.add_member(:single_metric_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "SingleMetricVisibility"))
    PivotTableOptions.add_member(:column_names_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "ColumnNamesVisibility"))
    PivotTableOptions.add_member(:toggle_buttons_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "ToggleButtonsVisibility"))
    PivotTableOptions.add_member(:column_header_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "ColumnHeaderStyle"))
    PivotTableOptions.add_member(:row_header_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "RowHeaderStyle"))
    PivotTableOptions.add_member(:cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "CellStyle"))
    PivotTableOptions.add_member(:row_field_names_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "RowFieldNamesStyle"))
    PivotTableOptions.add_member(:row_alternate_color_options, Shapes::ShapeRef.new(shape: RowAlternateColorOptions, location_name: "RowAlternateColorOptions"))
    PivotTableOptions.add_member(:collapsed_row_dimensions_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "CollapsedRowDimensionsVisibility"))
    PivotTableOptions.struct_class = Types::PivotTableOptions

    PivotTablePaginatedReportOptions.add_member(:vertical_overflow_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "VerticalOverflowVisibility"))
    PivotTablePaginatedReportOptions.add_member(:overflow_column_header_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "OverflowColumnHeaderVisibility"))
    PivotTablePaginatedReportOptions.struct_class = Types::PivotTablePaginatedReportOptions

    PivotTableSortBy.add_member(:field, Shapes::ShapeRef.new(shape: FieldSort, location_name: "Field"))
    PivotTableSortBy.add_member(:column, Shapes::ShapeRef.new(shape: ColumnSort, location_name: "Column"))
    PivotTableSortBy.add_member(:data_path, Shapes::ShapeRef.new(shape: DataPathSort, location_name: "DataPath"))
    PivotTableSortBy.struct_class = Types::PivotTableSortBy

    PivotTableSortConfiguration.add_member(:field_sort_options, Shapes::ShapeRef.new(shape: PivotFieldSortOptionsList, location_name: "FieldSortOptions"))
    PivotTableSortConfiguration.struct_class = Types::PivotTableSortConfiguration

    PivotTableTotalOptions.add_member(:row_subtotal_options, Shapes::ShapeRef.new(shape: SubtotalOptions, location_name: "RowSubtotalOptions"))
    PivotTableTotalOptions.add_member(:column_subtotal_options, Shapes::ShapeRef.new(shape: SubtotalOptions, location_name: "ColumnSubtotalOptions"))
    PivotTableTotalOptions.add_member(:row_total_options, Shapes::ShapeRef.new(shape: PivotTotalOptions, location_name: "RowTotalOptions"))
    PivotTableTotalOptions.add_member(:column_total_options, Shapes::ShapeRef.new(shape: PivotTotalOptions, location_name: "ColumnTotalOptions"))
    PivotTableTotalOptions.struct_class = Types::PivotTableTotalOptions

    PivotTableVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    PivotTableVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    PivotTableVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    PivotTableVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: PivotTableConfiguration, location_name: "ChartConfiguration"))
    PivotTableVisual.add_member(:conditional_formatting, Shapes::ShapeRef.new(shape: PivotTableConditionalFormatting, location_name: "ConditionalFormatting"))
    PivotTableVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    PivotTableVisual.struct_class = Types::PivotTableVisual

    PivotTotalOptions.add_member(:totals_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "TotalsVisibility"))
    PivotTotalOptions.add_member(:placement, Shapes::ShapeRef.new(shape: TableTotalsPlacement, location_name: "Placement"))
    PivotTotalOptions.add_member(:scroll_status, Shapes::ShapeRef.new(shape: TableTotalsScrollStatus, location_name: "ScrollStatus"))
    PivotTotalOptions.add_member(:custom_label, Shapes::ShapeRef.new(shape: String, location_name: "CustomLabel"))
    PivotTotalOptions.add_member(:total_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "TotalCellStyle"))
    PivotTotalOptions.add_member(:value_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "ValueCellStyle"))
    PivotTotalOptions.add_member(:metric_header_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "MetricHeaderCellStyle"))
    PivotTotalOptions.struct_class = Types::PivotTotalOptions

    PostgreSqlParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    PostgreSqlParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    PostgreSqlParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    PostgreSqlParameters.struct_class = Types::PostgreSqlParameters

    PreconditionNotMetException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    PreconditionNotMetException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    PreconditionNotMetException.struct_class = Types::PreconditionNotMetException

    PredefinedHierarchy.add_member(:hierarchy_id, Shapes::ShapeRef.new(shape: HierarchyId, required: true, location_name: "HierarchyId"))
    PredefinedHierarchy.add_member(:columns, Shapes::ShapeRef.new(shape: PredefinedHierarchyColumnList, required: true, location_name: "Columns"))
    PredefinedHierarchy.add_member(:drill_down_filters, Shapes::ShapeRef.new(shape: DrillDownFilterList, location_name: "DrillDownFilters"))
    PredefinedHierarchy.struct_class = Types::PredefinedHierarchy

    PredefinedHierarchyColumnList.member = Shapes::ShapeRef.new(shape: ColumnIdentifier)

    PrestoParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    PrestoParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    PrestoParameters.add_member(:catalog, Shapes::ShapeRef.new(shape: Catalog, required: true, location_name: "Catalog"))
    PrestoParameters.struct_class = Types::PrestoParameters

    PrincipalList.member = Shapes::ShapeRef.new(shape: String)

    ProgressBarOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ProgressBarOptions.struct_class = Types::ProgressBarOptions

    ProjectOperation.add_member(:projected_columns, Shapes::ShapeRef.new(shape: ProjectedColumnList, required: true, location_name: "ProjectedColumns"))
    ProjectOperation.struct_class = Types::ProjectOperation

    ProjectedColumnList.member = Shapes::ShapeRef.new(shape: String)

    PutDataSetRefreshPropertiesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    PutDataSetRefreshPropertiesRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    PutDataSetRefreshPropertiesRequest.add_member(:data_set_refresh_properties, Shapes::ShapeRef.new(shape: DataSetRefreshProperties, required: true, location_name: "DataSetRefreshProperties"))
    PutDataSetRefreshPropertiesRequest.struct_class = Types::PutDataSetRefreshPropertiesRequest

    PutDataSetRefreshPropertiesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    PutDataSetRefreshPropertiesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    PutDataSetRefreshPropertiesResponse.struct_class = Types::PutDataSetRefreshPropertiesResponse

    QueueInfo.add_member(:waiting_on_ingestion, Shapes::ShapeRef.new(shape: String, required: true, location_name: "WaitingOnIngestion"))
    QueueInfo.add_member(:queued_ingestion, Shapes::ShapeRef.new(shape: String, required: true, location_name: "QueuedIngestion"))
    QueueInfo.struct_class = Types::QueueInfo

    QuickSightUserNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    QuickSightUserNotFoundException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    QuickSightUserNotFoundException.struct_class = Types::QuickSightUserNotFoundException

    RadarChartAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: RadarChartCategoryFieldList, location_name: "Category"))
    RadarChartAggregatedFieldWells.add_member(:color, Shapes::ShapeRef.new(shape: RadarChartColorFieldList, location_name: "Color"))
    RadarChartAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: RadarChartValuesFieldList, location_name: "Values"))
    RadarChartAggregatedFieldWells.struct_class = Types::RadarChartAggregatedFieldWells

    RadarChartAreaStyleSettings.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    RadarChartAreaStyleSettings.struct_class = Types::RadarChartAreaStyleSettings

    RadarChartCategoryFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    RadarChartColorFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    RadarChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: RadarChartFieldWells, location_name: "FieldWells"))
    RadarChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: RadarChartSortConfiguration, location_name: "SortConfiguration"))
    RadarChartConfiguration.add_member(:shape, Shapes::ShapeRef.new(shape: RadarChartShape, location_name: "Shape"))
    RadarChartConfiguration.add_member(:base_series_settings, Shapes::ShapeRef.new(shape: RadarChartSeriesSettings, location_name: "BaseSeriesSettings"))
    RadarChartConfiguration.add_member(:start_angle, Shapes::ShapeRef.new(shape: RadarChartStartAngle, location_name: "StartAngle"))
    RadarChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    RadarChartConfiguration.add_member(:alternate_band_colors_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "AlternateBandColorsVisibility"))
    RadarChartConfiguration.add_member(:alternate_band_even_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "AlternateBandEvenColor"))
    RadarChartConfiguration.add_member(:alternate_band_odd_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "AlternateBandOddColor"))
    RadarChartConfiguration.add_member(:category_axis, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "CategoryAxis"))
    RadarChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    RadarChartConfiguration.add_member(:color_axis, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "ColorAxis"))
    RadarChartConfiguration.add_member(:color_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ColorLabelOptions"))
    RadarChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    RadarChartConfiguration.add_member(:axes_range_scale, Shapes::ShapeRef.new(shape: RadarChartAxesRangeScale, location_name: "AxesRangeScale"))
    RadarChartConfiguration.struct_class = Types::RadarChartConfiguration

    RadarChartFieldWells.add_member(:radar_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: RadarChartAggregatedFieldWells, location_name: "RadarChartAggregatedFieldWells"))
    RadarChartFieldWells.struct_class = Types::RadarChartFieldWells

    RadarChartSeriesSettings.add_member(:area_style_settings, Shapes::ShapeRef.new(shape: RadarChartAreaStyleSettings, location_name: "AreaStyleSettings"))
    RadarChartSeriesSettings.struct_class = Types::RadarChartSeriesSettings

    RadarChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    RadarChartSortConfiguration.add_member(:category_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimit"))
    RadarChartSortConfiguration.add_member(:color_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "ColorSort"))
    RadarChartSortConfiguration.add_member(:color_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "ColorItemsLimit"))
    RadarChartSortConfiguration.struct_class = Types::RadarChartSortConfiguration

    RadarChartValuesFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    RadarChartVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    RadarChartVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    RadarChartVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    RadarChartVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: RadarChartConfiguration, location_name: "ChartConfiguration"))
    RadarChartVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    RadarChartVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    RadarChartVisual.struct_class = Types::RadarChartVisual

    RangeConstant.add_member(:minimum, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Minimum"))
    RangeConstant.add_member(:maximum, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Maximum"))
    RangeConstant.struct_class = Types::RangeConstant

    RangeEndsLabelType.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    RangeEndsLabelType.struct_class = Types::RangeEndsLabelType

    RdsParameters.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    RdsParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    RdsParameters.struct_class = Types::RdsParameters

    RedshiftParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, location_name: "Host"))
    RedshiftParameters.add_member(:port, Shapes::ShapeRef.new(shape: OptionalPort, location_name: "Port"))
    RedshiftParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    RedshiftParameters.add_member(:cluster_id, Shapes::ShapeRef.new(shape: ClusterId, location_name: "ClusterId"))
    RedshiftParameters.struct_class = Types::RedshiftParameters

    ReferenceLine.add_member(:status, Shapes::ShapeRef.new(shape: WidgetStatus, location_name: "Status"))
    ReferenceLine.add_member(:data_configuration, Shapes::ShapeRef.new(shape: ReferenceLineDataConfiguration, required: true, location_name: "DataConfiguration"))
    ReferenceLine.add_member(:style_configuration, Shapes::ShapeRef.new(shape: ReferenceLineStyleConfiguration, location_name: "StyleConfiguration"))
    ReferenceLine.add_member(:label_configuration, Shapes::ShapeRef.new(shape: ReferenceLineLabelConfiguration, location_name: "LabelConfiguration"))
    ReferenceLine.struct_class = Types::ReferenceLine

    ReferenceLineCustomLabelConfiguration.add_member(:custom_label, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "CustomLabel"))
    ReferenceLineCustomLabelConfiguration.struct_class = Types::ReferenceLineCustomLabelConfiguration

    ReferenceLineDataConfiguration.add_member(:static_configuration, Shapes::ShapeRef.new(shape: ReferenceLineStaticDataConfiguration, location_name: "StaticConfiguration"))
    ReferenceLineDataConfiguration.add_member(:dynamic_configuration, Shapes::ShapeRef.new(shape: ReferenceLineDynamicDataConfiguration, location_name: "DynamicConfiguration"))
    ReferenceLineDataConfiguration.add_member(:axis_binding, Shapes::ShapeRef.new(shape: AxisBinding, location_name: "AxisBinding"))
    ReferenceLineDataConfiguration.struct_class = Types::ReferenceLineDataConfiguration

    ReferenceLineDynamicDataConfiguration.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    ReferenceLineDynamicDataConfiguration.add_member(:measure_aggregation_function, Shapes::ShapeRef.new(shape: AggregationFunction, location_name: "MeasureAggregationFunction"))
    ReferenceLineDynamicDataConfiguration.add_member(:calculation, Shapes::ShapeRef.new(shape: NumericalAggregationFunction, required: true, location_name: "Calculation"))
    ReferenceLineDynamicDataConfiguration.struct_class = Types::ReferenceLineDynamicDataConfiguration

    ReferenceLineLabelConfiguration.add_member(:value_label_configuration, Shapes::ShapeRef.new(shape: ReferenceLineValueLabelConfiguration, location_name: "ValueLabelConfiguration"))
    ReferenceLineLabelConfiguration.add_member(:custom_label_configuration, Shapes::ShapeRef.new(shape: ReferenceLineCustomLabelConfiguration, location_name: "CustomLabelConfiguration"))
    ReferenceLineLabelConfiguration.add_member(:font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "FontConfiguration"))
    ReferenceLineLabelConfiguration.add_member(:font_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "FontColor"))
    ReferenceLineLabelConfiguration.add_member(:horizontal_position, Shapes::ShapeRef.new(shape: ReferenceLineLabelHorizontalPosition, location_name: "HorizontalPosition"))
    ReferenceLineLabelConfiguration.add_member(:vertical_position, Shapes::ShapeRef.new(shape: ReferenceLineLabelVerticalPosition, location_name: "VerticalPosition"))
    ReferenceLineLabelConfiguration.struct_class = Types::ReferenceLineLabelConfiguration

    ReferenceLineList.member = Shapes::ShapeRef.new(shape: ReferenceLine)

    ReferenceLineStaticDataConfiguration.add_member(:value, Shapes::ShapeRef.new(shape: SensitiveDouble, required: true, location_name: "Value"))
    ReferenceLineStaticDataConfiguration.struct_class = Types::ReferenceLineStaticDataConfiguration

    ReferenceLineStyleConfiguration.add_member(:pattern, Shapes::ShapeRef.new(shape: ReferenceLinePatternType, location_name: "Pattern"))
    ReferenceLineStyleConfiguration.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    ReferenceLineStyleConfiguration.struct_class = Types::ReferenceLineStyleConfiguration

    ReferenceLineValueLabelConfiguration.add_member(:relative_position, Shapes::ShapeRef.new(shape: ReferenceLineValueLabelRelativePosition, location_name: "RelativePosition"))
    ReferenceLineValueLabelConfiguration.add_member(:format_configuration, Shapes::ShapeRef.new(shape: NumericFormatConfiguration, location_name: "FormatConfiguration"))
    ReferenceLineValueLabelConfiguration.struct_class = Types::ReferenceLineValueLabelConfiguration

    RefreshConfiguration.add_member(:incremental_refresh, Shapes::ShapeRef.new(shape: IncrementalRefresh, required: true, location_name: "IncrementalRefresh"))
    RefreshConfiguration.struct_class = Types::RefreshConfiguration

    RefreshFrequency.add_member(:interval, Shapes::ShapeRef.new(shape: RefreshInterval, required: true, location_name: "Interval"))
    RefreshFrequency.add_member(:refresh_on_day, Shapes::ShapeRef.new(shape: ScheduleRefreshOnEntity, location_name: "RefreshOnDay"))
    RefreshFrequency.add_member(:timezone, Shapes::ShapeRef.new(shape: String, location_name: "Timezone"))
    RefreshFrequency.add_member(:time_of_the_day, Shapes::ShapeRef.new(shape: String, location_name: "TimeOfTheDay"))
    RefreshFrequency.struct_class = Types::RefreshFrequency

    RefreshSchedule.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ScheduleId"))
    RefreshSchedule.add_member(:schedule_frequency, Shapes::ShapeRef.new(shape: RefreshFrequency, required: true, location_name: "ScheduleFrequency"))
    RefreshSchedule.add_member(:start_after_date_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartAfterDateTime"))
    RefreshSchedule.add_member(:refresh_type, Shapes::ShapeRef.new(shape: IngestionType, required: true, location_name: "RefreshType"))
    RefreshSchedule.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    RefreshSchedule.struct_class = Types::RefreshSchedule

    RefreshSchedules.member = Shapes::ShapeRef.new(shape: RefreshSchedule)

    RegisterUserRequest.add_member(:identity_type, Shapes::ShapeRef.new(shape: IdentityType, required: true, location_name: "IdentityType"))
    RegisterUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Email"))
    RegisterUserRequest.add_member(:user_role, Shapes::ShapeRef.new(shape: UserRole, required: true, location_name: "UserRole"))
    RegisterUserRequest.add_member(:iam_arn, Shapes::ShapeRef.new(shape: String, location_name: "IamArn"))
    RegisterUserRequest.add_member(:session_name, Shapes::ShapeRef.new(shape: RoleSessionName, location_name: "SessionName"))
    RegisterUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    RegisterUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    RegisterUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, location_name: "UserName"))
    RegisterUserRequest.add_member(:custom_permissions_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "CustomPermissionsName"))
    RegisterUserRequest.add_member(:external_login_federation_provider_type, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginFederationProviderType"))
    RegisterUserRequest.add_member(:custom_federation_provider_url, Shapes::ShapeRef.new(shape: String, location_name: "CustomFederationProviderUrl"))
    RegisterUserRequest.add_member(:external_login_id, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginId"))
    RegisterUserRequest.struct_class = Types::RegisterUserRequest

    RegisterUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    RegisterUserResponse.add_member(:user_invitation_url, Shapes::ShapeRef.new(shape: String, location_name: "UserInvitationUrl"))
    RegisterUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    RegisterUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    RegisterUserResponse.struct_class = Types::RegisterUserResponse

    RegisteredUserConsoleFeatureConfigurations.add_member(:state_persistence, Shapes::ShapeRef.new(shape: StatePersistenceConfigurations, location_name: "StatePersistence"))
    RegisteredUserConsoleFeatureConfigurations.struct_class = Types::RegisteredUserConsoleFeatureConfigurations

    RegisteredUserDashboardEmbeddingConfiguration.add_member(:initial_dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "InitialDashboardId"))
    RegisteredUserDashboardEmbeddingConfiguration.add_member(:feature_configurations, Shapes::ShapeRef.new(shape: RegisteredUserDashboardFeatureConfigurations, location_name: "FeatureConfigurations"))
    RegisteredUserDashboardEmbeddingConfiguration.struct_class = Types::RegisteredUserDashboardEmbeddingConfiguration

    RegisteredUserDashboardFeatureConfigurations.add_member(:state_persistence, Shapes::ShapeRef.new(shape: StatePersistenceConfigurations, location_name: "StatePersistence"))
    RegisteredUserDashboardFeatureConfigurations.add_member(:bookmarks, Shapes::ShapeRef.new(shape: BookmarksConfigurations, location_name: "Bookmarks"))
    RegisteredUserDashboardFeatureConfigurations.struct_class = Types::RegisteredUserDashboardFeatureConfigurations

    RegisteredUserDashboardVisualEmbeddingConfiguration.add_member(:initial_dashboard_visual_id, Shapes::ShapeRef.new(shape: DashboardVisualId, required: true, location_name: "InitialDashboardVisualId"))
    RegisteredUserDashboardVisualEmbeddingConfiguration.struct_class = Types::RegisteredUserDashboardVisualEmbeddingConfiguration

    RegisteredUserEmbeddingExperienceConfiguration.add_member(:dashboard, Shapes::ShapeRef.new(shape: RegisteredUserDashboardEmbeddingConfiguration, location_name: "Dashboard"))
    RegisteredUserEmbeddingExperienceConfiguration.add_member(:quick_sight_console, Shapes::ShapeRef.new(shape: RegisteredUserQuickSightConsoleEmbeddingConfiguration, location_name: "QuickSightConsole"))
    RegisteredUserEmbeddingExperienceConfiguration.add_member(:q_search_bar, Shapes::ShapeRef.new(shape: RegisteredUserQSearchBarEmbeddingConfiguration, location_name: "QSearchBar"))
    RegisteredUserEmbeddingExperienceConfiguration.add_member(:dashboard_visual, Shapes::ShapeRef.new(shape: RegisteredUserDashboardVisualEmbeddingConfiguration, location_name: "DashboardVisual"))
    RegisteredUserEmbeddingExperienceConfiguration.struct_class = Types::RegisteredUserEmbeddingExperienceConfiguration

    RegisteredUserQSearchBarEmbeddingConfiguration.add_member(:initial_topic_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "InitialTopicId"))
    RegisteredUserQSearchBarEmbeddingConfiguration.struct_class = Types::RegisteredUserQSearchBarEmbeddingConfiguration

    RegisteredUserQuickSightConsoleEmbeddingConfiguration.add_member(:initial_path, Shapes::ShapeRef.new(shape: EntryPath, location_name: "InitialPath"))
    RegisteredUserQuickSightConsoleEmbeddingConfiguration.add_member(:feature_configurations, Shapes::ShapeRef.new(shape: RegisteredUserConsoleFeatureConfigurations, location_name: "FeatureConfigurations"))
    RegisteredUserQuickSightConsoleEmbeddingConfiguration.struct_class = Types::RegisteredUserQuickSightConsoleEmbeddingConfiguration

    RelationalTable.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSourceArn"))
    RelationalTable.add_member(:catalog, Shapes::ShapeRef.new(shape: RelationalTableCatalog, location_name: "Catalog"))
    RelationalTable.add_member(:schema, Shapes::ShapeRef.new(shape: RelationalTableSchema, location_name: "Schema"))
    RelationalTable.add_member(:name, Shapes::ShapeRef.new(shape: RelationalTableName, required: true, location_name: "Name"))
    RelationalTable.add_member(:input_columns, Shapes::ShapeRef.new(shape: InputColumnList, required: true, location_name: "InputColumns"))
    RelationalTable.struct_class = Types::RelationalTable

    RelativeDateTimeControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    RelativeDateTimeControlDisplayOptions.add_member(:date_time_format, Shapes::ShapeRef.new(shape: DateTimeFormat, location_name: "DateTimeFormat"))
    RelativeDateTimeControlDisplayOptions.struct_class = Types::RelativeDateTimeControlDisplayOptions

    RelativeDatesFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    RelativeDatesFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    RelativeDatesFilter.add_member(:anchor_date_configuration, Shapes::ShapeRef.new(shape: AnchorDateConfiguration, required: true, location_name: "AnchorDateConfiguration"))
    RelativeDatesFilter.add_member(:minimum_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "MinimumGranularity"))
    RelativeDatesFilter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, required: true, location_name: "TimeGranularity"))
    RelativeDatesFilter.add_member(:relative_date_type, Shapes::ShapeRef.new(shape: RelativeDateType, required: true, location_name: "RelativeDateType"))
    RelativeDatesFilter.add_member(:relative_date_value, Shapes::ShapeRef.new(shape: Integer, location_name: "RelativeDateValue", metadata: {"box"=>true}))
    RelativeDatesFilter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    RelativeDatesFilter.add_member(:null_option, Shapes::ShapeRef.new(shape: FilterNullOption, required: true, location_name: "NullOption"))
    RelativeDatesFilter.add_member(:exclude_period_configuration, Shapes::ShapeRef.new(shape: ExcludePeriodConfiguration, location_name: "ExcludePeriodConfiguration"))
    RelativeDatesFilter.struct_class = Types::RelativeDatesFilter

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
    RestoreAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    RestoreAnalysisRequest.struct_class = Types::RestoreAnalysisRequest

    RestoreAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    RestoreAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    RestoreAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    RestoreAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    RestoreAnalysisResponse.struct_class = Types::RestoreAnalysisResponse

    RollingDateConfiguration.add_member(:data_set_identifier, Shapes::ShapeRef.new(shape: DataSetIdentifier, location_name: "DataSetIdentifier"))
    RollingDateConfiguration.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    RollingDateConfiguration.struct_class = Types::RollingDateConfiguration

    RowAlternateColorList.member = Shapes::ShapeRef.new(shape: HexColor)

    RowAlternateColorOptions.add_member(:status, Shapes::ShapeRef.new(shape: WidgetStatus, location_name: "Status"))
    RowAlternateColorOptions.add_member(:row_alternate_colors, Shapes::ShapeRef.new(shape: RowAlternateColorList, location_name: "RowAlternateColors"))
    RowAlternateColorOptions.struct_class = Types::RowAlternateColorOptions

    RowInfo.add_member(:rows_ingested, Shapes::ShapeRef.new(shape: Long, location_name: "RowsIngested", metadata: {"box"=>true}))
    RowInfo.add_member(:rows_dropped, Shapes::ShapeRef.new(shape: Long, location_name: "RowsDropped", metadata: {"box"=>true}))
    RowInfo.add_member(:total_rows_in_dataset, Shapes::ShapeRef.new(shape: Long, location_name: "TotalRowsInDataset", metadata: {"box"=>true}))
    RowInfo.struct_class = Types::RowInfo

    RowLevelPermissionDataSet.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, location_name: "Namespace"))
    RowLevelPermissionDataSet.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "Arn"))
    RowLevelPermissionDataSet.add_member(:permission_policy, Shapes::ShapeRef.new(shape: RowLevelPermissionPolicy, required: true, location_name: "PermissionPolicy"))
    RowLevelPermissionDataSet.add_member(:format_version, Shapes::ShapeRef.new(shape: RowLevelPermissionFormatVersion, location_name: "FormatVersion"))
    RowLevelPermissionDataSet.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    RowLevelPermissionDataSet.struct_class = Types::RowLevelPermissionDataSet

    RowLevelPermissionTagConfiguration.add_member(:status, Shapes::ShapeRef.new(shape: Status, location_name: "Status"))
    RowLevelPermissionTagConfiguration.add_member(:tag_rules, Shapes::ShapeRef.new(shape: RowLevelPermissionTagRuleList, required: true, location_name: "TagRules"))
    RowLevelPermissionTagConfiguration.add_member(:tag_rule_configurations, Shapes::ShapeRef.new(shape: RowLevelPermissionTagRuleConfigurationList, location_name: "TagRuleConfigurations"))
    RowLevelPermissionTagConfiguration.struct_class = Types::RowLevelPermissionTagConfiguration

    RowLevelPermissionTagRule.add_member(:tag_key, Shapes::ShapeRef.new(shape: SessionTagKey, required: true, location_name: "TagKey"))
    RowLevelPermissionTagRule.add_member(:column_name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "ColumnName"))
    RowLevelPermissionTagRule.add_member(:tag_multi_value_delimiter, Shapes::ShapeRef.new(shape: RowLevelPermissionTagDelimiter, location_name: "TagMultiValueDelimiter"))
    RowLevelPermissionTagRule.add_member(:match_all_value, Shapes::ShapeRef.new(shape: SessionTagValue, location_name: "MatchAllValue"))
    RowLevelPermissionTagRule.struct_class = Types::RowLevelPermissionTagRule

    RowLevelPermissionTagRuleConfiguration.member = Shapes::ShapeRef.new(shape: SessionTagKey)

    RowLevelPermissionTagRuleConfigurationList.member = Shapes::ShapeRef.new(shape: RowLevelPermissionTagRuleConfiguration)

    RowLevelPermissionTagRuleList.member = Shapes::ShapeRef.new(shape: RowLevelPermissionTagRule)

    RowSortList.member = Shapes::ShapeRef.new(shape: FieldSortOptions)

    S3Parameters.add_member(:manifest_file_location, Shapes::ShapeRef.new(shape: ManifestFileLocation, required: true, location_name: "ManifestFileLocation"))
    S3Parameters.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, location_name: "RoleArn"))
    S3Parameters.struct_class = Types::S3Parameters

    S3Source.add_member(:data_source_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "DataSourceArn"))
    S3Source.add_member(:upload_settings, Shapes::ShapeRef.new(shape: UploadSettings, location_name: "UploadSettings"))
    S3Source.add_member(:input_columns, Shapes::ShapeRef.new(shape: InputColumnList, required: true, location_name: "InputColumns"))
    S3Source.struct_class = Types::S3Source

    SameSheetTargetVisualConfiguration.add_member(:target_visuals, Shapes::ShapeRef.new(shape: TargetVisualList, location_name: "TargetVisuals"))
    SameSheetTargetVisualConfiguration.add_member(:target_visual_options, Shapes::ShapeRef.new(shape: TargetVisualOptions, location_name: "TargetVisualOptions"))
    SameSheetTargetVisualConfiguration.struct_class = Types::SameSheetTargetVisualConfiguration

    SankeyDiagramAggregatedFieldWells.add_member(:source, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Source"))
    SankeyDiagramAggregatedFieldWells.add_member(:destination, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Destination"))
    SankeyDiagramAggregatedFieldWells.add_member(:weight, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Weight"))
    SankeyDiagramAggregatedFieldWells.struct_class = Types::SankeyDiagramAggregatedFieldWells

    SankeyDiagramChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: SankeyDiagramFieldWells, location_name: "FieldWells"))
    SankeyDiagramChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: SankeyDiagramSortConfiguration, location_name: "SortConfiguration"))
    SankeyDiagramChartConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    SankeyDiagramChartConfiguration.struct_class = Types::SankeyDiagramChartConfiguration

    SankeyDiagramFieldWells.add_member(:sankey_diagram_aggregated_field_wells, Shapes::ShapeRef.new(shape: SankeyDiagramAggregatedFieldWells, location_name: "SankeyDiagramAggregatedFieldWells"))
    SankeyDiagramFieldWells.struct_class = Types::SankeyDiagramFieldWells

    SankeyDiagramSortConfiguration.add_member(:weight_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "WeightSort"))
    SankeyDiagramSortConfiguration.add_member(:source_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "SourceItemsLimit"))
    SankeyDiagramSortConfiguration.add_member(:destination_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "DestinationItemsLimit"))
    SankeyDiagramSortConfiguration.struct_class = Types::SankeyDiagramSortConfiguration

    SankeyDiagramVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    SankeyDiagramVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    SankeyDiagramVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    SankeyDiagramVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: SankeyDiagramChartConfiguration, location_name: "ChartConfiguration"))
    SankeyDiagramVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    SankeyDiagramVisual.struct_class = Types::SankeyDiagramVisual

    ScatterPlotCategoricallyAggregatedFieldWells.add_member(:x_axis, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "XAxis"))
    ScatterPlotCategoricallyAggregatedFieldWells.add_member(:y_axis, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "YAxis"))
    ScatterPlotCategoricallyAggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Category"))
    ScatterPlotCategoricallyAggregatedFieldWells.add_member(:size, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Size"))
    ScatterPlotCategoricallyAggregatedFieldWells.add_member(:label, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Label"))
    ScatterPlotCategoricallyAggregatedFieldWells.struct_class = Types::ScatterPlotCategoricallyAggregatedFieldWells

    ScatterPlotConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: ScatterPlotFieldWells, location_name: "FieldWells"))
    ScatterPlotConfiguration.add_member(:x_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "XAxisLabelOptions"))
    ScatterPlotConfiguration.add_member(:x_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "XAxisDisplayOptions"))
    ScatterPlotConfiguration.add_member(:y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "YAxisLabelOptions"))
    ScatterPlotConfiguration.add_member(:y_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "YAxisDisplayOptions"))
    ScatterPlotConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    ScatterPlotConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    ScatterPlotConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    ScatterPlotConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    ScatterPlotConfiguration.struct_class = Types::ScatterPlotConfiguration

    ScatterPlotFieldWells.add_member(:scatter_plot_categorically_aggregated_field_wells, Shapes::ShapeRef.new(shape: ScatterPlotCategoricallyAggregatedFieldWells, location_name: "ScatterPlotCategoricallyAggregatedFieldWells"))
    ScatterPlotFieldWells.add_member(:scatter_plot_unaggregated_field_wells, Shapes::ShapeRef.new(shape: ScatterPlotUnaggregatedFieldWells, location_name: "ScatterPlotUnaggregatedFieldWells"))
    ScatterPlotFieldWells.struct_class = Types::ScatterPlotFieldWells

    ScatterPlotUnaggregatedFieldWells.add_member(:x_axis, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "XAxis"))
    ScatterPlotUnaggregatedFieldWells.add_member(:y_axis, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "YAxis"))
    ScatterPlotUnaggregatedFieldWells.add_member(:size, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Size"))
    ScatterPlotUnaggregatedFieldWells.add_member(:category, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Category"))
    ScatterPlotUnaggregatedFieldWells.add_member(:label, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Label"))
    ScatterPlotUnaggregatedFieldWells.struct_class = Types::ScatterPlotUnaggregatedFieldWells

    ScatterPlotVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    ScatterPlotVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    ScatterPlotVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    ScatterPlotVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: ScatterPlotConfiguration, location_name: "ChartConfiguration"))
    ScatterPlotVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    ScatterPlotVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    ScatterPlotVisual.struct_class = Types::ScatterPlotVisual

    ScheduleRefreshOnEntity.add_member(:day_of_week, Shapes::ShapeRef.new(shape: DayOfWeek, location_name: "DayOfWeek"))
    ScheduleRefreshOnEntity.add_member(:day_of_month, Shapes::ShapeRef.new(shape: DayOfMonth, location_name: "DayOfMonth"))
    ScheduleRefreshOnEntity.struct_class = Types::ScheduleRefreshOnEntity

    ScrollBarOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ScrollBarOptions.add_member(:visible_range, Shapes::ShapeRef.new(shape: VisibleRangeOptions, location_name: "VisibleRange"))
    ScrollBarOptions.struct_class = Types::ScrollBarOptions

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

    SearchDataSetsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    SearchDataSetsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DataSetSearchFilterList, required: true, location_name: "Filters"))
    SearchDataSetsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchDataSetsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchDataSetsRequest.struct_class = Types::SearchDataSetsRequest

    SearchDataSetsResponse.add_member(:data_set_summaries, Shapes::ShapeRef.new(shape: DataSetSummaryList, location_name: "DataSetSummaries"))
    SearchDataSetsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchDataSetsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    SearchDataSetsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SearchDataSetsResponse.struct_class = Types::SearchDataSetsResponse

    SearchDataSourcesRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    SearchDataSourcesRequest.add_member(:filters, Shapes::ShapeRef.new(shape: DataSourceSearchFilterList, required: true, location_name: "Filters"))
    SearchDataSourcesRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchDataSourcesRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchDataSourcesRequest.struct_class = Types::SearchDataSourcesRequest

    SearchDataSourcesResponse.add_member(:data_source_summaries, Shapes::ShapeRef.new(shape: DataSourceSummaryList, location_name: "DataSourceSummaries"))
    SearchDataSourcesResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchDataSourcesResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    SearchDataSourcesResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SearchDataSourcesResponse.struct_class = Types::SearchDataSourcesResponse

    SearchFoldersRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    SearchFoldersRequest.add_member(:filters, Shapes::ShapeRef.new(shape: FolderSearchFilterList, required: true, location_name: "Filters"))
    SearchFoldersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchFoldersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", metadata: {"box"=>true}))
    SearchFoldersRequest.struct_class = Types::SearchFoldersRequest

    SearchFoldersResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    SearchFoldersResponse.add_member(:folder_summary_list, Shapes::ShapeRef.new(shape: FolderSummaryList, location_name: "FolderSummaryList"))
    SearchFoldersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchFoldersResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SearchFoldersResponse.struct_class = Types::SearchFoldersResponse

    SearchGroupsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    SearchGroupsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "next-token"))
    SearchGroupsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "max-results", metadata: {"box"=>true}))
    SearchGroupsRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    SearchGroupsRequest.add_member(:filters, Shapes::ShapeRef.new(shape: GroupSearchFilterList, required: true, location_name: "Filters"))
    SearchGroupsRequest.struct_class = Types::SearchGroupsRequest

    SearchGroupsResponse.add_member(:group_list, Shapes::ShapeRef.new(shape: GroupList, location_name: "GroupList"))
    SearchGroupsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "NextToken"))
    SearchGroupsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SearchGroupsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    SearchGroupsResponse.struct_class = Types::SearchGroupsResponse

    SecondaryValueOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    SecondaryValueOptions.struct_class = Types::SecondaryValueOptions

    SectionAfterPageBreak.add_member(:status, Shapes::ShapeRef.new(shape: SectionPageBreakStatus, location_name: "Status"))
    SectionAfterPageBreak.struct_class = Types::SectionAfterPageBreak

    SectionBasedLayoutCanvasSizeOptions.add_member(:paper_canvas_size_options, Shapes::ShapeRef.new(shape: SectionBasedLayoutPaperCanvasSizeOptions, location_name: "PaperCanvasSizeOptions"))
    SectionBasedLayoutCanvasSizeOptions.struct_class = Types::SectionBasedLayoutCanvasSizeOptions

    SectionBasedLayoutConfiguration.add_member(:header_sections, Shapes::ShapeRef.new(shape: HeaderFooterSectionConfigurationList, required: true, location_name: "HeaderSections"))
    SectionBasedLayoutConfiguration.add_member(:body_sections, Shapes::ShapeRef.new(shape: BodySectionConfigurationList, required: true, location_name: "BodySections"))
    SectionBasedLayoutConfiguration.add_member(:footer_sections, Shapes::ShapeRef.new(shape: HeaderFooterSectionConfigurationList, required: true, location_name: "FooterSections"))
    SectionBasedLayoutConfiguration.add_member(:canvas_size_options, Shapes::ShapeRef.new(shape: SectionBasedLayoutCanvasSizeOptions, required: true, location_name: "CanvasSizeOptions"))
    SectionBasedLayoutConfiguration.struct_class = Types::SectionBasedLayoutConfiguration

    SectionBasedLayoutPaperCanvasSizeOptions.add_member(:paper_size, Shapes::ShapeRef.new(shape: PaperSize, location_name: "PaperSize"))
    SectionBasedLayoutPaperCanvasSizeOptions.add_member(:paper_orientation, Shapes::ShapeRef.new(shape: PaperOrientation, location_name: "PaperOrientation"))
    SectionBasedLayoutPaperCanvasSizeOptions.add_member(:paper_margin, Shapes::ShapeRef.new(shape: Spacing, location_name: "PaperMargin"))
    SectionBasedLayoutPaperCanvasSizeOptions.struct_class = Types::SectionBasedLayoutPaperCanvasSizeOptions

    SectionLayoutConfiguration.add_member(:free_form_layout, Shapes::ShapeRef.new(shape: FreeFormSectionLayoutConfiguration, required: true, location_name: "FreeFormLayout"))
    SectionLayoutConfiguration.struct_class = Types::SectionLayoutConfiguration

    SectionPageBreakConfiguration.add_member(:after, Shapes::ShapeRef.new(shape: SectionAfterPageBreak, location_name: "After"))
    SectionPageBreakConfiguration.struct_class = Types::SectionPageBreakConfiguration

    SectionStyle.add_member(:height, Shapes::ShapeRef.new(shape: PixelLength, location_name: "Height"))
    SectionStyle.add_member(:padding, Shapes::ShapeRef.new(shape: Spacing, location_name: "Padding"))
    SectionStyle.struct_class = Types::SectionStyle

    SecurityGroupIdList.member = Shapes::ShapeRef.new(shape: SecurityGroupId)

    SelectedFieldList.member = Shapes::ShapeRef.new(shape: FieldId)

    SelectedSheetsFilterScopeConfiguration.add_member(:sheet_visual_scoping_configurations, Shapes::ShapeRef.new(shape: SheetVisualScopingConfigurations, location_name: "SheetVisualScopingConfigurations"))
    SelectedSheetsFilterScopeConfiguration.struct_class = Types::SelectedSheetsFilterScopeConfiguration

    SemanticEntityType.add_member(:type_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "TypeName"))
    SemanticEntityType.add_member(:sub_type_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "SubTypeName"))
    SemanticEntityType.add_member(:type_parameters, Shapes::ShapeRef.new(shape: TypeParameters, location_name: "TypeParameters"))
    SemanticEntityType.struct_class = Types::SemanticEntityType

    SemanticType.add_member(:type_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "TypeName"))
    SemanticType.add_member(:sub_type_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "SubTypeName"))
    SemanticType.add_member(:type_parameters, Shapes::ShapeRef.new(shape: TypeParameters, location_name: "TypeParameters"))
    SemanticType.add_member(:truthy_cell_value, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "TruthyCellValue"))
    SemanticType.add_member(:truthy_cell_value_synonyms, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "TruthyCellValueSynonyms"))
    SemanticType.add_member(:falsey_cell_value, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "FalseyCellValue"))
    SemanticType.add_member(:falsey_cell_value_synonyms, Shapes::ShapeRef.new(shape: SensitiveStringList, location_name: "FalseyCellValueSynonyms"))
    SemanticType.struct_class = Types::SemanticType

    SensitiveDoubleList.member = Shapes::ShapeRef.new(shape: SensitiveDouble)

    SensitiveLongList.member = Shapes::ShapeRef.new(shape: SensitiveLong)

    SensitiveStringList.member = Shapes::ShapeRef.new(shape: SensitiveString)

    SensitiveTimestampList.member = Shapes::ShapeRef.new(shape: SensitiveTimestamp)

    SeriesItem.add_member(:field_series_item, Shapes::ShapeRef.new(shape: FieldSeriesItem, location_name: "FieldSeriesItem"))
    SeriesItem.add_member(:data_field_series_item, Shapes::ShapeRef.new(shape: DataFieldSeriesItem, location_name: "DataFieldSeriesItem"))
    SeriesItem.struct_class = Types::SeriesItem

    SeriesItemList.member = Shapes::ShapeRef.new(shape: SeriesItem)

    ServiceNowParameters.add_member(:site_base_url, Shapes::ShapeRef.new(shape: SiteBaseUrl, required: true, location_name: "SiteBaseUrl"))
    ServiceNowParameters.struct_class = Types::ServiceNowParameters

    SessionLifetimeInMinutesInvalidException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SessionLifetimeInMinutesInvalidException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    SessionLifetimeInMinutesInvalidException.struct_class = Types::SessionLifetimeInMinutesInvalidException

    SessionTag.add_member(:key, Shapes::ShapeRef.new(shape: SessionTagKey, required: true, location_name: "Key"))
    SessionTag.add_member(:value, Shapes::ShapeRef.new(shape: SessionTagValue, required: true, location_name: "Value"))
    SessionTag.struct_class = Types::SessionTag

    SessionTagList.member = Shapes::ShapeRef.new(shape: SessionTag)

    SetParameterValueConfiguration.add_member(:destination_parameter_name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "DestinationParameterName"))
    SetParameterValueConfiguration.add_member(:value, Shapes::ShapeRef.new(shape: DestinationParameterValueConfiguration, required: true, location_name: "Value"))
    SetParameterValueConfiguration.struct_class = Types::SetParameterValueConfiguration

    SetParameterValueConfigurationList.member = Shapes::ShapeRef.new(shape: SetParameterValueConfiguration)

    ShapeConditionalFormat.add_member(:background_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, required: true, location_name: "BackgroundColor"))
    ShapeConditionalFormat.struct_class = Types::ShapeConditionalFormat

    Sheet.add_member(:sheet_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "SheetId"))
    Sheet.add_member(:name, Shapes::ShapeRef.new(shape: SheetName, location_name: "Name"))
    Sheet.struct_class = Types::Sheet

    SheetControlLayout.add_member(:configuration, Shapes::ShapeRef.new(shape: SheetControlLayoutConfiguration, required: true, location_name: "Configuration"))
    SheetControlLayout.struct_class = Types::SheetControlLayout

    SheetControlLayoutConfiguration.add_member(:grid_layout, Shapes::ShapeRef.new(shape: GridLayoutConfiguration, location_name: "GridLayout"))
    SheetControlLayoutConfiguration.struct_class = Types::SheetControlLayoutConfiguration

    SheetControlLayoutList.member = Shapes::ShapeRef.new(shape: SheetControlLayout)

    SheetControlsOption.add_member(:visibility_state, Shapes::ShapeRef.new(shape: DashboardUIState, location_name: "VisibilityState"))
    SheetControlsOption.struct_class = Types::SheetControlsOption

    SheetDefinition.add_member(:sheet_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SheetId"))
    SheetDefinition.add_member(:title, Shapes::ShapeRef.new(shape: SheetTitle, location_name: "Title"))
    SheetDefinition.add_member(:description, Shapes::ShapeRef.new(shape: SheetDescription, location_name: "Description"))
    SheetDefinition.add_member(:name, Shapes::ShapeRef.new(shape: SheetName, location_name: "Name"))
    SheetDefinition.add_member(:parameter_controls, Shapes::ShapeRef.new(shape: ParameterControlList, location_name: "ParameterControls"))
    SheetDefinition.add_member(:filter_controls, Shapes::ShapeRef.new(shape: FilterControlList, location_name: "FilterControls"))
    SheetDefinition.add_member(:visuals, Shapes::ShapeRef.new(shape: VisualList, location_name: "Visuals"))
    SheetDefinition.add_member(:text_boxes, Shapes::ShapeRef.new(shape: SheetTextBoxList, location_name: "TextBoxes"))
    SheetDefinition.add_member(:layouts, Shapes::ShapeRef.new(shape: LayoutList, location_name: "Layouts"))
    SheetDefinition.add_member(:sheet_control_layouts, Shapes::ShapeRef.new(shape: SheetControlLayoutList, location_name: "SheetControlLayouts"))
    SheetDefinition.add_member(:content_type, Shapes::ShapeRef.new(shape: SheetContentType, location_name: "ContentType"))
    SheetDefinition.struct_class = Types::SheetDefinition

    SheetDefinitionList.member = Shapes::ShapeRef.new(shape: SheetDefinition)

    SheetElementConfigurationOverrides.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    SheetElementConfigurationOverrides.struct_class = Types::SheetElementConfigurationOverrides

    SheetElementRenderingRule.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    SheetElementRenderingRule.add_member(:configuration_overrides, Shapes::ShapeRef.new(shape: SheetElementConfigurationOverrides, required: true, location_name: "ConfigurationOverrides"))
    SheetElementRenderingRule.struct_class = Types::SheetElementRenderingRule

    SheetElementRenderingRuleList.member = Shapes::ShapeRef.new(shape: SheetElementRenderingRule)

    SheetLayoutElementMaximizationOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    SheetLayoutElementMaximizationOption.struct_class = Types::SheetLayoutElementMaximizationOption

    SheetList.member = Shapes::ShapeRef.new(shape: Sheet)

    SheetStyle.add_member(:tile, Shapes::ShapeRef.new(shape: TileStyle, location_name: "Tile"))
    SheetStyle.add_member(:tile_layout, Shapes::ShapeRef.new(shape: TileLayoutStyle, location_name: "TileLayout"))
    SheetStyle.struct_class = Types::SheetStyle

    SheetTextBox.add_member(:sheet_text_box_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SheetTextBoxId"))
    SheetTextBox.add_member(:content, Shapes::ShapeRef.new(shape: SheetTextBoxContent, location_name: "Content"))
    SheetTextBox.struct_class = Types::SheetTextBox

    SheetTextBoxList.member = Shapes::ShapeRef.new(shape: SheetTextBox)

    SheetVisualScopingConfiguration.add_member(:sheet_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "SheetId"))
    SheetVisualScopingConfiguration.add_member(:scope, Shapes::ShapeRef.new(shape: FilterVisualScope, required: true, location_name: "Scope"))
    SheetVisualScopingConfiguration.add_member(:visual_ids, Shapes::ShapeRef.new(shape: FilteredVisualsList, location_name: "VisualIds"))
    SheetVisualScopingConfiguration.struct_class = Types::SheetVisualScopingConfiguration

    SheetVisualScopingConfigurations.member = Shapes::ShapeRef.new(shape: SheetVisualScopingConfiguration)

    ShortFormatText.add_member(:plain_text, Shapes::ShapeRef.new(shape: ShortPlainText, location_name: "PlainText"))
    ShortFormatText.add_member(:rich_text, Shapes::ShapeRef.new(shape: ShortRichText, location_name: "RichText"))
    ShortFormatText.struct_class = Types::ShortFormatText

    SignupResponse.add_member(:iam_user, Shapes::ShapeRef.new(shape: Boolean, location_name: "IAMUser"))
    SignupResponse.add_member(:user_login_name, Shapes::ShapeRef.new(shape: String, location_name: "userLoginName"))
    SignupResponse.add_member(:account_name, Shapes::ShapeRef.new(shape: String, location_name: "accountName"))
    SignupResponse.add_member(:directory_type, Shapes::ShapeRef.new(shape: String, location_name: "directoryType"))
    SignupResponse.struct_class = Types::SignupResponse

    SimpleClusterMarker.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    SimpleClusterMarker.struct_class = Types::SimpleClusterMarker

    SliderControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    SliderControlDisplayOptions.struct_class = Types::SliderControlDisplayOptions

    SmallMultiplesAxisProperties.add_member(:scale, Shapes::ShapeRef.new(shape: SmallMultiplesAxisScale, location_name: "Scale"))
    SmallMultiplesAxisProperties.add_member(:placement, Shapes::ShapeRef.new(shape: SmallMultiplesAxisPlacement, location_name: "Placement"))
    SmallMultiplesAxisProperties.struct_class = Types::SmallMultiplesAxisProperties

    SmallMultiplesDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    SmallMultiplesOptions.add_member(:max_visible_rows, Shapes::ShapeRef.new(shape: VisiblePanelRows, location_name: "MaxVisibleRows"))
    SmallMultiplesOptions.add_member(:max_visible_columns, Shapes::ShapeRef.new(shape: VisiblePanelColumns, location_name: "MaxVisibleColumns"))
    SmallMultiplesOptions.add_member(:panel_configuration, Shapes::ShapeRef.new(shape: PanelConfiguration, location_name: "PanelConfiguration"))
    SmallMultiplesOptions.add_member(:x_axis, Shapes::ShapeRef.new(shape: SmallMultiplesAxisProperties, location_name: "XAxis"))
    SmallMultiplesOptions.add_member(:y_axis, Shapes::ShapeRef.new(shape: SmallMultiplesAxisProperties, location_name: "YAxis"))
    SmallMultiplesOptions.struct_class = Types::SmallMultiplesOptions

    SnowflakeParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    SnowflakeParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    SnowflakeParameters.add_member(:warehouse, Shapes::ShapeRef.new(shape: Warehouse, required: true, location_name: "Warehouse"))
    SnowflakeParameters.struct_class = Types::SnowflakeParameters

    Spacing.add_member(:top, Shapes::ShapeRef.new(shape: Length, location_name: "Top"))
    Spacing.add_member(:bottom, Shapes::ShapeRef.new(shape: Length, location_name: "Bottom"))
    Spacing.add_member(:left, Shapes::ShapeRef.new(shape: Length, location_name: "Left"))
    Spacing.add_member(:right, Shapes::ShapeRef.new(shape: Length, location_name: "Right"))
    Spacing.struct_class = Types::Spacing

    SparkParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    SparkParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    SparkParameters.struct_class = Types::SparkParameters

    SqlServerParameters.add_member(:host, Shapes::ShapeRef.new(shape: Host, required: true, location_name: "Host"))
    SqlServerParameters.add_member(:port, Shapes::ShapeRef.new(shape: Port, required: true, location_name: "Port"))
    SqlServerParameters.add_member(:database, Shapes::ShapeRef.new(shape: Database, required: true, location_name: "Database"))
    SqlServerParameters.struct_class = Types::SqlServerParameters

    SslProperties.add_member(:disable_ssl, Shapes::ShapeRef.new(shape: Boolean, location_name: "DisableSsl"))
    SslProperties.struct_class = Types::SslProperties

    StartAssetBundleExportJobRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    StartAssetBundleExportJobRequest.add_member(:asset_bundle_export_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "AssetBundleExportJobId"))
    StartAssetBundleExportJobRequest.add_member(:resource_arns, Shapes::ShapeRef.new(shape: AssetBundleResourceArns, required: true, location_name: "ResourceArns"))
    StartAssetBundleExportJobRequest.add_member(:include_all_dependencies, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeAllDependencies"))
    StartAssetBundleExportJobRequest.add_member(:export_format, Shapes::ShapeRef.new(shape: AssetBundleExportFormat, required: true, location_name: "ExportFormat"))
    StartAssetBundleExportJobRequest.add_member(:cloud_formation_override_property_configuration, Shapes::ShapeRef.new(shape: AssetBundleCloudFormationOverridePropertyConfiguration, location_name: "CloudFormationOverridePropertyConfiguration"))
    StartAssetBundleExportJobRequest.struct_class = Types::StartAssetBundleExportJobRequest

    StartAssetBundleExportJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    StartAssetBundleExportJobResponse.add_member(:asset_bundle_export_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AssetBundleExportJobId"))
    StartAssetBundleExportJobResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RequestId"))
    StartAssetBundleExportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    StartAssetBundleExportJobResponse.struct_class = Types::StartAssetBundleExportJobResponse

    StartAssetBundleImportJobRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    StartAssetBundleImportJobRequest.add_member(:asset_bundle_import_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "AssetBundleImportJobId"))
    StartAssetBundleImportJobRequest.add_member(:asset_bundle_import_source, Shapes::ShapeRef.new(shape: AssetBundleImportSource, required: true, location_name: "AssetBundleImportSource"))
    StartAssetBundleImportJobRequest.add_member(:override_parameters, Shapes::ShapeRef.new(shape: AssetBundleImportJobOverrideParameters, location_name: "OverrideParameters"))
    StartAssetBundleImportJobRequest.add_member(:failure_action, Shapes::ShapeRef.new(shape: AssetBundleImportFailureAction, location_name: "FailureAction"))
    StartAssetBundleImportJobRequest.struct_class = Types::StartAssetBundleImportJobRequest

    StartAssetBundleImportJobResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    StartAssetBundleImportJobResponse.add_member(:asset_bundle_import_job_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AssetBundleImportJobId"))
    StartAssetBundleImportJobResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "RequestId"))
    StartAssetBundleImportJobResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    StartAssetBundleImportJobResponse.struct_class = Types::StartAssetBundleImportJobResponse

    StatePersistenceConfigurations.add_member(:enabled, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "Enabled"))
    StatePersistenceConfigurations.struct_class = Types::StatePersistenceConfigurations

    StringDatasetParameter.add_member(:id, Shapes::ShapeRef.new(shape: DatasetParameterId, required: true, location_name: "Id"))
    StringDatasetParameter.add_member(:name, Shapes::ShapeRef.new(shape: DatasetParameterName, required: true, location_name: "Name"))
    StringDatasetParameter.add_member(:value_type, Shapes::ShapeRef.new(shape: DatasetParameterValueType, required: true, location_name: "ValueType"))
    StringDatasetParameter.add_member(:default_values, Shapes::ShapeRef.new(shape: StringDatasetParameterDefaultValues, location_name: "DefaultValues"))
    StringDatasetParameter.struct_class = Types::StringDatasetParameter

    StringDatasetParameterDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: StringDatasetParameterValueList, location_name: "StaticValues"))
    StringDatasetParameterDefaultValues.struct_class = Types::StringDatasetParameterDefaultValues

    StringDatasetParameterValueList.member = Shapes::ShapeRef.new(shape: StringDatasetParameterDefaultValue)

    StringDefaultValueList.member = Shapes::ShapeRef.new(shape: SensitiveStringObject)

    StringDefaultValues.add_member(:dynamic_value, Shapes::ShapeRef.new(shape: DynamicDefaultValue, location_name: "DynamicValue"))
    StringDefaultValues.add_member(:static_values, Shapes::ShapeRef.new(shape: StringDefaultValueList, location_name: "StaticValues"))
    StringDefaultValues.struct_class = Types::StringDefaultValues

    StringFormatConfiguration.add_member(:null_value_format_configuration, Shapes::ShapeRef.new(shape: NullValueFormatConfiguration, location_name: "NullValueFormatConfiguration"))
    StringFormatConfiguration.add_member(:numeric_format_configuration, Shapes::ShapeRef.new(shape: NumericFormatConfiguration, location_name: "NumericFormatConfiguration"))
    StringFormatConfiguration.struct_class = Types::StringFormatConfiguration

    StringList.member = Shapes::ShapeRef.new(shape: String)

    StringParameter.add_member(:name, Shapes::ShapeRef.new(shape: NonEmptyString, required: true, location_name: "Name"))
    StringParameter.add_member(:values, Shapes::ShapeRef.new(shape: SensitiveStringList, required: true, location_name: "Values"))
    StringParameter.struct_class = Types::StringParameter

    StringParameterDeclaration.add_member(:parameter_value_type, Shapes::ShapeRef.new(shape: ParameterValueType, required: true, location_name: "ParameterValueType"))
    StringParameterDeclaration.add_member(:name, Shapes::ShapeRef.new(shape: ParameterName, required: true, location_name: "Name"))
    StringParameterDeclaration.add_member(:default_values, Shapes::ShapeRef.new(shape: StringDefaultValues, location_name: "DefaultValues"))
    StringParameterDeclaration.add_member(:value_when_unset, Shapes::ShapeRef.new(shape: StringValueWhenUnsetConfiguration, location_name: "ValueWhenUnset"))
    StringParameterDeclaration.add_member(:mapped_data_set_parameters, Shapes::ShapeRef.new(shape: MappedDataSetParameters, location_name: "MappedDataSetParameters"))
    StringParameterDeclaration.struct_class = Types::StringParameterDeclaration

    StringParameterList.member = Shapes::ShapeRef.new(shape: StringParameter)

    StringValueWhenUnsetConfiguration.add_member(:value_when_unset_option, Shapes::ShapeRef.new(shape: ValueWhenUnsetOption, location_name: "ValueWhenUnsetOption"))
    StringValueWhenUnsetConfiguration.add_member(:custom_value, Shapes::ShapeRef.new(shape: SensitiveString, location_name: "CustomValue"))
    StringValueWhenUnsetConfiguration.struct_class = Types::StringValueWhenUnsetConfiguration

    SubnetIdList.member = Shapes::ShapeRef.new(shape: SubnetId)

    SubtotalOptions.add_member(:totals_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "TotalsVisibility"))
    SubtotalOptions.add_member(:custom_label, Shapes::ShapeRef.new(shape: String, location_name: "CustomLabel"))
    SubtotalOptions.add_member(:field_level, Shapes::ShapeRef.new(shape: PivotTableSubtotalLevel, location_name: "FieldLevel"))
    SubtotalOptions.add_member(:field_level_options, Shapes::ShapeRef.new(shape: PivotTableFieldSubtotalOptionsList, location_name: "FieldLevelOptions"))
    SubtotalOptions.add_member(:total_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "TotalCellStyle"))
    SubtotalOptions.add_member(:value_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "ValueCellStyle"))
    SubtotalOptions.add_member(:metric_header_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "MetricHeaderCellStyle"))
    SubtotalOptions.struct_class = Types::SubtotalOptions

    Synonyms.member = Shapes::ShapeRef.new(shape: LimitedString)

    TableAggregatedFieldWells.add_member(:group_by, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "GroupBy"))
    TableAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    TableAggregatedFieldWells.struct_class = Types::TableAggregatedFieldWells

    TableBorderOptions.add_member(:color, Shapes::ShapeRef.new(shape: HexColor, location_name: "Color"))
    TableBorderOptions.add_member(:thickness, Shapes::ShapeRef.new(shape: TableBorderThickness, location_name: "Thickness"))
    TableBorderOptions.add_member(:style, Shapes::ShapeRef.new(shape: TableBorderStyle, location_name: "Style"))
    TableBorderOptions.struct_class = Types::TableBorderOptions

    TableCellConditionalFormatting.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    TableCellConditionalFormatting.add_member(:text_format, Shapes::ShapeRef.new(shape: TextConditionalFormat, location_name: "TextFormat"))
    TableCellConditionalFormatting.struct_class = Types::TableCellConditionalFormatting

    TableCellImageSizingConfiguration.add_member(:table_cell_image_scaling_configuration, Shapes::ShapeRef.new(shape: TableCellImageScalingConfiguration, location_name: "TableCellImageScalingConfiguration"))
    TableCellImageSizingConfiguration.struct_class = Types::TableCellImageSizingConfiguration

    TableCellStyle.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    TableCellStyle.add_member(:font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, location_name: "FontConfiguration"))
    TableCellStyle.add_member(:text_wrap, Shapes::ShapeRef.new(shape: TextWrap, location_name: "TextWrap"))
    TableCellStyle.add_member(:horizontal_text_alignment, Shapes::ShapeRef.new(shape: HorizontalTextAlignment, location_name: "HorizontalTextAlignment"))
    TableCellStyle.add_member(:vertical_text_alignment, Shapes::ShapeRef.new(shape: VerticalTextAlignment, location_name: "VerticalTextAlignment"))
    TableCellStyle.add_member(:background_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "BackgroundColor"))
    TableCellStyle.add_member(:height, Shapes::ShapeRef.new(shape: TableFieldHeight, location_name: "Height"))
    TableCellStyle.add_member(:border, Shapes::ShapeRef.new(shape: GlobalTableBorderOptions, location_name: "Border"))
    TableCellStyle.struct_class = Types::TableCellStyle

    TableConditionalFormatting.add_member(:conditional_formatting_options, Shapes::ShapeRef.new(shape: TableConditionalFormattingOptionList, location_name: "ConditionalFormattingOptions"))
    TableConditionalFormatting.struct_class = Types::TableConditionalFormatting

    TableConditionalFormattingOption.add_member(:cell, Shapes::ShapeRef.new(shape: TableCellConditionalFormatting, location_name: "Cell"))
    TableConditionalFormattingOption.add_member(:row, Shapes::ShapeRef.new(shape: TableRowConditionalFormatting, location_name: "Row"))
    TableConditionalFormattingOption.struct_class = Types::TableConditionalFormattingOption

    TableConditionalFormattingOptionList.member = Shapes::ShapeRef.new(shape: TableConditionalFormattingOption)

    TableConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: TableFieldWells, location_name: "FieldWells"))
    TableConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: TableSortConfiguration, location_name: "SortConfiguration"))
    TableConfiguration.add_member(:table_options, Shapes::ShapeRef.new(shape: TableOptions, location_name: "TableOptions"))
    TableConfiguration.add_member(:total_options, Shapes::ShapeRef.new(shape: TotalOptions, location_name: "TotalOptions"))
    TableConfiguration.add_member(:field_options, Shapes::ShapeRef.new(shape: TableFieldOptions, location_name: "FieldOptions"))
    TableConfiguration.add_member(:paginated_report_options, Shapes::ShapeRef.new(shape: TablePaginatedReportOptions, location_name: "PaginatedReportOptions"))
    TableConfiguration.add_member(:table_inline_visualizations, Shapes::ShapeRef.new(shape: TableInlineVisualizationList, location_name: "TableInlineVisualizations"))
    TableConfiguration.struct_class = Types::TableConfiguration

    TableFieldCustomIconContent.add_member(:icon, Shapes::ShapeRef.new(shape: TableFieldIconSetType, location_name: "Icon"))
    TableFieldCustomIconContent.struct_class = Types::TableFieldCustomIconContent

    TableFieldCustomTextContent.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "Value"))
    TableFieldCustomTextContent.add_member(:font_configuration, Shapes::ShapeRef.new(shape: FontConfiguration, required: true, location_name: "FontConfiguration"))
    TableFieldCustomTextContent.struct_class = Types::TableFieldCustomTextContent

    TableFieldImageConfiguration.add_member(:sizing_options, Shapes::ShapeRef.new(shape: TableCellImageSizingConfiguration, location_name: "SizingOptions"))
    TableFieldImageConfiguration.struct_class = Types::TableFieldImageConfiguration

    TableFieldLinkConfiguration.add_member(:target, Shapes::ShapeRef.new(shape: URLTargetConfiguration, required: true, location_name: "Target"))
    TableFieldLinkConfiguration.add_member(:content, Shapes::ShapeRef.new(shape: TableFieldLinkContentConfiguration, required: true, location_name: "Content"))
    TableFieldLinkConfiguration.struct_class = Types::TableFieldLinkConfiguration

    TableFieldLinkContentConfiguration.add_member(:custom_text_content, Shapes::ShapeRef.new(shape: TableFieldCustomTextContent, location_name: "CustomTextContent"))
    TableFieldLinkContentConfiguration.add_member(:custom_icon_content, Shapes::ShapeRef.new(shape: TableFieldCustomIconContent, location_name: "CustomIconContent"))
    TableFieldLinkContentConfiguration.struct_class = Types::TableFieldLinkContentConfiguration

    TableFieldOption.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    TableFieldOption.add_member(:width, Shapes::ShapeRef.new(shape: PixelLength, location_name: "Width"))
    TableFieldOption.add_member(:custom_label, Shapes::ShapeRef.new(shape: CustomLabel, location_name: "CustomLabel"))
    TableFieldOption.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    TableFieldOption.add_member(:url_styling, Shapes::ShapeRef.new(shape: TableFieldURLConfiguration, location_name: "URLStyling"))
    TableFieldOption.struct_class = Types::TableFieldOption

    TableFieldOptionList.member = Shapes::ShapeRef.new(shape: TableFieldOption)

    TableFieldOptions.add_member(:selected_field_options, Shapes::ShapeRef.new(shape: TableFieldOptionList, location_name: "SelectedFieldOptions"))
    TableFieldOptions.add_member(:order, Shapes::ShapeRef.new(shape: FieldOrderList, location_name: "Order"))
    TableFieldOptions.struct_class = Types::TableFieldOptions

    TableFieldURLConfiguration.add_member(:link_configuration, Shapes::ShapeRef.new(shape: TableFieldLinkConfiguration, location_name: "LinkConfiguration"))
    TableFieldURLConfiguration.add_member(:image_configuration, Shapes::ShapeRef.new(shape: TableFieldImageConfiguration, location_name: "ImageConfiguration"))
    TableFieldURLConfiguration.struct_class = Types::TableFieldURLConfiguration

    TableFieldWells.add_member(:table_aggregated_field_wells, Shapes::ShapeRef.new(shape: TableAggregatedFieldWells, location_name: "TableAggregatedFieldWells"))
    TableFieldWells.add_member(:table_unaggregated_field_wells, Shapes::ShapeRef.new(shape: TableUnaggregatedFieldWells, location_name: "TableUnaggregatedFieldWells"))
    TableFieldWells.struct_class = Types::TableFieldWells

    TableInlineVisualization.add_member(:data_bars, Shapes::ShapeRef.new(shape: DataBarsOptions, location_name: "DataBars"))
    TableInlineVisualization.struct_class = Types::TableInlineVisualization

    TableInlineVisualizationList.member = Shapes::ShapeRef.new(shape: TableInlineVisualization)

    TableOptions.add_member(:orientation, Shapes::ShapeRef.new(shape: TableOrientation, location_name: "Orientation"))
    TableOptions.add_member(:header_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "HeaderStyle"))
    TableOptions.add_member(:cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "CellStyle"))
    TableOptions.add_member(:row_alternate_color_options, Shapes::ShapeRef.new(shape: RowAlternateColorOptions, location_name: "RowAlternateColorOptions"))
    TableOptions.struct_class = Types::TableOptions

    TablePaginatedReportOptions.add_member(:vertical_overflow_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "VerticalOverflowVisibility"))
    TablePaginatedReportOptions.add_member(:overflow_column_header_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "OverflowColumnHeaderVisibility"))
    TablePaginatedReportOptions.struct_class = Types::TablePaginatedReportOptions

    TableRowConditionalFormatting.add_member(:background_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "BackgroundColor"))
    TableRowConditionalFormatting.add_member(:text_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "TextColor"))
    TableRowConditionalFormatting.struct_class = Types::TableRowConditionalFormatting

    TableSideBorderOptions.add_member(:inner_vertical, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "InnerVertical"))
    TableSideBorderOptions.add_member(:inner_horizontal, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "InnerHorizontal"))
    TableSideBorderOptions.add_member(:left, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "Left"))
    TableSideBorderOptions.add_member(:right, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "Right"))
    TableSideBorderOptions.add_member(:top, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "Top"))
    TableSideBorderOptions.add_member(:bottom, Shapes::ShapeRef.new(shape: TableBorderOptions, location_name: "Bottom"))
    TableSideBorderOptions.struct_class = Types::TableSideBorderOptions

    TableSortConfiguration.add_member(:row_sort, Shapes::ShapeRef.new(shape: RowSortList, location_name: "RowSort"))
    TableSortConfiguration.add_member(:pagination_configuration, Shapes::ShapeRef.new(shape: PaginationConfiguration, location_name: "PaginationConfiguration"))
    TableSortConfiguration.struct_class = Types::TableSortConfiguration

    TableUnaggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: UnaggregatedFieldList, location_name: "Values"))
    TableUnaggregatedFieldWells.struct_class = Types::TableUnaggregatedFieldWells

    TableVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    TableVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    TableVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    TableVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: TableConfiguration, location_name: "ChartConfiguration"))
    TableVisual.add_member(:conditional_formatting, Shapes::ShapeRef.new(shape: TableConditionalFormatting, location_name: "ConditionalFormatting"))
    TableVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    TableVisual.struct_class = Types::TableVisual

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

    TargetVisualList.member = Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId)

    Template.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Template.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    Template.add_member(:version, Shapes::ShapeRef.new(shape: TemplateVersion, location_name: "Version"))
    Template.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
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
    TemplateError.add_member(:violated_entities, Shapes::ShapeRef.new(shape: EntityList, location_name: "ViolatedEntities"))
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
    TemplateSummary.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
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

    TemplateVersionDefinition.add_member(:data_set_configurations, Shapes::ShapeRef.new(shape: DataSetConfigurationList, required: true, location_name: "DataSetConfigurations"))
    TemplateVersionDefinition.add_member(:sheets, Shapes::ShapeRef.new(shape: SheetDefinitionList, location_name: "Sheets"))
    TemplateVersionDefinition.add_member(:calculated_fields, Shapes::ShapeRef.new(shape: CalculatedFields, location_name: "CalculatedFields"))
    TemplateVersionDefinition.add_member(:parameter_declarations, Shapes::ShapeRef.new(shape: ParameterDeclarationList, location_name: "ParameterDeclarations"))
    TemplateVersionDefinition.add_member(:filter_groups, Shapes::ShapeRef.new(shape: FilterGroupList, location_name: "FilterGroups"))
    TemplateVersionDefinition.add_member(:column_configurations, Shapes::ShapeRef.new(shape: ColumnConfigurationList, location_name: "ColumnConfigurations"))
    TemplateVersionDefinition.add_member(:analysis_defaults, Shapes::ShapeRef.new(shape: AnalysisDefaults, location_name: "AnalysisDefaults"))
    TemplateVersionDefinition.struct_class = Types::TemplateVersionDefinition

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

    TextAreaControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    TextAreaControlDisplayOptions.add_member(:placeholder_options, Shapes::ShapeRef.new(shape: TextControlPlaceholderOptions, location_name: "PlaceholderOptions"))
    TextAreaControlDisplayOptions.struct_class = Types::TextAreaControlDisplayOptions

    TextConditionalFormat.add_member(:background_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "BackgroundColor"))
    TextConditionalFormat.add_member(:text_color, Shapes::ShapeRef.new(shape: ConditionalFormattingColor, location_name: "TextColor"))
    TextConditionalFormat.add_member(:icon, Shapes::ShapeRef.new(shape: ConditionalFormattingIcon, location_name: "Icon"))
    TextConditionalFormat.struct_class = Types::TextConditionalFormat

    TextControlPlaceholderOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    TextControlPlaceholderOptions.struct_class = Types::TextControlPlaceholderOptions

    TextFieldControlDisplayOptions.add_member(:title_options, Shapes::ShapeRef.new(shape: LabelOptions, location_name: "TitleOptions"))
    TextFieldControlDisplayOptions.add_member(:placeholder_options, Shapes::ShapeRef.new(shape: TextControlPlaceholderOptions, location_name: "PlaceholderOptions"))
    TextFieldControlDisplayOptions.struct_class = Types::TextFieldControlDisplayOptions

    Theme.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    Theme.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "Name"))
    Theme.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
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
    ThemeConfiguration.add_member(:typography, Shapes::ShapeRef.new(shape: Typography, location_name: "Typography"))
    ThemeConfiguration.struct_class = Types::ThemeConfiguration

    ThemeError.add_member(:type, Shapes::ShapeRef.new(shape: ThemeErrorType, location_name: "Type"))
    ThemeError.add_member(:message, Shapes::ShapeRef.new(shape: NonEmptyString, location_name: "Message"))
    ThemeError.struct_class = Types::ThemeError

    ThemeErrorList.member = Shapes::ShapeRef.new(shape: ThemeError)

    ThemeSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ThemeSummary.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "Name"))
    ThemeSummary.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    ThemeSummary.add_member(:latest_version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "LatestVersionNumber"))
    ThemeSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    ThemeSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    ThemeSummary.struct_class = Types::ThemeSummary

    ThemeSummaryList.member = Shapes::ShapeRef.new(shape: ThemeSummary)

    ThemeVersion.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, location_name: "VersionNumber"))
    ThemeVersion.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    ThemeVersion.add_member(:description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "Description"))
    ThemeVersion.add_member(:base_theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "BaseThemeId"))
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

    ThousandSeparatorOptions.add_member(:symbol, Shapes::ShapeRef.new(shape: NumericSeparatorSymbol, location_name: "Symbol"))
    ThousandSeparatorOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    ThousandSeparatorOptions.struct_class = Types::ThousandSeparatorOptions

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TileLayoutStyle.add_member(:gutter, Shapes::ShapeRef.new(shape: GutterStyle, location_name: "Gutter"))
    TileLayoutStyle.add_member(:margin, Shapes::ShapeRef.new(shape: MarginStyle, location_name: "Margin"))
    TileLayoutStyle.struct_class = Types::TileLayoutStyle

    TileStyle.add_member(:border, Shapes::ShapeRef.new(shape: BorderStyle, location_name: "Border"))
    TileStyle.struct_class = Types::TileStyle

    TimeBasedForecastProperties.add_member(:periods_forward, Shapes::ShapeRef.new(shape: PeriodsForward, location_name: "PeriodsForward", metadata: {"box"=>true}))
    TimeBasedForecastProperties.add_member(:periods_backward, Shapes::ShapeRef.new(shape: PeriodsBackward, location_name: "PeriodsBackward", metadata: {"box"=>true}))
    TimeBasedForecastProperties.add_member(:upper_boundary, Shapes::ShapeRef.new(shape: Double, location_name: "UpperBoundary", metadata: {"box"=>true}))
    TimeBasedForecastProperties.add_member(:lower_boundary, Shapes::ShapeRef.new(shape: Double, location_name: "LowerBoundary", metadata: {"box"=>true}))
    TimeBasedForecastProperties.add_member(:prediction_interval, Shapes::ShapeRef.new(shape: PredictionInterval, location_name: "PredictionInterval", metadata: {"box"=>true}))
    TimeBasedForecastProperties.add_member(:seasonality, Shapes::ShapeRef.new(shape: Seasonality, location_name: "Seasonality", metadata: {"box"=>true}))
    TimeBasedForecastProperties.struct_class = Types::TimeBasedForecastProperties

    TimeEqualityFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    TimeEqualityFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    TimeEqualityFilter.add_member(:value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "Value"))
    TimeEqualityFilter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    TimeEqualityFilter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "TimeGranularity"))
    TimeEqualityFilter.struct_class = Types::TimeEqualityFilter

    TimeRangeDrillDownFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    TimeRangeDrillDownFilter.add_member(:range_minimum, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "RangeMinimum"))
    TimeRangeDrillDownFilter.add_member(:range_maximum, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "RangeMaximum"))
    TimeRangeDrillDownFilter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, required: true, location_name: "TimeGranularity"))
    TimeRangeDrillDownFilter.struct_class = Types::TimeRangeDrillDownFilter

    TimeRangeFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    TimeRangeFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    TimeRangeFilter.add_member(:include_minimum, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeMinimum", metadata: {"box"=>true}))
    TimeRangeFilter.add_member(:include_maximum, Shapes::ShapeRef.new(shape: Boolean, location_name: "IncludeMaximum", metadata: {"box"=>true}))
    TimeRangeFilter.add_member(:range_minimum_value, Shapes::ShapeRef.new(shape: TimeRangeFilterValue, location_name: "RangeMinimumValue"))
    TimeRangeFilter.add_member(:range_maximum_value, Shapes::ShapeRef.new(shape: TimeRangeFilterValue, location_name: "RangeMaximumValue"))
    TimeRangeFilter.add_member(:null_option, Shapes::ShapeRef.new(shape: FilterNullOption, required: true, location_name: "NullOption"))
    TimeRangeFilter.add_member(:exclude_period_configuration, Shapes::ShapeRef.new(shape: ExcludePeriodConfiguration, location_name: "ExcludePeriodConfiguration"))
    TimeRangeFilter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "TimeGranularity"))
    TimeRangeFilter.struct_class = Types::TimeRangeFilter

    TimeRangeFilterValue.add_member(:static_value, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StaticValue"))
    TimeRangeFilterValue.add_member(:rolling_date, Shapes::ShapeRef.new(shape: RollingDateConfiguration, location_name: "RollingDate"))
    TimeRangeFilterValue.add_member(:parameter, Shapes::ShapeRef.new(shape: ParameterName, location_name: "Parameter"))
    TimeRangeFilterValue.struct_class = Types::TimeRangeFilterValue

    TooltipItem.add_member(:field_tooltip_item, Shapes::ShapeRef.new(shape: FieldTooltipItem, location_name: "FieldTooltipItem"))
    TooltipItem.add_member(:column_tooltip_item, Shapes::ShapeRef.new(shape: ColumnTooltipItem, location_name: "ColumnTooltipItem"))
    TooltipItem.struct_class = Types::TooltipItem

    TooltipItemList.member = Shapes::ShapeRef.new(shape: TooltipItem)

    TooltipOptions.add_member(:tooltip_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "TooltipVisibility"))
    TooltipOptions.add_member(:selected_tooltip_type, Shapes::ShapeRef.new(shape: SelectedTooltipType, location_name: "SelectedTooltipType"))
    TooltipOptions.add_member(:field_based_tooltip, Shapes::ShapeRef.new(shape: FieldBasedTooltip, location_name: "FieldBasedTooltip"))
    TooltipOptions.struct_class = Types::TooltipOptions

    TopBottomFilter.add_member(:filter_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "FilterId"))
    TopBottomFilter.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    TopBottomFilter.add_member(:limit, Shapes::ShapeRef.new(shape: Integer, location_name: "Limit", metadata: {"box"=>true}))
    TopBottomFilter.add_member(:aggregation_sort_configurations, Shapes::ShapeRef.new(shape: AggregationSortConfigurationList, required: true, location_name: "AggregationSortConfigurations"))
    TopBottomFilter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TimeGranularity, location_name: "TimeGranularity"))
    TopBottomFilter.add_member(:parameter_name, Shapes::ShapeRef.new(shape: ParameterName, location_name: "ParameterName"))
    TopBottomFilter.struct_class = Types::TopBottomFilter

    TopBottomMoversComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    TopBottomMoversComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    TopBottomMoversComputation.add_member(:time, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Time"))
    TopBottomMoversComputation.add_member(:category, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Category"))
    TopBottomMoversComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    TopBottomMoversComputation.add_member(:mover_size, Shapes::ShapeRef.new(shape: TopBottomMoversComputationMoverSize, location_name: "MoverSize"))
    TopBottomMoversComputation.add_member(:sort_order, Shapes::ShapeRef.new(shape: TopBottomSortOrder, location_name: "SortOrder"))
    TopBottomMoversComputation.add_member(:type, Shapes::ShapeRef.new(shape: TopBottomComputationType, required: true, location_name: "Type"))
    TopBottomMoversComputation.struct_class = Types::TopBottomMoversComputation

    TopBottomRankedComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    TopBottomRankedComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    TopBottomRankedComputation.add_member(:category, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Category"))
    TopBottomRankedComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, location_name: "Value"))
    TopBottomRankedComputation.add_member(:result_size, Shapes::ShapeRef.new(shape: TopBottomRankedComputationResultSize, location_name: "ResultSize"))
    TopBottomRankedComputation.add_member(:type, Shapes::ShapeRef.new(shape: TopBottomComputationType, required: true, location_name: "Type"))
    TopBottomRankedComputation.struct_class = Types::TopBottomRankedComputation

    TopicCalculatedField.add_member(:calculated_field_name, Shapes::ShapeRef.new(shape: LimitedString, required: true, location_name: "CalculatedFieldName"))
    TopicCalculatedField.add_member(:calculated_field_description, Shapes::ShapeRef.new(shape: LimitedString, location_name: "CalculatedFieldDescription"))
    TopicCalculatedField.add_member(:expression, Shapes::ShapeRef.new(shape: Expression, required: true, location_name: "Expression"))
    TopicCalculatedField.add_member(:calculated_field_synonyms, Shapes::ShapeRef.new(shape: Synonyms, location_name: "CalculatedFieldSynonyms"))
    TopicCalculatedField.add_member(:is_included_in_topic, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsIncludedInTopic"))
    TopicCalculatedField.add_member(:disable_indexing, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "DisableIndexing"))
    TopicCalculatedField.add_member(:column_data_role, Shapes::ShapeRef.new(shape: ColumnDataRole, location_name: "ColumnDataRole"))
    TopicCalculatedField.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TopicTimeGranularity, location_name: "TimeGranularity"))
    TopicCalculatedField.add_member(:default_formatting, Shapes::ShapeRef.new(shape: DefaultFormatting, location_name: "DefaultFormatting"))
    TopicCalculatedField.add_member(:aggregation, Shapes::ShapeRef.new(shape: DefaultAggregation, location_name: "Aggregation"))
    TopicCalculatedField.add_member(:comparative_order, Shapes::ShapeRef.new(shape: ComparativeOrder, location_name: "ComparativeOrder"))
    TopicCalculatedField.add_member(:semantic_type, Shapes::ShapeRef.new(shape: SemanticType, location_name: "SemanticType"))
    TopicCalculatedField.add_member(:allowed_aggregations, Shapes::ShapeRef.new(shape: AuthorSpecifiedAggregations, location_name: "AllowedAggregations"))
    TopicCalculatedField.add_member(:not_allowed_aggregations, Shapes::ShapeRef.new(shape: AuthorSpecifiedAggregations, location_name: "NotAllowedAggregations"))
    TopicCalculatedField.add_member(:never_aggregate_in_filter, Shapes::ShapeRef.new(shape: Boolean, location_name: "NeverAggregateInFilter"))
    TopicCalculatedField.add_member(:cell_value_synonyms, Shapes::ShapeRef.new(shape: CellValueSynonyms, location_name: "CellValueSynonyms"))
    TopicCalculatedField.struct_class = Types::TopicCalculatedField

    TopicCalculatedFields.member = Shapes::ShapeRef.new(shape: TopicCalculatedField)

    TopicCategoryFilter.add_member(:category_filter_function, Shapes::ShapeRef.new(shape: CategoryFilterFunction, location_name: "CategoryFilterFunction"))
    TopicCategoryFilter.add_member(:category_filter_type, Shapes::ShapeRef.new(shape: CategoryFilterType, location_name: "CategoryFilterType"))
    TopicCategoryFilter.add_member(:constant, Shapes::ShapeRef.new(shape: TopicCategoryFilterConstant, location_name: "Constant"))
    TopicCategoryFilter.add_member(:inverse, Shapes::ShapeRef.new(shape: Boolean, location_name: "Inverse"))
    TopicCategoryFilter.struct_class = Types::TopicCategoryFilter

    TopicCategoryFilterConstant.add_member(:constant_type, Shapes::ShapeRef.new(shape: ConstantType, location_name: "ConstantType"))
    TopicCategoryFilterConstant.add_member(:singular_constant, Shapes::ShapeRef.new(shape: LimitedString, location_name: "SingularConstant"))
    TopicCategoryFilterConstant.add_member(:collective_constant, Shapes::ShapeRef.new(shape: CollectiveConstant, location_name: "CollectiveConstant"))
    TopicCategoryFilterConstant.struct_class = Types::TopicCategoryFilterConstant

    TopicColumn.add_member(:column_name, Shapes::ShapeRef.new(shape: LimitedString, required: true, location_name: "ColumnName"))
    TopicColumn.add_member(:column_friendly_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "ColumnFriendlyName"))
    TopicColumn.add_member(:column_description, Shapes::ShapeRef.new(shape: LimitedString, location_name: "ColumnDescription"))
    TopicColumn.add_member(:column_synonyms, Shapes::ShapeRef.new(shape: Synonyms, location_name: "ColumnSynonyms"))
    TopicColumn.add_member(:column_data_role, Shapes::ShapeRef.new(shape: ColumnDataRole, location_name: "ColumnDataRole"))
    TopicColumn.add_member(:aggregation, Shapes::ShapeRef.new(shape: DefaultAggregation, location_name: "Aggregation"))
    TopicColumn.add_member(:is_included_in_topic, Shapes::ShapeRef.new(shape: Boolean, location_name: "IsIncludedInTopic"))
    TopicColumn.add_member(:disable_indexing, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "DisableIndexing"))
    TopicColumn.add_member(:comparative_order, Shapes::ShapeRef.new(shape: ComparativeOrder, location_name: "ComparativeOrder"))
    TopicColumn.add_member(:semantic_type, Shapes::ShapeRef.new(shape: SemanticType, location_name: "SemanticType"))
    TopicColumn.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TopicTimeGranularity, location_name: "TimeGranularity"))
    TopicColumn.add_member(:allowed_aggregations, Shapes::ShapeRef.new(shape: AuthorSpecifiedAggregations, location_name: "AllowedAggregations"))
    TopicColumn.add_member(:not_allowed_aggregations, Shapes::ShapeRef.new(shape: AuthorSpecifiedAggregations, location_name: "NotAllowedAggregations"))
    TopicColumn.add_member(:default_formatting, Shapes::ShapeRef.new(shape: DefaultFormatting, location_name: "DefaultFormatting"))
    TopicColumn.add_member(:never_aggregate_in_filter, Shapes::ShapeRef.new(shape: Boolean, location_name: "NeverAggregateInFilter"))
    TopicColumn.add_member(:cell_value_synonyms, Shapes::ShapeRef.new(shape: CellValueSynonyms, location_name: "CellValueSynonyms"))
    TopicColumn.struct_class = Types::TopicColumn

    TopicColumns.member = Shapes::ShapeRef.new(shape: TopicColumn)

    TopicDateRangeFilter.add_member(:inclusive, Shapes::ShapeRef.new(shape: Boolean, location_name: "Inclusive"))
    TopicDateRangeFilter.add_member(:constant, Shapes::ShapeRef.new(shape: TopicRangeFilterConstant, location_name: "Constant"))
    TopicDateRangeFilter.struct_class = Types::TopicDateRangeFilter

    TopicDetails.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    TopicDetails.add_member(:description, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Description"))
    TopicDetails.add_member(:data_sets, Shapes::ShapeRef.new(shape: Datasets, location_name: "DataSets"))
    TopicDetails.struct_class = Types::TopicDetails

    TopicFilter.add_member(:filter_description, Shapes::ShapeRef.new(shape: LimitedString, location_name: "FilterDescription"))
    TopicFilter.add_member(:filter_class, Shapes::ShapeRef.new(shape: FilterClass, location_name: "FilterClass"))
    TopicFilter.add_member(:filter_name, Shapes::ShapeRef.new(shape: LimitedString, required: true, location_name: "FilterName"))
    TopicFilter.add_member(:filter_synonyms, Shapes::ShapeRef.new(shape: Synonyms, location_name: "FilterSynonyms"))
    TopicFilter.add_member(:operand_field_name, Shapes::ShapeRef.new(shape: LimitedString, required: true, location_name: "OperandFieldName"))
    TopicFilter.add_member(:filter_type, Shapes::ShapeRef.new(shape: NamedFilterType, location_name: "FilterType"))
    TopicFilter.add_member(:category_filter, Shapes::ShapeRef.new(shape: TopicCategoryFilter, location_name: "CategoryFilter"))
    TopicFilter.add_member(:numeric_equality_filter, Shapes::ShapeRef.new(shape: TopicNumericEqualityFilter, location_name: "NumericEqualityFilter"))
    TopicFilter.add_member(:numeric_range_filter, Shapes::ShapeRef.new(shape: TopicNumericRangeFilter, location_name: "NumericRangeFilter"))
    TopicFilter.add_member(:date_range_filter, Shapes::ShapeRef.new(shape: TopicDateRangeFilter, location_name: "DateRangeFilter"))
    TopicFilter.add_member(:relative_date_filter, Shapes::ShapeRef.new(shape: TopicRelativeDateFilter, location_name: "RelativeDateFilter"))
    TopicFilter.struct_class = Types::TopicFilter

    TopicFilters.member = Shapes::ShapeRef.new(shape: TopicFilter)

    TopicNamedEntities.member = Shapes::ShapeRef.new(shape: TopicNamedEntity)

    TopicNamedEntity.add_member(:entity_name, Shapes::ShapeRef.new(shape: LimitedString, required: true, location_name: "EntityName"))
    TopicNamedEntity.add_member(:entity_description, Shapes::ShapeRef.new(shape: LimitedString, location_name: "EntityDescription"))
    TopicNamedEntity.add_member(:entity_synonyms, Shapes::ShapeRef.new(shape: Synonyms, location_name: "EntitySynonyms"))
    TopicNamedEntity.add_member(:semantic_entity_type, Shapes::ShapeRef.new(shape: SemanticEntityType, location_name: "SemanticEntityType"))
    TopicNamedEntity.add_member(:definition, Shapes::ShapeRef.new(shape: NamedEntityDefinitions, location_name: "Definition"))
    TopicNamedEntity.struct_class = Types::TopicNamedEntity

    TopicNumericEqualityFilter.add_member(:constant, Shapes::ShapeRef.new(shape: TopicSingularFilterConstant, location_name: "Constant"))
    TopicNumericEqualityFilter.add_member(:aggregation, Shapes::ShapeRef.new(shape: NamedFilterAggType, location_name: "Aggregation"))
    TopicNumericEqualityFilter.struct_class = Types::TopicNumericEqualityFilter

    TopicNumericRangeFilter.add_member(:inclusive, Shapes::ShapeRef.new(shape: Boolean, location_name: "Inclusive"))
    TopicNumericRangeFilter.add_member(:constant, Shapes::ShapeRef.new(shape: TopicRangeFilterConstant, location_name: "Constant"))
    TopicNumericRangeFilter.add_member(:aggregation, Shapes::ShapeRef.new(shape: NamedFilterAggType, location_name: "Aggregation"))
    TopicNumericRangeFilter.struct_class = Types::TopicNumericRangeFilter

    TopicRangeFilterConstant.add_member(:constant_type, Shapes::ShapeRef.new(shape: ConstantType, location_name: "ConstantType"))
    TopicRangeFilterConstant.add_member(:range_constant, Shapes::ShapeRef.new(shape: RangeConstant, location_name: "RangeConstant"))
    TopicRangeFilterConstant.struct_class = Types::TopicRangeFilterConstant

    TopicRefreshDetails.add_member(:refresh_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RefreshArn"))
    TopicRefreshDetails.add_member(:refresh_id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "RefreshId"))
    TopicRefreshDetails.add_member(:refresh_status, Shapes::ShapeRef.new(shape: TopicRefreshStatus, location_name: "RefreshStatus"))
    TopicRefreshDetails.struct_class = Types::TopicRefreshDetails

    TopicRefreshSchedule.add_member(:is_enabled, Shapes::ShapeRef.new(shape: NullableBoolean, required: true, location_name: "IsEnabled"))
    TopicRefreshSchedule.add_member(:based_on_spice_schedule, Shapes::ShapeRef.new(shape: Boolean, required: true, location_name: "BasedOnSpiceSchedule"))
    TopicRefreshSchedule.add_member(:starting_at, Shapes::ShapeRef.new(shape: Timestamp, location_name: "StartingAt"))
    TopicRefreshSchedule.add_member(:timezone, Shapes::ShapeRef.new(shape: LimitedString, location_name: "Timezone"))
    TopicRefreshSchedule.add_member(:repeat_at, Shapes::ShapeRef.new(shape: LimitedString, location_name: "RepeatAt"))
    TopicRefreshSchedule.add_member(:topic_schedule_type, Shapes::ShapeRef.new(shape: TopicScheduleType, location_name: "TopicScheduleType"))
    TopicRefreshSchedule.struct_class = Types::TopicRefreshSchedule

    TopicRefreshScheduleSummaries.member = Shapes::ShapeRef.new(shape: TopicRefreshScheduleSummary)

    TopicRefreshScheduleSummary.add_member(:dataset_id, Shapes::ShapeRef.new(shape: LimitedString, location_name: "DatasetId"))
    TopicRefreshScheduleSummary.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    TopicRefreshScheduleSummary.add_member(:dataset_name, Shapes::ShapeRef.new(shape: LimitedString, location_name: "DatasetName"))
    TopicRefreshScheduleSummary.add_member(:refresh_schedule, Shapes::ShapeRef.new(shape: TopicRefreshSchedule, location_name: "RefreshSchedule"))
    TopicRefreshScheduleSummary.struct_class = Types::TopicRefreshScheduleSummary

    TopicRelativeDateFilter.add_member(:time_granularity, Shapes::ShapeRef.new(shape: TopicTimeGranularity, location_name: "TimeGranularity"))
    TopicRelativeDateFilter.add_member(:relative_date_filter_function, Shapes::ShapeRef.new(shape: TopicRelativeDateFilterFunction, location_name: "RelativeDateFilterFunction"))
    TopicRelativeDateFilter.add_member(:constant, Shapes::ShapeRef.new(shape: TopicSingularFilterConstant, location_name: "Constant"))
    TopicRelativeDateFilter.struct_class = Types::TopicRelativeDateFilter

    TopicSingularFilterConstant.add_member(:constant_type, Shapes::ShapeRef.new(shape: ConstantType, location_name: "ConstantType"))
    TopicSingularFilterConstant.add_member(:singular_constant, Shapes::ShapeRef.new(shape: LimitedString, location_name: "SingularConstant"))
    TopicSingularFilterConstant.struct_class = Types::TopicSingularFilterConstant

    TopicSummaries.member = Shapes::ShapeRef.new(shape: TopicSummary)

    TopicSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    TopicSummary.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    TopicSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    TopicSummary.struct_class = Types::TopicSummary

    TotalAggregationComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    TotalAggregationComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    TotalAggregationComputation.add_member(:value, Shapes::ShapeRef.new(shape: MeasureField, required: true, location_name: "Value"))
    TotalAggregationComputation.struct_class = Types::TotalAggregationComputation

    TotalOptions.add_member(:totals_visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "TotalsVisibility"))
    TotalOptions.add_member(:placement, Shapes::ShapeRef.new(shape: TableTotalsPlacement, location_name: "Placement"))
    TotalOptions.add_member(:scroll_status, Shapes::ShapeRef.new(shape: TableTotalsScrollStatus, location_name: "ScrollStatus"))
    TotalOptions.add_member(:custom_label, Shapes::ShapeRef.new(shape: String, location_name: "CustomLabel"))
    TotalOptions.add_member(:total_cell_style, Shapes::ShapeRef.new(shape: TableCellStyle, location_name: "TotalCellStyle"))
    TotalOptions.struct_class = Types::TotalOptions

    TransformOperation.add_member(:project_operation, Shapes::ShapeRef.new(shape: ProjectOperation, location_name: "ProjectOperation"))
    TransformOperation.add_member(:filter_operation, Shapes::ShapeRef.new(shape: FilterOperation, location_name: "FilterOperation"))
    TransformOperation.add_member(:create_columns_operation, Shapes::ShapeRef.new(shape: CreateColumnsOperation, location_name: "CreateColumnsOperation"))
    TransformOperation.add_member(:rename_column_operation, Shapes::ShapeRef.new(shape: RenameColumnOperation, location_name: "RenameColumnOperation"))
    TransformOperation.add_member(:cast_column_type_operation, Shapes::ShapeRef.new(shape: CastColumnTypeOperation, location_name: "CastColumnTypeOperation"))
    TransformOperation.add_member(:tag_column_operation, Shapes::ShapeRef.new(shape: TagColumnOperation, location_name: "TagColumnOperation"))
    TransformOperation.add_member(:untag_column_operation, Shapes::ShapeRef.new(shape: UntagColumnOperation, location_name: "UntagColumnOperation"))
    TransformOperation.add_member(:override_dataset_parameter_operation, Shapes::ShapeRef.new(shape: OverrideDatasetParameterOperation, location_name: "OverrideDatasetParameterOperation"))
    TransformOperation.struct_class = Types::TransformOperation

    TransformOperationList.member = Shapes::ShapeRef.new(shape: TransformOperation)

    TreeMapAggregatedFieldWells.add_member(:groups, Shapes::ShapeRef.new(shape: TreeMapDimensionFieldList, location_name: "Groups"))
    TreeMapAggregatedFieldWells.add_member(:sizes, Shapes::ShapeRef.new(shape: TreeMapMeasureFieldList, location_name: "Sizes"))
    TreeMapAggregatedFieldWells.add_member(:colors, Shapes::ShapeRef.new(shape: TreeMapMeasureFieldList, location_name: "Colors"))
    TreeMapAggregatedFieldWells.struct_class = Types::TreeMapAggregatedFieldWells

    TreeMapConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: TreeMapFieldWells, location_name: "FieldWells"))
    TreeMapConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: TreeMapSortConfiguration, location_name: "SortConfiguration"))
    TreeMapConfiguration.add_member(:group_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "GroupLabelOptions"))
    TreeMapConfiguration.add_member(:size_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "SizeLabelOptions"))
    TreeMapConfiguration.add_member(:color_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "ColorLabelOptions"))
    TreeMapConfiguration.add_member(:color_scale, Shapes::ShapeRef.new(shape: ColorScale, location_name: "ColorScale"))
    TreeMapConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    TreeMapConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    TreeMapConfiguration.add_member(:tooltip, Shapes::ShapeRef.new(shape: TooltipOptions, location_name: "Tooltip"))
    TreeMapConfiguration.struct_class = Types::TreeMapConfiguration

    TreeMapDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    TreeMapFieldWells.add_member(:tree_map_aggregated_field_wells, Shapes::ShapeRef.new(shape: TreeMapAggregatedFieldWells, location_name: "TreeMapAggregatedFieldWells"))
    TreeMapFieldWells.struct_class = Types::TreeMapFieldWells

    TreeMapMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    TreeMapSortConfiguration.add_member(:tree_map_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "TreeMapSort"))
    TreeMapSortConfiguration.add_member(:tree_map_group_items_limit_configuration, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "TreeMapGroupItemsLimitConfiguration"))
    TreeMapSortConfiguration.struct_class = Types::TreeMapSortConfiguration

    TreeMapVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    TreeMapVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    TreeMapVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    TreeMapVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: TreeMapConfiguration, location_name: "ChartConfiguration"))
    TreeMapVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    TreeMapVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    TreeMapVisual.struct_class = Types::TreeMapVisual

    TrendArrowOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    TrendArrowOptions.struct_class = Types::TrendArrowOptions

    TwitterParameters.add_member(:query, Shapes::ShapeRef.new(shape: Query, required: true, location_name: "Query"))
    TwitterParameters.add_member(:max_rows, Shapes::ShapeRef.new(shape: PositiveInteger, required: true, location_name: "MaxRows"))
    TwitterParameters.struct_class = Types::TwitterParameters

    TypeParameters.key = Shapes::ShapeRef.new(shape: LimitedString)
    TypeParameters.value = Shapes::ShapeRef.new(shape: LimitedString)

    Typography.add_member(:font_families, Shapes::ShapeRef.new(shape: FontList, location_name: "FontFamilies"))
    Typography.struct_class = Types::Typography

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

    UnaggregatedField.add_member(:field_id, Shapes::ShapeRef.new(shape: FieldId, required: true, location_name: "FieldId"))
    UnaggregatedField.add_member(:column, Shapes::ShapeRef.new(shape: ColumnIdentifier, required: true, location_name: "Column"))
    UnaggregatedField.add_member(:format_configuration, Shapes::ShapeRef.new(shape: FormatConfiguration, location_name: "FormatConfiguration"))
    UnaggregatedField.struct_class = Types::UnaggregatedField

    UnaggregatedFieldList.member = Shapes::ShapeRef.new(shape: UnaggregatedField)

    UniqueValuesComputation.add_member(:computation_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "ComputationId"))
    UniqueValuesComputation.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "Name"))
    UniqueValuesComputation.add_member(:category, Shapes::ShapeRef.new(shape: DimensionField, required: true, location_name: "Category"))
    UniqueValuesComputation.struct_class = Types::UniqueValuesComputation

    UnsupportedPricingPlanException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedPricingPlanException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnsupportedPricingPlanException.struct_class = Types::UnsupportedPricingPlanException

    UnsupportedUserEditionException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    UnsupportedUserEditionException.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UnsupportedUserEditionException.struct_class = Types::UnsupportedUserEditionException

    UntagColumnOperation.add_member(:column_name, Shapes::ShapeRef.new(shape: ColumnName, required: true, location_name: "ColumnName"))
    UntagColumnOperation.add_member(:tag_names, Shapes::ShapeRef.new(shape: ColumnTagNames, required: true, location_name: "TagNames"))
    UntagColumnOperation.struct_class = Types::UntagColumnOperation

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
    UpdateAccountSettingsRequest.add_member(:termination_protection_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "TerminationProtectionEnabled"))
    UpdateAccountSettingsRequest.struct_class = Types::UpdateAccountSettingsRequest

    UpdateAccountSettingsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAccountSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAccountSettingsResponse.struct_class = Types::UpdateAccountSettingsResponse

    UpdateAnalysisPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateAnalysisPermissionsRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    UpdateAnalysisPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateAnalysisPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateAnalysisPermissionsRequest.struct_class = Types::UpdateAnalysisPermissionsRequest

    UpdateAnalysisPermissionsResponse.add_member(:analysis_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "AnalysisArn"))
    UpdateAnalysisPermissionsResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    UpdateAnalysisPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateAnalysisPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAnalysisPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAnalysisPermissionsResponse.struct_class = Types::UpdateAnalysisPermissionsResponse

    UpdateAnalysisRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateAnalysisRequest.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "AnalysisId"))
    UpdateAnalysisRequest.add_member(:name, Shapes::ShapeRef.new(shape: AnalysisName, required: true, location_name: "Name"))
    UpdateAnalysisRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateAnalysisRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: AnalysisSourceEntity, location_name: "SourceEntity"))
    UpdateAnalysisRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    UpdateAnalysisRequest.add_member(:definition, Shapes::ShapeRef.new(shape: AnalysisDefinition, location_name: "Definition"))
    UpdateAnalysisRequest.struct_class = Types::UpdateAnalysisRequest

    UpdateAnalysisResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateAnalysisResponse.add_member(:analysis_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "AnalysisId"))
    UpdateAnalysisResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "UpdateStatus"))
    UpdateAnalysisResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateAnalysisResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateAnalysisResponse.struct_class = Types::UpdateAnalysisResponse

    UpdateDashboardPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDashboardPermissionsRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    UpdateDashboardPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateDashboardPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateDashboardPermissionsRequest.add_member(:grant_link_permissions, Shapes::ShapeRef.new(shape: UpdateLinkPermissionList, location_name: "GrantLinkPermissions"))
    UpdateDashboardPermissionsRequest.add_member(:revoke_link_permissions, Shapes::ShapeRef.new(shape: UpdateLinkPermissionList, location_name: "RevokeLinkPermissions"))
    UpdateDashboardPermissionsRequest.struct_class = Types::UpdateDashboardPermissionsRequest

    UpdateDashboardPermissionsResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DashboardArn"))
    UpdateDashboardPermissionsResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
    UpdateDashboardPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateDashboardPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDashboardPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDashboardPermissionsResponse.add_member(:link_sharing_configuration, Shapes::ShapeRef.new(shape: LinkSharingConfiguration, location_name: "LinkSharingConfiguration"))
    UpdateDashboardPermissionsResponse.struct_class = Types::UpdateDashboardPermissionsResponse

    UpdateDashboardPublishedVersionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDashboardPublishedVersionRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    UpdateDashboardPublishedVersionRequest.add_member(:version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location: "uri", location_name: "VersionNumber"))
    UpdateDashboardPublishedVersionRequest.struct_class = Types::UpdateDashboardPublishedVersionRequest

    UpdateDashboardPublishedVersionResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
    UpdateDashboardPublishedVersionResponse.add_member(:dashboard_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DashboardArn"))
    UpdateDashboardPublishedVersionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateDashboardPublishedVersionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateDashboardPublishedVersionResponse.struct_class = Types::UpdateDashboardPublishedVersionResponse

    UpdateDashboardRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateDashboardRequest.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "DashboardId"))
    UpdateDashboardRequest.add_member(:name, Shapes::ShapeRef.new(shape: DashboardName, required: true, location_name: "Name"))
    UpdateDashboardRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: DashboardSourceEntity, location_name: "SourceEntity"))
    UpdateDashboardRequest.add_member(:parameters, Shapes::ShapeRef.new(shape: Parameters, location_name: "Parameters"))
    UpdateDashboardRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    UpdateDashboardRequest.add_member(:dashboard_publish_options, Shapes::ShapeRef.new(shape: DashboardPublishOptions, location_name: "DashboardPublishOptions"))
    UpdateDashboardRequest.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    UpdateDashboardRequest.add_member(:definition, Shapes::ShapeRef.new(shape: DashboardVersionDefinition, location_name: "Definition"))
    UpdateDashboardRequest.struct_class = Types::UpdateDashboardRequest

    UpdateDashboardResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateDashboardResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    UpdateDashboardResponse.add_member(:dashboard_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "DashboardId"))
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
    UpdateDataSetRequest.add_member(:field_folders, Shapes::ShapeRef.new(shape: FieldFolderMap, location_name: "FieldFolders"))
    UpdateDataSetRequest.add_member(:row_level_permission_data_set, Shapes::ShapeRef.new(shape: RowLevelPermissionDataSet, location_name: "RowLevelPermissionDataSet"))
    UpdateDataSetRequest.add_member(:row_level_permission_tag_configuration, Shapes::ShapeRef.new(shape: RowLevelPermissionTagConfiguration, location_name: "RowLevelPermissionTagConfiguration"))
    UpdateDataSetRequest.add_member(:column_level_permission_rules, Shapes::ShapeRef.new(shape: ColumnLevelPermissionRuleList, location_name: "ColumnLevelPermissionRules"))
    UpdateDataSetRequest.add_member(:data_set_usage_configuration, Shapes::ShapeRef.new(shape: DataSetUsageConfiguration, location_name: "DataSetUsageConfiguration"))
    UpdateDataSetRequest.add_member(:dataset_parameters, Shapes::ShapeRef.new(shape: DatasetParameterList, location_name: "DatasetParameters"))
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

    UpdateFolderPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateFolderPermissionsRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    UpdateFolderPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "GrantPermissions"))
    UpdateFolderPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "RevokePermissions"))
    UpdateFolderPermissionsRequest.struct_class = Types::UpdateFolderPermissionsRequest

    UpdateFolderPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location_name: "Status"))
    UpdateFolderPermissionsResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateFolderPermissionsResponse.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    UpdateFolderPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateFolderPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateFolderPermissionsResponse.struct_class = Types::UpdateFolderPermissionsResponse

    UpdateFolderRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateFolderRequest.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, required: true, location: "uri", location_name: "FolderId"))
    UpdateFolderRequest.add_member(:name, Shapes::ShapeRef.new(shape: FolderName, required: true, location_name: "Name"))
    UpdateFolderRequest.struct_class = Types::UpdateFolderRequest

    UpdateFolderResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateFolderResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateFolderResponse.add_member(:folder_id, Shapes::ShapeRef.new(shape: RestrictiveResourceId, location_name: "FolderId"))
    UpdateFolderResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateFolderResponse.struct_class = Types::UpdateFolderResponse

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

    UpdateIpRestrictionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateIpRestrictionRequest.add_member(:ip_restriction_rule_map, Shapes::ShapeRef.new(shape: IpRestrictionRuleMap, location_name: "IpRestrictionRuleMap"))
    UpdateIpRestrictionRequest.add_member(:enabled, Shapes::ShapeRef.new(shape: NullableBoolean, location_name: "Enabled"))
    UpdateIpRestrictionRequest.struct_class = Types::UpdateIpRestrictionRequest

    UpdateIpRestrictionResponse.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, location_name: "AwsAccountId"))
    UpdateIpRestrictionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateIpRestrictionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateIpRestrictionResponse.struct_class = Types::UpdateIpRestrictionResponse

    UpdateLinkPermissionList.member = Shapes::ShapeRef.new(shape: ResourcePermission)

    UpdatePublicSharingSettingsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdatePublicSharingSettingsRequest.add_member(:public_sharing_enabled, Shapes::ShapeRef.new(shape: Boolean, location_name: "PublicSharingEnabled"))
    UpdatePublicSharingSettingsRequest.struct_class = Types::UpdatePublicSharingSettingsRequest

    UpdatePublicSharingSettingsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdatePublicSharingSettingsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdatePublicSharingSettingsResponse.struct_class = Types::UpdatePublicSharingSettingsResponse

    UpdateRefreshScheduleRequest.add_member(:data_set_id, Shapes::ShapeRef.new(shape: ResourceId, required: true, location: "uri", location_name: "DataSetId"))
    UpdateRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateRefreshScheduleRequest.add_member(:schedule, Shapes::ShapeRef.new(shape: RefreshSchedule, required: true, location_name: "Schedule"))
    UpdateRefreshScheduleRequest.struct_class = Types::UpdateRefreshScheduleRequest

    UpdateRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateRefreshScheduleResponse.add_member(:schedule_id, Shapes::ShapeRef.new(shape: String, location_name: "ScheduleId"))
    UpdateRefreshScheduleResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateRefreshScheduleResponse.struct_class = Types::UpdateRefreshScheduleResponse

    UpdateResourcePermissionList.member = Shapes::ShapeRef.new(shape: ResourcePermission)

    UpdateTemplateAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTemplateAliasRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    UpdateTemplateAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    UpdateTemplateAliasRequest.add_member(:template_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "TemplateVersionNumber"))
    UpdateTemplateAliasRequest.struct_class = Types::UpdateTemplateAliasRequest

    UpdateTemplateAliasResponse.add_member(:template_alias, Shapes::ShapeRef.new(shape: TemplateAlias, location_name: "TemplateAlias"))
    UpdateTemplateAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTemplateAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTemplateAliasResponse.struct_class = Types::UpdateTemplateAliasResponse

    UpdateTemplatePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTemplatePermissionsRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    UpdateTemplatePermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateTemplatePermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateTemplatePermissionsRequest.struct_class = Types::UpdateTemplatePermissionsRequest

    UpdateTemplatePermissionsResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    UpdateTemplatePermissionsResponse.add_member(:template_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TemplateArn"))
    UpdateTemplatePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateTemplatePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTemplatePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTemplatePermissionsResponse.struct_class = Types::UpdateTemplatePermissionsResponse

    UpdateTemplateRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTemplateRequest.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "TemplateId"))
    UpdateTemplateRequest.add_member(:source_entity, Shapes::ShapeRef.new(shape: TemplateSourceEntity, location_name: "SourceEntity"))
    UpdateTemplateRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    UpdateTemplateRequest.add_member(:name, Shapes::ShapeRef.new(shape: TemplateName, location_name: "Name"))
    UpdateTemplateRequest.add_member(:definition, Shapes::ShapeRef.new(shape: TemplateVersionDefinition, location_name: "Definition"))
    UpdateTemplateRequest.struct_class = Types::UpdateTemplateRequest

    UpdateTemplateResponse.add_member(:template_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "TemplateId"))
    UpdateTemplateResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateTemplateResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    UpdateTemplateResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    UpdateTemplateResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTemplateResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTemplateResponse.struct_class = Types::UpdateTemplateResponse

    UpdateThemeAliasRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateThemeAliasRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    UpdateThemeAliasRequest.add_member(:alias_name, Shapes::ShapeRef.new(shape: AliasName, required: true, location: "uri", location_name: "AliasName"))
    UpdateThemeAliasRequest.add_member(:theme_version_number, Shapes::ShapeRef.new(shape: VersionNumber, required: true, location_name: "ThemeVersionNumber"))
    UpdateThemeAliasRequest.struct_class = Types::UpdateThemeAliasRequest

    UpdateThemeAliasResponse.add_member(:theme_alias, Shapes::ShapeRef.new(shape: ThemeAlias, location_name: "ThemeAlias"))
    UpdateThemeAliasResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateThemeAliasResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateThemeAliasResponse.struct_class = Types::UpdateThemeAliasResponse

    UpdateThemePermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateThemePermissionsRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    UpdateThemePermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateThemePermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateThemePermissionsRequest.struct_class = Types::UpdateThemePermissionsRequest

    UpdateThemePermissionsResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    UpdateThemePermissionsResponse.add_member(:theme_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "ThemeArn"))
    UpdateThemePermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateThemePermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateThemePermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateThemePermissionsResponse.struct_class = Types::UpdateThemePermissionsResponse

    UpdateThemeRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateThemeRequest.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location: "uri", location_name: "ThemeId"))
    UpdateThemeRequest.add_member(:name, Shapes::ShapeRef.new(shape: ThemeName, location_name: "Name"))
    UpdateThemeRequest.add_member(:base_theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "BaseThemeId"))
    UpdateThemeRequest.add_member(:version_description, Shapes::ShapeRef.new(shape: VersionDescription, location_name: "VersionDescription"))
    UpdateThemeRequest.add_member(:configuration, Shapes::ShapeRef.new(shape: ThemeConfiguration, location_name: "Configuration"))
    UpdateThemeRequest.struct_class = Types::UpdateThemeRequest

    UpdateThemeResponse.add_member(:theme_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, location_name: "ThemeId"))
    UpdateThemeResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateThemeResponse.add_member(:version_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "VersionArn"))
    UpdateThemeResponse.add_member(:creation_status, Shapes::ShapeRef.new(shape: ResourceStatus, location_name: "CreationStatus"))
    UpdateThemeResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateThemeResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateThemeResponse.struct_class = Types::UpdateThemeResponse

    UpdateTopicPermissionsRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTopicPermissionsRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    UpdateTopicPermissionsRequest.add_member(:grant_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "GrantPermissions"))
    UpdateTopicPermissionsRequest.add_member(:revoke_permissions, Shapes::ShapeRef.new(shape: UpdateResourcePermissionList, location_name: "RevokePermissions"))
    UpdateTopicPermissionsRequest.struct_class = Types::UpdateTopicPermissionsRequest

    UpdateTopicPermissionsResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    UpdateTopicPermissionsResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    UpdateTopicPermissionsResponse.add_member(:permissions, Shapes::ShapeRef.new(shape: ResourcePermissionList, location_name: "Permissions"))
    UpdateTopicPermissionsResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTopicPermissionsResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTopicPermissionsResponse.struct_class = Types::UpdateTopicPermissionsResponse

    UpdateTopicRefreshScheduleRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTopicRefreshScheduleRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    UpdateTopicRefreshScheduleRequest.add_member(:dataset_id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "DatasetId"))
    UpdateTopicRefreshScheduleRequest.add_member(:refresh_schedule, Shapes::ShapeRef.new(shape: TopicRefreshSchedule, required: true, location_name: "RefreshSchedule"))
    UpdateTopicRefreshScheduleRequest.struct_class = Types::UpdateTopicRefreshScheduleRequest

    UpdateTopicRefreshScheduleResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    UpdateTopicRefreshScheduleResponse.add_member(:topic_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "TopicArn"))
    UpdateTopicRefreshScheduleResponse.add_member(:dataset_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "DatasetArn"))
    UpdateTopicRefreshScheduleResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTopicRefreshScheduleResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTopicRefreshScheduleResponse.struct_class = Types::UpdateTopicRefreshScheduleResponse

    UpdateTopicRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateTopicRequest.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, required: true, location: "uri", location_name: "TopicId"))
    UpdateTopicRequest.add_member(:topic, Shapes::ShapeRef.new(shape: TopicDetails, required: true, location_name: "Topic"))
    UpdateTopicRequest.struct_class = Types::UpdateTopicRequest

    UpdateTopicResponse.add_member(:topic_id, Shapes::ShapeRef.new(shape: TopicId, location_name: "TopicId"))
    UpdateTopicResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateTopicResponse.add_member(:refresh_arn, Shapes::ShapeRef.new(shape: Arn, location_name: "RefreshArn"))
    UpdateTopicResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateTopicResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateTopicResponse.struct_class = Types::UpdateTopicResponse

    UpdateUserRequest.add_member(:user_name, Shapes::ShapeRef.new(shape: UserName, required: true, location: "uri", location_name: "UserName"))
    UpdateUserRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateUserRequest.add_member(:namespace, Shapes::ShapeRef.new(shape: Namespace, required: true, location: "uri", location_name: "Namespace"))
    UpdateUserRequest.add_member(:email, Shapes::ShapeRef.new(shape: String, required: true, location_name: "Email"))
    UpdateUserRequest.add_member(:role, Shapes::ShapeRef.new(shape: UserRole, required: true, location_name: "Role"))
    UpdateUserRequest.add_member(:custom_permissions_name, Shapes::ShapeRef.new(shape: RoleName, location_name: "CustomPermissionsName"))
    UpdateUserRequest.add_member(:unapply_custom_permissions, Shapes::ShapeRef.new(shape: Boolean, location_name: "UnapplyCustomPermissions"))
    UpdateUserRequest.add_member(:external_login_federation_provider_type, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginFederationProviderType"))
    UpdateUserRequest.add_member(:custom_federation_provider_url, Shapes::ShapeRef.new(shape: String, location_name: "CustomFederationProviderUrl"))
    UpdateUserRequest.add_member(:external_login_id, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginId"))
    UpdateUserRequest.struct_class = Types::UpdateUserRequest

    UpdateUserResponse.add_member(:user, Shapes::ShapeRef.new(shape: User, location_name: "User"))
    UpdateUserResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateUserResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateUserResponse.struct_class = Types::UpdateUserResponse

    UpdateVPCConnectionRequest.add_member(:aws_account_id, Shapes::ShapeRef.new(shape: AwsAccountId, required: true, location: "uri", location_name: "AwsAccountId"))
    UpdateVPCConnectionRequest.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, required: true, location: "uri", location_name: "VPCConnectionId"))
    UpdateVPCConnectionRequest.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, required: true, location_name: "Name"))
    UpdateVPCConnectionRequest.add_member(:subnet_ids, Shapes::ShapeRef.new(shape: SubnetIdList, required: true, location_name: "SubnetIds"))
    UpdateVPCConnectionRequest.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, required: true, location_name: "SecurityGroupIds"))
    UpdateVPCConnectionRequest.add_member(:dns_resolvers, Shapes::ShapeRef.new(shape: DnsResolverList, location_name: "DnsResolvers"))
    UpdateVPCConnectionRequest.add_member(:role_arn, Shapes::ShapeRef.new(shape: RoleArn, required: true, location_name: "RoleArn"))
    UpdateVPCConnectionRequest.struct_class = Types::UpdateVPCConnectionRequest

    UpdateVPCConnectionResponse.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    UpdateVPCConnectionResponse.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, location_name: "VPCConnectionId"))
    UpdateVPCConnectionResponse.add_member(:update_status, Shapes::ShapeRef.new(shape: VPCConnectionResourceStatus, location_name: "UpdateStatus"))
    UpdateVPCConnectionResponse.add_member(:availability_status, Shapes::ShapeRef.new(shape: VPCConnectionAvailabilityStatus, location_name: "AvailabilityStatus"))
    UpdateVPCConnectionResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: String, location_name: "RequestId"))
    UpdateVPCConnectionResponse.add_member(:status, Shapes::ShapeRef.new(shape: StatusCode, location: "statusCode", location_name: "Status"))
    UpdateVPCConnectionResponse.struct_class = Types::UpdateVPCConnectionResponse

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
    User.add_member(:external_login_federation_provider_type, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginFederationProviderType"))
    User.add_member(:external_login_federation_provider_url, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginFederationProviderUrl"))
    User.add_member(:external_login_id, Shapes::ShapeRef.new(shape: String, location_name: "ExternalLoginId"))
    User.struct_class = Types::User

    UserList.member = Shapes::ShapeRef.new(shape: User)

    VPCConnection.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, location_name: "VPCConnectionId"))
    VPCConnection.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    VPCConnection.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    VPCConnection.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VPCId"))
    VPCConnection.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIds"))
    VPCConnection.add_member(:dns_resolvers, Shapes::ShapeRef.new(shape: StringList, location_name: "DnsResolvers"))
    VPCConnection.add_member(:status, Shapes::ShapeRef.new(shape: VPCConnectionResourceStatus, location_name: "Status"))
    VPCConnection.add_member(:availability_status, Shapes::ShapeRef.new(shape: VPCConnectionAvailabilityStatus, location_name: "AvailabilityStatus"))
    VPCConnection.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "NetworkInterfaces"))
    VPCConnection.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    VPCConnection.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    VPCConnection.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    VPCConnection.struct_class = Types::VPCConnection

    VPCConnectionSummary.add_member(:vpc_connection_id, Shapes::ShapeRef.new(shape: VPCConnectionResourceIdUnrestricted, location_name: "VPCConnectionId"))
    VPCConnectionSummary.add_member(:arn, Shapes::ShapeRef.new(shape: Arn, location_name: "Arn"))
    VPCConnectionSummary.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "Name"))
    VPCConnectionSummary.add_member(:vpc_id, Shapes::ShapeRef.new(shape: String, location_name: "VPCId"))
    VPCConnectionSummary.add_member(:security_group_ids, Shapes::ShapeRef.new(shape: SecurityGroupIdList, location_name: "SecurityGroupIds"))
    VPCConnectionSummary.add_member(:dns_resolvers, Shapes::ShapeRef.new(shape: StringList, location_name: "DnsResolvers"))
    VPCConnectionSummary.add_member(:status, Shapes::ShapeRef.new(shape: VPCConnectionResourceStatus, location_name: "Status"))
    VPCConnectionSummary.add_member(:availability_status, Shapes::ShapeRef.new(shape: VPCConnectionAvailabilityStatus, location_name: "AvailabilityStatus"))
    VPCConnectionSummary.add_member(:network_interfaces, Shapes::ShapeRef.new(shape: NetworkInterfaceList, location_name: "NetworkInterfaces"))
    VPCConnectionSummary.add_member(:role_arn, Shapes::ShapeRef.new(shape: String, location_name: "RoleArn"))
    VPCConnectionSummary.add_member(:created_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreatedTime"))
    VPCConnectionSummary.add_member(:last_updated_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "LastUpdatedTime"))
    VPCConnectionSummary.struct_class = Types::VPCConnectionSummary

    VPCConnectionSummaryList.member = Shapes::ShapeRef.new(shape: VPCConnectionSummary)

    VisibleRangeOptions.add_member(:percent_range, Shapes::ShapeRef.new(shape: PercentVisibleRange, location_name: "PercentRange"))
    VisibleRangeOptions.struct_class = Types::VisibleRangeOptions

    Visual.add_member(:table_visual, Shapes::ShapeRef.new(shape: TableVisual, location_name: "TableVisual"))
    Visual.add_member(:pivot_table_visual, Shapes::ShapeRef.new(shape: PivotTableVisual, location_name: "PivotTableVisual"))
    Visual.add_member(:bar_chart_visual, Shapes::ShapeRef.new(shape: BarChartVisual, location_name: "BarChartVisual"))
    Visual.add_member(:kpi_visual, Shapes::ShapeRef.new(shape: KPIVisual, location_name: "KPIVisual"))
    Visual.add_member(:pie_chart_visual, Shapes::ShapeRef.new(shape: PieChartVisual, location_name: "PieChartVisual"))
    Visual.add_member(:gauge_chart_visual, Shapes::ShapeRef.new(shape: GaugeChartVisual, location_name: "GaugeChartVisual"))
    Visual.add_member(:line_chart_visual, Shapes::ShapeRef.new(shape: LineChartVisual, location_name: "LineChartVisual"))
    Visual.add_member(:heat_map_visual, Shapes::ShapeRef.new(shape: HeatMapVisual, location_name: "HeatMapVisual"))
    Visual.add_member(:tree_map_visual, Shapes::ShapeRef.new(shape: TreeMapVisual, location_name: "TreeMapVisual"))
    Visual.add_member(:geospatial_map_visual, Shapes::ShapeRef.new(shape: GeospatialMapVisual, location_name: "GeospatialMapVisual"))
    Visual.add_member(:filled_map_visual, Shapes::ShapeRef.new(shape: FilledMapVisual, location_name: "FilledMapVisual"))
    Visual.add_member(:funnel_chart_visual, Shapes::ShapeRef.new(shape: FunnelChartVisual, location_name: "FunnelChartVisual"))
    Visual.add_member(:scatter_plot_visual, Shapes::ShapeRef.new(shape: ScatterPlotVisual, location_name: "ScatterPlotVisual"))
    Visual.add_member(:combo_chart_visual, Shapes::ShapeRef.new(shape: ComboChartVisual, location_name: "ComboChartVisual"))
    Visual.add_member(:box_plot_visual, Shapes::ShapeRef.new(shape: BoxPlotVisual, location_name: "BoxPlotVisual"))
    Visual.add_member(:waterfall_visual, Shapes::ShapeRef.new(shape: WaterfallVisual, location_name: "WaterfallVisual"))
    Visual.add_member(:histogram_visual, Shapes::ShapeRef.new(shape: HistogramVisual, location_name: "HistogramVisual"))
    Visual.add_member(:word_cloud_visual, Shapes::ShapeRef.new(shape: WordCloudVisual, location_name: "WordCloudVisual"))
    Visual.add_member(:insight_visual, Shapes::ShapeRef.new(shape: InsightVisual, location_name: "InsightVisual"))
    Visual.add_member(:sankey_diagram_visual, Shapes::ShapeRef.new(shape: SankeyDiagramVisual, location_name: "SankeyDiagramVisual"))
    Visual.add_member(:custom_content_visual, Shapes::ShapeRef.new(shape: CustomContentVisual, location_name: "CustomContentVisual"))
    Visual.add_member(:empty_visual, Shapes::ShapeRef.new(shape: EmptyVisual, location_name: "EmptyVisual"))
    Visual.add_member(:radar_chart_visual, Shapes::ShapeRef.new(shape: RadarChartVisual, location_name: "RadarChartVisual"))
    Visual.struct_class = Types::Visual

    VisualAxisSortOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    VisualAxisSortOption.struct_class = Types::VisualAxisSortOption

    VisualCustomAction.add_member(:custom_action_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "CustomActionId"))
    VisualCustomAction.add_member(:name, Shapes::ShapeRef.new(shape: VisualCustomActionName, required: true, location_name: "Name"))
    VisualCustomAction.add_member(:status, Shapes::ShapeRef.new(shape: WidgetStatus, location_name: "Status"))
    VisualCustomAction.add_member(:trigger, Shapes::ShapeRef.new(shape: VisualCustomActionTrigger, required: true, location_name: "Trigger"))
    VisualCustomAction.add_member(:action_operations, Shapes::ShapeRef.new(shape: VisualCustomActionOperationList, required: true, location_name: "ActionOperations"))
    VisualCustomAction.struct_class = Types::VisualCustomAction

    VisualCustomActionList.member = Shapes::ShapeRef.new(shape: VisualCustomAction)

    VisualCustomActionOperation.add_member(:filter_operation, Shapes::ShapeRef.new(shape: CustomActionFilterOperation, location_name: "FilterOperation"))
    VisualCustomActionOperation.add_member(:navigation_operation, Shapes::ShapeRef.new(shape: CustomActionNavigationOperation, location_name: "NavigationOperation"))
    VisualCustomActionOperation.add_member(:url_operation, Shapes::ShapeRef.new(shape: CustomActionURLOperation, location_name: "URLOperation"))
    VisualCustomActionOperation.add_member(:set_parameters_operation, Shapes::ShapeRef.new(shape: CustomActionSetParametersOperation, location_name: "SetParametersOperation"))
    VisualCustomActionOperation.struct_class = Types::VisualCustomActionOperation

    VisualCustomActionOperationList.member = Shapes::ShapeRef.new(shape: VisualCustomActionOperation)

    VisualList.member = Shapes::ShapeRef.new(shape: Visual)

    VisualMenuOption.add_member(:availability_status, Shapes::ShapeRef.new(shape: DashboardBehavior, location_name: "AvailabilityStatus"))
    VisualMenuOption.struct_class = Types::VisualMenuOption

    VisualPalette.add_member(:chart_color, Shapes::ShapeRef.new(shape: HexColor, location_name: "ChartColor"))
    VisualPalette.add_member(:color_map, Shapes::ShapeRef.new(shape: DataPathColorList, location_name: "ColorMap"))
    VisualPalette.struct_class = Types::VisualPalette

    VisualSubtitleLabelOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    VisualSubtitleLabelOptions.add_member(:format_text, Shapes::ShapeRef.new(shape: LongFormatText, location_name: "FormatText"))
    VisualSubtitleLabelOptions.struct_class = Types::VisualSubtitleLabelOptions

    VisualTitleLabelOptions.add_member(:visibility, Shapes::ShapeRef.new(shape: Visibility, location_name: "Visibility"))
    VisualTitleLabelOptions.add_member(:format_text, Shapes::ShapeRef.new(shape: ShortFormatText, location_name: "FormatText"))
    VisualTitleLabelOptions.struct_class = Types::VisualTitleLabelOptions

    VpcConnectionProperties.add_member(:vpc_connection_arn, Shapes::ShapeRef.new(shape: Arn, required: true, location_name: "VpcConnectionArn"))
    VpcConnectionProperties.struct_class = Types::VpcConnectionProperties

    WaterfallChartAggregatedFieldWells.add_member(:categories, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Categories"))
    WaterfallChartAggregatedFieldWells.add_member(:values, Shapes::ShapeRef.new(shape: MeasureFieldList, location_name: "Values"))
    WaterfallChartAggregatedFieldWells.add_member(:breakdowns, Shapes::ShapeRef.new(shape: DimensionFieldList, location_name: "Breakdowns"))
    WaterfallChartAggregatedFieldWells.struct_class = Types::WaterfallChartAggregatedFieldWells

    WaterfallChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: WaterfallChartFieldWells, location_name: "FieldWells"))
    WaterfallChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: WaterfallChartSortConfiguration, location_name: "SortConfiguration"))
    WaterfallChartConfiguration.add_member(:waterfall_chart_options, Shapes::ShapeRef.new(shape: WaterfallChartOptions, location_name: "WaterfallChartOptions"))
    WaterfallChartConfiguration.add_member(:category_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryAxisLabelOptions"))
    WaterfallChartConfiguration.add_member(:category_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "CategoryAxisDisplayOptions"))
    WaterfallChartConfiguration.add_member(:primary_y_axis_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "PrimaryYAxisLabelOptions"))
    WaterfallChartConfiguration.add_member(:primary_y_axis_display_options, Shapes::ShapeRef.new(shape: AxisDisplayOptions, location_name: "PrimaryYAxisDisplayOptions"))
    WaterfallChartConfiguration.add_member(:legend, Shapes::ShapeRef.new(shape: LegendOptions, location_name: "Legend"))
    WaterfallChartConfiguration.add_member(:data_labels, Shapes::ShapeRef.new(shape: DataLabelOptions, location_name: "DataLabels"))
    WaterfallChartConfiguration.add_member(:visual_palette, Shapes::ShapeRef.new(shape: VisualPalette, location_name: "VisualPalette"))
    WaterfallChartConfiguration.struct_class = Types::WaterfallChartConfiguration

    WaterfallChartFieldWells.add_member(:waterfall_chart_aggregated_field_wells, Shapes::ShapeRef.new(shape: WaterfallChartAggregatedFieldWells, location_name: "WaterfallChartAggregatedFieldWells"))
    WaterfallChartFieldWells.struct_class = Types::WaterfallChartFieldWells

    WaterfallChartOptions.add_member(:total_bar_label, Shapes::ShapeRef.new(shape: String, location_name: "TotalBarLabel"))
    WaterfallChartOptions.struct_class = Types::WaterfallChartOptions

    WaterfallChartSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    WaterfallChartSortConfiguration.add_member(:breakdown_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "BreakdownItemsLimit"))
    WaterfallChartSortConfiguration.struct_class = Types::WaterfallChartSortConfiguration

    WaterfallVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    WaterfallVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    WaterfallVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    WaterfallVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: WaterfallChartConfiguration, location_name: "ChartConfiguration"))
    WaterfallVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    WaterfallVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    WaterfallVisual.struct_class = Types::WaterfallVisual

    WhatIfPointScenario.add_member(:date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "Date"))
    WhatIfPointScenario.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    WhatIfPointScenario.struct_class = Types::WhatIfPointScenario

    WhatIfRangeScenario.add_member(:start_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "StartDate"))
    WhatIfRangeScenario.add_member(:end_date, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "EndDate"))
    WhatIfRangeScenario.add_member(:value, Shapes::ShapeRef.new(shape: Double, required: true, location_name: "Value"))
    WhatIfRangeScenario.struct_class = Types::WhatIfRangeScenario

    WordCloudAggregatedFieldWells.add_member(:group_by, Shapes::ShapeRef.new(shape: WordCloudDimensionFieldList, location_name: "GroupBy"))
    WordCloudAggregatedFieldWells.add_member(:size, Shapes::ShapeRef.new(shape: WordCloudMeasureFieldList, location_name: "Size"))
    WordCloudAggregatedFieldWells.struct_class = Types::WordCloudAggregatedFieldWells

    WordCloudChartConfiguration.add_member(:field_wells, Shapes::ShapeRef.new(shape: WordCloudFieldWells, location_name: "FieldWells"))
    WordCloudChartConfiguration.add_member(:sort_configuration, Shapes::ShapeRef.new(shape: WordCloudSortConfiguration, location_name: "SortConfiguration"))
    WordCloudChartConfiguration.add_member(:category_label_options, Shapes::ShapeRef.new(shape: ChartAxisLabelOptions, location_name: "CategoryLabelOptions"))
    WordCloudChartConfiguration.add_member(:word_cloud_options, Shapes::ShapeRef.new(shape: WordCloudOptions, location_name: "WordCloudOptions"))
    WordCloudChartConfiguration.struct_class = Types::WordCloudChartConfiguration

    WordCloudDimensionFieldList.member = Shapes::ShapeRef.new(shape: DimensionField)

    WordCloudFieldWells.add_member(:word_cloud_aggregated_field_wells, Shapes::ShapeRef.new(shape: WordCloudAggregatedFieldWells, location_name: "WordCloudAggregatedFieldWells"))
    WordCloudFieldWells.struct_class = Types::WordCloudFieldWells

    WordCloudMeasureFieldList.member = Shapes::ShapeRef.new(shape: MeasureField)

    WordCloudOptions.add_member(:word_orientation, Shapes::ShapeRef.new(shape: WordCloudWordOrientation, location_name: "WordOrientation"))
    WordCloudOptions.add_member(:word_scaling, Shapes::ShapeRef.new(shape: WordCloudWordScaling, location_name: "WordScaling"))
    WordCloudOptions.add_member(:cloud_layout, Shapes::ShapeRef.new(shape: WordCloudCloudLayout, location_name: "CloudLayout"))
    WordCloudOptions.add_member(:word_casing, Shapes::ShapeRef.new(shape: WordCloudWordCasing, location_name: "WordCasing"))
    WordCloudOptions.add_member(:word_padding, Shapes::ShapeRef.new(shape: WordCloudWordPadding, location_name: "WordPadding"))
    WordCloudOptions.add_member(:maximum_string_length, Shapes::ShapeRef.new(shape: WordCloudMaximumStringLength, location_name: "MaximumStringLength"))
    WordCloudOptions.struct_class = Types::WordCloudOptions

    WordCloudSortConfiguration.add_member(:category_items_limit, Shapes::ShapeRef.new(shape: ItemsLimitConfiguration, location_name: "CategoryItemsLimit"))
    WordCloudSortConfiguration.add_member(:category_sort, Shapes::ShapeRef.new(shape: FieldSortOptionsList, location_name: "CategorySort"))
    WordCloudSortConfiguration.struct_class = Types::WordCloudSortConfiguration

    WordCloudVisual.add_member(:visual_id, Shapes::ShapeRef.new(shape: ShortRestrictiveResourceId, required: true, location_name: "VisualId"))
    WordCloudVisual.add_member(:title, Shapes::ShapeRef.new(shape: VisualTitleLabelOptions, location_name: "Title"))
    WordCloudVisual.add_member(:subtitle, Shapes::ShapeRef.new(shape: VisualSubtitleLabelOptions, location_name: "Subtitle"))
    WordCloudVisual.add_member(:chart_configuration, Shapes::ShapeRef.new(shape: WordCloudChartConfiguration, location_name: "ChartConfiguration"))
    WordCloudVisual.add_member(:actions, Shapes::ShapeRef.new(shape: VisualCustomActionList, location_name: "Actions"))
    WordCloudVisual.add_member(:column_hierarchies, Shapes::ShapeRef.new(shape: ColumnHierarchyList, location_name: "ColumnHierarchies"))
    WordCloudVisual.struct_class = Types::WordCloudVisual


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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:create_account_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateAccountSubscription"
        o.http_method = "POST"
        o.http_request_uri = "/account/{AwsAccountId}"
        o.input = Shapes::ShapeRef.new(shape: CreateAccountSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateAccountSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:create_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFolder"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: CreateFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_folder_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateFolderMembership"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}/members/{MemberType}/{MemberId}"
        o.input = Shapes::ShapeRef.new(shape: CreateFolderMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateFolderMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
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

      api.add_operation(:create_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateRefreshSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules"
        o.input = Shapes::ShapeRef.new(shape: CreateRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:create_topic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTopic"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics"
        o.input = Shapes::ShapeRef.new(shape: CreateTopicRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTopicResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_topic_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateTopicRefreshSchedule"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules"
        o.input = Shapes::ShapeRef.new(shape: CreateTopicRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateTopicRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:create_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "CreateVPCConnection"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/vpc-connections"
        o.input = Shapes::ShapeRef.new(shape: CreateVPCConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: CreateVPCConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:delete_account_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteAccountSubscription"
        o.http_method = "DELETE"
        o.http_request_uri = "/account/{AwsAccountId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteAccountSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteAccountSubscriptionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
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

      api.add_operation(:delete_data_set_refresh_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteDataSetRefreshProperties"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-properties"
        o.input = Shapes::ShapeRef.new(shape: DeleteDataSetRefreshPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteDataSetRefreshPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:delete_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFolder"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_folder_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteFolderMembership"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}/members/{MemberType}/{MemberId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteFolderMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteFolderMembershipResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
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

      api.add_operation(:delete_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteRefreshSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules/{ScheduleId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:delete_topic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTopic"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTopicRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTopicResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:delete_topic_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteTopicRefreshSchedule"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules/{DatasetId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteTopicRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteTopicRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:delete_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteVPCConnection"
        o.http_method = "DELETE"
        o.http_request_uri = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: DeleteVPCConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteVPCConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:describe_account_subscription, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAccountSubscription"
        o.http_method = "GET"
        o.http_request_uri = "/account/{AwsAccountId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAccountSubscriptionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAccountSubscriptionResponse)
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

      api.add_operation(:describe_analysis_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAnalysisDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/analyses/{AnalysisId}/definition"
        o.input = Shapes::ShapeRef.new(shape: DescribeAnalysisDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAnalysisDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:describe_asset_bundle_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetBundleExportJob"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/asset-bundle-export-jobs/{AssetBundleExportJobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetBundleExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetBundleExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:describe_asset_bundle_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeAssetBundleImportJob"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/asset-bundle-import-jobs/{AssetBundleImportJobId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeAssetBundleImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeAssetBundleImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_dashboard_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDashboardDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/dashboards/{DashboardId}/definition"
        o.input = Shapes::ShapeRef.new(shape: DescribeDashboardDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDashboardDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:describe_data_set_refresh_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeDataSetRefreshProperties"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-properties"
        o.input = Shapes::ShapeRef.new(shape: DescribeDataSetRefreshPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeDataSetRefreshPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
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

      api.add_operation(:describe_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFolder"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_folder_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFolderPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeFolderPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFolderPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_folder_resolved_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeFolderResolvedPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}/resolved-permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeFolderResolvedPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeFolderResolvedPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
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

      api.add_operation(:describe_group_membership, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeGroupMembership"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups/{GroupName}/members/{MemberName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeGroupMembershipRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeGroupMembershipResponse)
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

      api.add_operation(:describe_ip_restriction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeIpRestriction"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/ip-restriction"
        o.input = Shapes::ShapeRef.new(shape: DescribeIpRestrictionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeIpRestrictionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:describe_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeRefreshSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules/{ScheduleId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:describe_template_definition, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTemplateDefinition"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/templates/{TemplateId}/definition"
        o.input = Shapes::ShapeRef.new(shape: DescribeTemplateDefinitionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTemplateDefinitionResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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

      api.add_operation(:describe_topic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTopic"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTopicRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTopicResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_topic_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTopicPermissions"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: DescribeTopicPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTopicPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_topic_refresh, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTopicRefresh"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/refresh/{RefreshId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTopicRefreshRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTopicRefreshResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:describe_topic_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeTopicRefreshSchedule"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules/{DatasetId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeTopicRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeTopicRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:describe_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeVPCConnection"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: DescribeVPCConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeVPCConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:generate_embed_url_for_anonymous_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateEmbedUrlForAnonymousUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/embed-url/anonymous-user"
        o.input = Shapes::ShapeRef.new(shape: GenerateEmbedUrlForAnonymousUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateEmbedUrlForAnonymousUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: SessionLifetimeInMinutesInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPricingPlanException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:generate_embed_url_for_registered_user, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GenerateEmbedUrlForRegisteredUser"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/embed-url/registered-user"
        o.input = Shapes::ShapeRef.new(shape: GenerateEmbedUrlForRegisteredUserRequest)
        o.output = Shapes::ShapeRef.new(shape: GenerateEmbedUrlForRegisteredUserResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: QuickSightUserNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: SessionLifetimeInMinutesInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPricingPlanException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPricingPlanException)
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

      api.add_operation(:list_asset_bundle_export_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetBundleExportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/asset-bundle-export-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListAssetBundleExportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetBundleExportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_asset_bundle_import_jobs, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListAssetBundleImportJobs"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/asset-bundle-import-jobs"
        o.input = Shapes::ShapeRef.new(shape: ListAssetBundleImportJobsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListAssetBundleImportJobsResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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

      api.add_operation(:list_folder_members, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFolderMembers"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}/members"
        o.input = Shapes::ShapeRef.new(shape: ListFolderMembersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFolderMembersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_folders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListFolders"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders"
        o.input = Shapes::ShapeRef.new(shape: ListFoldersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListFoldersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/v2/iam-policy-assignments"
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

      api.add_operation(:list_refresh_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListRefreshSchedules"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules"
        o.input = Shapes::ShapeRef.new(shape: ListRefreshSchedulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListRefreshSchedulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
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
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_topic_refresh_schedules, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTopicRefreshSchedules"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules"
        o.input = Shapes::ShapeRef.new(shape: ListTopicRefreshSchedulesRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTopicRefreshSchedulesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:list_topics, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListTopics"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics"
        o.input = Shapes::ShapeRef.new(shape: ListTopicsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListTopicsResponse)
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

      api.add_operation(:list_vpc_connections, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListVPCConnections"
        o.http_method = "GET"
        o.http_request_uri = "/accounts/{AwsAccountId}/vpc-connections"
        o.input = Shapes::ShapeRef.new(shape: ListVPCConnectionsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListVPCConnectionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
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

      api.add_operation(:put_data_set_refresh_properties, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutDataSetRefreshProperties"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-properties"
        o.input = Shapes::ShapeRef.new(shape: PutDataSetRefreshPropertiesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutDataSetRefreshPropertiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
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

      api.add_operation(:search_data_sets, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDataSets"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/search/data-sets"
        o.input = Shapes::ShapeRef.new(shape: SearchDataSetsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDataSetsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_data_sources, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchDataSources"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/search/data-sources"
        o.input = Shapes::ShapeRef.new(shape: SearchDataSourcesRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchDataSourcesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:search_folders, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchFolders"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/search/folders"
        o.input = Shapes::ShapeRef.new(shape: SearchFoldersRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchFoldersResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:search_groups, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SearchGroups"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/namespaces/{Namespace}/groups-search"
        o.input = Shapes::ShapeRef.new(shape: SearchGroupsRequest)
        o.output = Shapes::ShapeRef.new(shape: SearchGroupsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidNextTokenException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceUnavailableException)
      end)

      api.add_operation(:start_asset_bundle_export_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssetBundleExportJob"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/asset-bundle-export-jobs/export"
        o.input = Shapes::ShapeRef.new(shape: StartAssetBundleExportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssetBundleExportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
      end)

      api.add_operation(:start_asset_bundle_import_job, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssetBundleImportJob"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/asset-bundle-import-jobs/import"
        o.input = Shapes::ShapeRef.new(shape: StartAssetBundleImportJobRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssetBundleImportJobResponse)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
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
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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

      api.add_operation(:update_folder, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFolder"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateFolderRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFolderResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_folder_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateFolderPermissions"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/folders/{FolderId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateFolderPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateFolderPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
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

      api.add_operation(:update_ip_restriction, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateIpRestriction"
        o.http_method = "POST"
        o.http_request_uri = "/accounts/{AwsAccountId}/ip-restriction"
        o.input = Shapes::ShapeRef.new(shape: UpdateIpRestrictionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateIpRestrictionResponse)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_public_sharing_settings, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdatePublicSharingSettings"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/public-sharing-settings"
        o.input = Shapes::ShapeRef.new(shape: UpdatePublicSharingSettingsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdatePublicSharingSettingsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedPricingPlanException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateRefreshSchedule"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/data-sets/{DataSetId}/refresh-schedules"
        o.input = Shapes::ShapeRef.new(shape: UpdateRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: PreconditionNotMetException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
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
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_topic, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTopic"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTopicRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTopicResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_topic_permissions, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTopicPermissions"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/permissions"
        o.input = Shapes::ShapeRef.new(shape: UpdateTopicPermissionsRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTopicPermissionsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)

      api.add_operation(:update_topic_refresh_schedule, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateTopicRefreshSchedule"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/topics/{TopicId}/schedules/{DatasetId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateTopicRefreshScheduleRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateTopicRefreshScheduleResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceExistsException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
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

      api.add_operation(:update_vpc_connection, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateVPCConnection"
        o.http_method = "PUT"
        o.http_request_uri = "/accounts/{AwsAccountId}/vpc-connections/{VPCConnectionId}"
        o.input = Shapes::ShapeRef.new(shape: UpdateVPCConnectionRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateVPCConnectionResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterValueException)
        o.errors << Shapes::ShapeRef.new(shape: LimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: UnsupportedUserEditionException)
        o.errors << Shapes::ShapeRef.new(shape: InternalFailureException)
      end)
    end

  end
end
