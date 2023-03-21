# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubStrategyRecommendations
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AnalysisStatusUnion = Shapes::UnionShape.new(name: 'AnalysisStatusUnion')
    AnalysisType = Shapes::StringShape.new(name: 'AnalysisType')
    AnalyzerNameUnion = Shapes::UnionShape.new(name: 'AnalyzerNameUnion')
    AntipatternReportResult = Shapes::StructureShape.new(name: 'AntipatternReportResult')
    AntipatternReportResultList = Shapes::ListShape.new(name: 'AntipatternReportResultList')
    AntipatternReportStatus = Shapes::StringShape.new(name: 'AntipatternReportStatus')
    AntipatternSeveritySummary = Shapes::StructureShape.new(name: 'AntipatternSeveritySummary')
    AppType = Shapes::StringShape.new(name: 'AppType')
    AppUnitError = Shapes::StructureShape.new(name: 'AppUnitError')
    AppUnitErrorCategory = Shapes::StringShape.new(name: 'AppUnitErrorCategory')
    ApplicationComponentCriteria = Shapes::StringShape.new(name: 'ApplicationComponentCriteria')
    ApplicationComponentDetail = Shapes::StructureShape.new(name: 'ApplicationComponentDetail')
    ApplicationComponentDetails = Shapes::ListShape.new(name: 'ApplicationComponentDetails')
    ApplicationComponentId = Shapes::StringShape.new(name: 'ApplicationComponentId')
    ApplicationComponentStatusSummary = Shapes::StructureShape.new(name: 'ApplicationComponentStatusSummary')
    ApplicationComponentStrategies = Shapes::ListShape.new(name: 'ApplicationComponentStrategies')
    ApplicationComponentStrategy = Shapes::StructureShape.new(name: 'ApplicationComponentStrategy')
    ApplicationComponentSummary = Shapes::StructureShape.new(name: 'ApplicationComponentSummary')
    ApplicationMode = Shapes::StringShape.new(name: 'ApplicationMode')
    ApplicationPreferences = Shapes::StructureShape.new(name: 'ApplicationPreferences')
    AssessmentStatus = Shapes::StringShape.new(name: 'AssessmentStatus')
    AssessmentStatusMessage = Shapes::StringShape.new(name: 'AssessmentStatusMessage')
    AssessmentSummary = Shapes::StructureShape.new(name: 'AssessmentSummary')
    AssessmentTarget = Shapes::StructureShape.new(name: 'AssessmentTarget')
    AssessmentTargetValues = Shapes::ListShape.new(name: 'AssessmentTargetValues')
    AssessmentTargets = Shapes::ListShape.new(name: 'AssessmentTargets')
    AssociatedApplication = Shapes::StructureShape.new(name: 'AssociatedApplication')
    AssociatedApplications = Shapes::ListShape.new(name: 'AssociatedApplications')
    AssociatedServerIDs = Shapes::ListShape.new(name: 'AssociatedServerIDs')
    AsyncTaskId = Shapes::StringShape.new(name: 'AsyncTaskId')
    AuthType = Shapes::StringShape.new(name: 'AuthType')
    AwsManagedResources = Shapes::StructureShape.new(name: 'AwsManagedResources')
    AwsManagedTargetDestination = Shapes::StringShape.new(name: 'AwsManagedTargetDestination')
    AwsManagedTargetDestinations = Shapes::ListShape.new(name: 'AwsManagedTargetDestinations')
    BinaryAnalyzerName = Shapes::StringShape.new(name: 'BinaryAnalyzerName')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    BusinessGoals = Shapes::StructureShape.new(name: 'BusinessGoals')
    BusinessGoalsInteger = Shapes::IntegerShape.new(name: 'BusinessGoalsInteger')
    Collector = Shapes::StructureShape.new(name: 'Collector')
    CollectorHealth = Shapes::StringShape.new(name: 'CollectorHealth')
    Collectors = Shapes::ListShape.new(name: 'Collectors')
    Condition = Shapes::StringShape.new(name: 'Condition')
    ConfigurationSummary = Shapes::StructureShape.new(name: 'ConfigurationSummary')
    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    DataCollectionDetails = Shapes::StructureShape.new(name: 'DataCollectionDetails')
    DataSourceType = Shapes::StringShape.new(name: 'DataSourceType')
    DatabaseConfigDetail = Shapes::StructureShape.new(name: 'DatabaseConfigDetail')
    DatabaseManagementPreference = Shapes::StringShape.new(name: 'DatabaseManagementPreference')
    DatabaseMigrationPreference = Shapes::UnionShape.new(name: 'DatabaseMigrationPreference')
    DatabasePreferences = Shapes::StructureShape.new(name: 'DatabasePreferences')
    DependencyException = Shapes::StructureShape.new(name: 'DependencyException')
    GetApplicationComponentDetailsRequest = Shapes::StructureShape.new(name: 'GetApplicationComponentDetailsRequest')
    GetApplicationComponentDetailsResponse = Shapes::StructureShape.new(name: 'GetApplicationComponentDetailsResponse')
    GetApplicationComponentStrategiesRequest = Shapes::StructureShape.new(name: 'GetApplicationComponentStrategiesRequest')
    GetApplicationComponentStrategiesResponse = Shapes::StructureShape.new(name: 'GetApplicationComponentStrategiesResponse')
    GetAssessmentRequest = Shapes::StructureShape.new(name: 'GetAssessmentRequest')
    GetAssessmentResponse = Shapes::StructureShape.new(name: 'GetAssessmentResponse')
    GetImportFileTaskRequest = Shapes::StructureShape.new(name: 'GetImportFileTaskRequest')
    GetImportFileTaskResponse = Shapes::StructureShape.new(name: 'GetImportFileTaskResponse')
    GetLatestAssessmentIdRequest = Shapes::StructureShape.new(name: 'GetLatestAssessmentIdRequest')
    GetLatestAssessmentIdResponse = Shapes::StructureShape.new(name: 'GetLatestAssessmentIdResponse')
    GetPortfolioPreferencesRequest = Shapes::StructureShape.new(name: 'GetPortfolioPreferencesRequest')
    GetPortfolioPreferencesResponse = Shapes::StructureShape.new(name: 'GetPortfolioPreferencesResponse')
    GetPortfolioSummaryRequest = Shapes::StructureShape.new(name: 'GetPortfolioSummaryRequest')
    GetPortfolioSummaryResponse = Shapes::StructureShape.new(name: 'GetPortfolioSummaryResponse')
    GetRecommendationReportDetailsRequest = Shapes::StructureShape.new(name: 'GetRecommendationReportDetailsRequest')
    GetRecommendationReportDetailsResponse = Shapes::StructureShape.new(name: 'GetRecommendationReportDetailsResponse')
    GetServerDetailsRequest = Shapes::StructureShape.new(name: 'GetServerDetailsRequest')
    GetServerDetailsResponse = Shapes::StructureShape.new(name: 'GetServerDetailsResponse')
    GetServerStrategiesRequest = Shapes::StructureShape.new(name: 'GetServerStrategiesRequest')
    GetServerStrategiesResponse = Shapes::StructureShape.new(name: 'GetServerStrategiesResponse')
    Group = Shapes::StructureShape.new(name: 'Group')
    GroupIds = Shapes::ListShape.new(name: 'GroupIds')
    GroupName = Shapes::StringShape.new(name: 'GroupName')
    Heterogeneous = Shapes::StructureShape.new(name: 'Heterogeneous')
    HeterogeneousTargetDatabaseEngine = Shapes::StringShape.new(name: 'HeterogeneousTargetDatabaseEngine')
    HeterogeneousTargetDatabaseEngines = Shapes::ListShape.new(name: 'HeterogeneousTargetDatabaseEngines')
    Homogeneous = Shapes::StructureShape.new(name: 'Homogeneous')
    HomogeneousTargetDatabaseEngine = Shapes::StringShape.new(name: 'HomogeneousTargetDatabaseEngine')
    HomogeneousTargetDatabaseEngines = Shapes::ListShape.new(name: 'HomogeneousTargetDatabaseEngines')
    IPAddress = Shapes::StringShape.new(name: 'IPAddress')
    IPAddressBasedRemoteInfo = Shapes::StructureShape.new(name: 'IPAddressBasedRemoteInfo')
    IPAddressBasedRemoteInfoList = Shapes::ListShape.new(name: 'IPAddressBasedRemoteInfoList')
    ImportFileTaskInformation = Shapes::StructureShape.new(name: 'ImportFileTaskInformation')
    ImportFileTaskStatus = Shapes::StringShape.new(name: 'ImportFileTaskStatus')
    InclusionStatus = Shapes::StringShape.new(name: 'InclusionStatus')
    Integer = Shapes::IntegerShape.new(name: 'Integer')
    InterfaceName = Shapes::StringShape.new(name: 'InterfaceName')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListAntipatternSeveritySummary = Shapes::ListShape.new(name: 'ListAntipatternSeveritySummary')
    ListApplicationComponentStatusSummary = Shapes::ListShape.new(name: 'ListApplicationComponentStatusSummary')
    ListApplicationComponentSummary = Shapes::ListShape.new(name: 'ListApplicationComponentSummary')
    ListApplicationComponentsRequest = Shapes::StructureShape.new(name: 'ListApplicationComponentsRequest')
    ListApplicationComponentsRequestFilterValueString = Shapes::StringShape.new(name: 'ListApplicationComponentsRequestFilterValueString')
    ListApplicationComponentsResponse = Shapes::StructureShape.new(name: 'ListApplicationComponentsResponse')
    ListCollectorsRequest = Shapes::StructureShape.new(name: 'ListCollectorsRequest')
    ListCollectorsResponse = Shapes::StructureShape.new(name: 'ListCollectorsResponse')
    ListImportFileTaskInformation = Shapes::ListShape.new(name: 'ListImportFileTaskInformation')
    ListImportFileTaskRequest = Shapes::StructureShape.new(name: 'ListImportFileTaskRequest')
    ListImportFileTaskResponse = Shapes::StructureShape.new(name: 'ListImportFileTaskResponse')
    ListServerStatusSummary = Shapes::ListShape.new(name: 'ListServerStatusSummary')
    ListServerSummary = Shapes::ListShape.new(name: 'ListServerSummary')
    ListServersRequest = Shapes::StructureShape.new(name: 'ListServersRequest')
    ListServersResponse = Shapes::StructureShape.new(name: 'ListServersResponse')
    ListStrategySummary = Shapes::ListShape.new(name: 'ListStrategySummary')
    Location = Shapes::StringShape.new(name: 'Location')
    MacAddress = Shapes::StringShape.new(name: 'MacAddress')
    ManagementPreference = Shapes::UnionShape.new(name: 'ManagementPreference')
    MaxResult = Shapes::IntegerShape.new(name: 'MaxResult')
    NetMask = Shapes::StringShape.new(name: 'NetMask')
    NetworkInfo = Shapes::StructureShape.new(name: 'NetworkInfo')
    NetworkInfoList = Shapes::ListShape.new(name: 'NetworkInfoList')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    NoDatabaseMigrationPreference = Shapes::StructureShape.new(name: 'NoDatabaseMigrationPreference')
    NoManagementPreference = Shapes::StructureShape.new(name: 'NoManagementPreference')
    NoPreferenceTargetDestination = Shapes::StringShape.new(name: 'NoPreferenceTargetDestination')
    NoPreferenceTargetDestinations = Shapes::ListShape.new(name: 'NoPreferenceTargetDestinations')
    OSInfo = Shapes::StructureShape.new(name: 'OSInfo')
    OSType = Shapes::StringShape.new(name: 'OSType')
    OSVersion = Shapes::StringShape.new(name: 'OSVersion')
    OutputFormat = Shapes::StringShape.new(name: 'OutputFormat')
    PipelineInfo = Shapes::StructureShape.new(name: 'PipelineInfo')
    PipelineInfoList = Shapes::ListShape.new(name: 'PipelineInfoList')
    PipelineType = Shapes::StringShape.new(name: 'PipelineType')
    PrioritizeBusinessGoals = Shapes::StructureShape.new(name: 'PrioritizeBusinessGoals')
    ProjectName = Shapes::StringShape.new(name: 'ProjectName')
    PutPortfolioPreferencesRequest = Shapes::StructureShape.new(name: 'PutPortfolioPreferencesRequest')
    PutPortfolioPreferencesResponse = Shapes::StructureShape.new(name: 'PutPortfolioPreferencesResponse')
    RecommendationReportDetails = Shapes::StructureShape.new(name: 'RecommendationReportDetails')
    RecommendationReportStatus = Shapes::StringShape.new(name: 'RecommendationReportStatus')
    RecommendationReportStatusMessage = Shapes::StringShape.new(name: 'RecommendationReportStatusMessage')
    RecommendationReportTimeStamp = Shapes::TimestampShape.new(name: 'RecommendationReportTimeStamp')
    RecommendationSet = Shapes::StructureShape.new(name: 'RecommendationSet')
    RecommendationTaskId = Shapes::StringShape.new(name: 'RecommendationTaskId')
    RemoteSourceCodeAnalysisServerInfo = Shapes::StructureShape.new(name: 'RemoteSourceCodeAnalysisServerInfo')
    ResourceId = Shapes::StringShape.new(name: 'ResourceId')
    ResourceName = Shapes::StringShape.new(name: 'ResourceName')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ResourceSubType = Shapes::StringShape.new(name: 'ResourceSubType')
    Result = Shapes::StructureShape.new(name: 'Result')
    ResultList = Shapes::ListShape.new(name: 'ResultList')
    RunTimeAnalyzerName = Shapes::StringShape.new(name: 'RunTimeAnalyzerName')
    RunTimeAssessmentStatus = Shapes::StringShape.new(name: 'RunTimeAssessmentStatus')
    RuntimeAnalysisStatus = Shapes::StringShape.new(name: 'RuntimeAnalysisStatus')
    S3Bucket = Shapes::StringShape.new(name: 'S3Bucket')
    S3Key = Shapes::StringShape.new(name: 'S3Key')
    S3Keys = Shapes::ListShape.new(name: 'S3Keys')
    S3Object = Shapes::StructureShape.new(name: 'S3Object')
    SecretsManagerKey = Shapes::StringShape.new(name: 'SecretsManagerKey')
    SelfManageResources = Shapes::StructureShape.new(name: 'SelfManageResources')
    SelfManageTargetDestination = Shapes::StringShape.new(name: 'SelfManageTargetDestination')
    SelfManageTargetDestinations = Shapes::ListShape.new(name: 'SelfManageTargetDestinations')
    ServerCriteria = Shapes::StringShape.new(name: 'ServerCriteria')
    ServerDetail = Shapes::StructureShape.new(name: 'ServerDetail')
    ServerDetails = Shapes::ListShape.new(name: 'ServerDetails')
    ServerError = Shapes::StructureShape.new(name: 'ServerError')
    ServerErrorCategory = Shapes::StringShape.new(name: 'ServerErrorCategory')
    ServerId = Shapes::StringShape.new(name: 'ServerId')
    ServerOsType = Shapes::StringShape.new(name: 'ServerOsType')
    ServerStatusSummary = Shapes::StructureShape.new(name: 'ServerStatusSummary')
    ServerStrategies = Shapes::ListShape.new(name: 'ServerStrategies')
    ServerStrategy = Shapes::StructureShape.new(name: 'ServerStrategy')
    ServerSummary = Shapes::StructureShape.new(name: 'ServerSummary')
    ServiceLinkedRoleLockClientException = Shapes::StructureShape.new(name: 'ServiceLinkedRoleLockClientException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    Severity = Shapes::StringShape.new(name: 'Severity')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    SourceCode = Shapes::StructureShape.new(name: 'SourceCode')
    SourceCodeAnalyzerName = Shapes::StringShape.new(name: 'SourceCodeAnalyzerName')
    SourceCodeList = Shapes::ListShape.new(name: 'SourceCodeList')
    SourceCodeRepositories = Shapes::ListShape.new(name: 'SourceCodeRepositories')
    SourceCodeRepository = Shapes::StructureShape.new(name: 'SourceCodeRepository')
    SourceVersion = Shapes::StringShape.new(name: 'SourceVersion')
    SrcCodeOrDbAnalysisStatus = Shapes::StringShape.new(name: 'SrcCodeOrDbAnalysisStatus')
    StartAssessmentRequest = Shapes::StructureShape.new(name: 'StartAssessmentRequest')
    StartAssessmentRequestS3bucketForAnalysisDataString = Shapes::StringShape.new(name: 'StartAssessmentRequestS3bucketForAnalysisDataString')
    StartAssessmentRequestS3bucketForReportDataString = Shapes::StringShape.new(name: 'StartAssessmentRequestS3bucketForReportDataString')
    StartAssessmentResponse = Shapes::StructureShape.new(name: 'StartAssessmentResponse')
    StartImportFileTaskRequest = Shapes::StructureShape.new(name: 'StartImportFileTaskRequest')
    StartImportFileTaskRequestNameString = Shapes::StringShape.new(name: 'StartImportFileTaskRequestNameString')
    StartImportFileTaskRequestS3bucketForReportDataString = Shapes::StringShape.new(name: 'StartImportFileTaskRequestS3bucketForReportDataString')
    StartImportFileTaskResponse = Shapes::StructureShape.new(name: 'StartImportFileTaskResponse')
    StartRecommendationReportGenerationRequest = Shapes::StructureShape.new(name: 'StartRecommendationReportGenerationRequest')
    StartRecommendationReportGenerationResponse = Shapes::StructureShape.new(name: 'StartRecommendationReportGenerationResponse')
    StatusMessage = Shapes::StringShape.new(name: 'StatusMessage')
    StopAssessmentRequest = Shapes::StructureShape.new(name: 'StopAssessmentRequest')
    StopAssessmentResponse = Shapes::StructureShape.new(name: 'StopAssessmentResponse')
    Strategy = Shapes::StringShape.new(name: 'Strategy')
    StrategyOption = Shapes::StructureShape.new(name: 'StrategyOption')
    StrategyRecommendation = Shapes::StringShape.new(name: 'StrategyRecommendation')
    StrategySummary = Shapes::StructureShape.new(name: 'StrategySummary')
    String = Shapes::StringShape.new(name: 'String')
    SystemInfo = Shapes::StructureShape.new(name: 'SystemInfo')
    TargetDatabaseEngine = Shapes::StringShape.new(name: 'TargetDatabaseEngine')
    TargetDatabaseEngines = Shapes::ListShape.new(name: 'TargetDatabaseEngines')
    TargetDestination = Shapes::StringShape.new(name: 'TargetDestination')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    TimeStamp = Shapes::TimestampShape.new(name: 'TimeStamp')
    TranformationToolDescription = Shapes::StringShape.new(name: 'TranformationToolDescription')
    TranformationToolInstallationLink = Shapes::StringShape.new(name: 'TranformationToolInstallationLink')
    TransformationTool = Shapes::StructureShape.new(name: 'TransformationTool')
    TransformationToolName = Shapes::StringShape.new(name: 'TransformationToolName')
    UpdateApplicationComponentConfigRequest = Shapes::StructureShape.new(name: 'UpdateApplicationComponentConfigRequest')
    UpdateApplicationComponentConfigResponse = Shapes::StructureShape.new(name: 'UpdateApplicationComponentConfigResponse')
    UpdateServerConfigRequest = Shapes::StructureShape.new(name: 'UpdateServerConfigRequest')
    UpdateServerConfigResponse = Shapes::StructureShape.new(name: 'UpdateServerConfigResponse')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')
    VcenterBasedRemoteInfo = Shapes::StructureShape.new(name: 'VcenterBasedRemoteInfo')
    VcenterBasedRemoteInfoList = Shapes::ListShape.new(name: 'VcenterBasedRemoteInfoList')
    VersionControl = Shapes::StringShape.new(name: 'VersionControl')
    VersionControlInfo = Shapes::StructureShape.new(name: 'VersionControlInfo')
    VersionControlInfoList = Shapes::ListShape.new(name: 'VersionControlInfoList')
    VersionControlType = Shapes::StringShape.new(name: 'VersionControlType')
    errorMessage = Shapes::StringShape.new(name: 'errorMessage')
    importS3Bucket = Shapes::StringShape.new(name: 'importS3Bucket')
    importS3Key = Shapes::StringShape.new(name: 'importS3Key')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AnalysisStatusUnion.add_member(:runtime_analysis_status, Shapes::ShapeRef.new(shape: RuntimeAnalysisStatus, location_name: "runtimeAnalysisStatus"))
    AnalysisStatusUnion.add_member(:src_code_or_db_analysis_status, Shapes::ShapeRef.new(shape: SrcCodeOrDbAnalysisStatus, location_name: "srcCodeOrDbAnalysisStatus"))
    AnalysisStatusUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalysisStatusUnion.add_member_subclass(:runtime_analysis_status, Types::AnalysisStatusUnion::RuntimeAnalysisStatus)
    AnalysisStatusUnion.add_member_subclass(:src_code_or_db_analysis_status, Types::AnalysisStatusUnion::SrcCodeOrDbAnalysisStatus)
    AnalysisStatusUnion.add_member_subclass(:unknown, Types::AnalysisStatusUnion::Unknown)
    AnalysisStatusUnion.struct_class = Types::AnalysisStatusUnion

    AnalyzerNameUnion.add_member(:binary_analyzer_name, Shapes::ShapeRef.new(shape: BinaryAnalyzerName, location_name: "binaryAnalyzerName"))
    AnalyzerNameUnion.add_member(:run_time_analyzer_name, Shapes::ShapeRef.new(shape: RunTimeAnalyzerName, location_name: "runTimeAnalyzerName"))
    AnalyzerNameUnion.add_member(:source_code_analyzer_name, Shapes::ShapeRef.new(shape: SourceCodeAnalyzerName, location_name: "sourceCodeAnalyzerName"))
    AnalyzerNameUnion.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    AnalyzerNameUnion.add_member_subclass(:binary_analyzer_name, Types::AnalyzerNameUnion::BinaryAnalyzerName)
    AnalyzerNameUnion.add_member_subclass(:run_time_analyzer_name, Types::AnalyzerNameUnion::RunTimeAnalyzerName)
    AnalyzerNameUnion.add_member_subclass(:source_code_analyzer_name, Types::AnalyzerNameUnion::SourceCodeAnalyzerName)
    AnalyzerNameUnion.add_member_subclass(:unknown, Types::AnalyzerNameUnion::Unknown)
    AnalyzerNameUnion.struct_class = Types::AnalyzerNameUnion

    AntipatternReportResult.add_member(:analyzer_name, Shapes::ShapeRef.new(shape: AnalyzerNameUnion, location_name: "analyzerName"))
    AntipatternReportResult.add_member(:anti_pattern_report_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "antiPatternReportS3Object"))
    AntipatternReportResult.add_member(:antipattern_report_status, Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: "antipatternReportStatus"))
    AntipatternReportResult.add_member(:antipattern_report_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "antipatternReportStatusMessage"))
    AntipatternReportResult.struct_class = Types::AntipatternReportResult

    AntipatternReportResultList.member = Shapes::ShapeRef.new(shape: AntipatternReportResult)

    AntipatternSeveritySummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    AntipatternSeveritySummary.add_member(:severity, Shapes::ShapeRef.new(shape: Severity, location_name: "severity"))
    AntipatternSeveritySummary.struct_class = Types::AntipatternSeveritySummary

    AppUnitError.add_member(:app_unit_error_category, Shapes::ShapeRef.new(shape: AppUnitErrorCategory, location_name: "appUnitErrorCategory"))
    AppUnitError.struct_class = Types::AppUnitError

    ApplicationComponentDetail.add_member(:analysis_status, Shapes::ShapeRef.new(shape: SrcCodeOrDbAnalysisStatus, location_name: "analysisStatus"))
    ApplicationComponentDetail.add_member(:antipattern_report_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "antipatternReportS3Object"))
    ApplicationComponentDetail.add_member(:antipattern_report_status, Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: "antipatternReportStatus"))
    ApplicationComponentDetail.add_member(:antipattern_report_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "antipatternReportStatusMessage"))
    ApplicationComponentDetail.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, location_name: "appType"))
    ApplicationComponentDetail.add_member(:app_unit_error, Shapes::ShapeRef.new(shape: AppUnitError, location_name: "appUnitError"))
    ApplicationComponentDetail.add_member(:associated_server_id, Shapes::ShapeRef.new(shape: ServerId, location_name: "associatedServerId"))
    ApplicationComponentDetail.add_member(:database_config_detail, Shapes::ShapeRef.new(shape: DatabaseConfigDetail, location_name: "databaseConfigDetail"))
    ApplicationComponentDetail.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    ApplicationComponentDetail.add_member(:inclusion_status, Shapes::ShapeRef.new(shape: InclusionStatus, location_name: "inclusionStatus"))
    ApplicationComponentDetail.add_member(:last_analyzed_timestamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "lastAnalyzedTimestamp"))
    ApplicationComponentDetail.add_member(:list_antipattern_severity_summary, Shapes::ShapeRef.new(shape: ListAntipatternSeveritySummary, location_name: "listAntipatternSeveritySummary"))
    ApplicationComponentDetail.add_member(:more_server_association_exists, Shapes::ShapeRef.new(shape: Boolean, location_name: "moreServerAssociationExists"))
    ApplicationComponentDetail.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ApplicationComponentDetail.add_member(:os_driver, Shapes::ShapeRef.new(shape: String, location_name: "osDriver"))
    ApplicationComponentDetail.add_member(:os_version, Shapes::ShapeRef.new(shape: String, location_name: "osVersion"))
    ApplicationComponentDetail.add_member(:recommendation_set, Shapes::ShapeRef.new(shape: RecommendationSet, location_name: "recommendationSet"))
    ApplicationComponentDetail.add_member(:resource_sub_type, Shapes::ShapeRef.new(shape: ResourceSubType, location_name: "resourceSubType"))
    ApplicationComponentDetail.add_member(:result_list, Shapes::ShapeRef.new(shape: ResultList, location_name: "resultList"))
    ApplicationComponentDetail.add_member(:runtime_status, Shapes::ShapeRef.new(shape: RuntimeAnalysisStatus, location_name: "runtimeStatus"))
    ApplicationComponentDetail.add_member(:runtime_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "runtimeStatusMessage"))
    ApplicationComponentDetail.add_member(:source_code_repositories, Shapes::ShapeRef.new(shape: SourceCodeRepositories, location_name: "sourceCodeRepositories"))
    ApplicationComponentDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ApplicationComponentDetail.struct_class = Types::ApplicationComponentDetail

    ApplicationComponentDetails.member = Shapes::ShapeRef.new(shape: ApplicationComponentDetail)

    ApplicationComponentStatusSummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    ApplicationComponentStatusSummary.add_member(:src_code_or_db_analysis_status, Shapes::ShapeRef.new(shape: SrcCodeOrDbAnalysisStatus, location_name: "srcCodeOrDbAnalysisStatus"))
    ApplicationComponentStatusSummary.struct_class = Types::ApplicationComponentStatusSummary

    ApplicationComponentStrategies.member = Shapes::ShapeRef.new(shape: ApplicationComponentStrategy)

    ApplicationComponentStrategy.add_member(:is_preferred, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPreferred"))
    ApplicationComponentStrategy.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationSet, location_name: "recommendation"))
    ApplicationComponentStrategy.add_member(:status, Shapes::ShapeRef.new(shape: StrategyRecommendation, location_name: "status"))
    ApplicationComponentStrategy.struct_class = Types::ApplicationComponentStrategy

    ApplicationComponentSummary.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, location_name: "appType"))
    ApplicationComponentSummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    ApplicationComponentSummary.struct_class = Types::ApplicationComponentSummary

    ApplicationPreferences.add_member(:management_preference, Shapes::ShapeRef.new(shape: ManagementPreference, location_name: "managementPreference"))
    ApplicationPreferences.struct_class = Types::ApplicationPreferences

    AssessmentSummary.add_member(:antipattern_report_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "antipatternReportS3Object"))
    AssessmentSummary.add_member(:antipattern_report_status, Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: "antipatternReportStatus"))
    AssessmentSummary.add_member(:antipattern_report_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "antipatternReportStatusMessage"))
    AssessmentSummary.add_member(:last_analyzed_timestamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "lastAnalyzedTimestamp"))
    AssessmentSummary.add_member(:list_antipattern_severity_summary, Shapes::ShapeRef.new(shape: ListAntipatternSeveritySummary, location_name: "listAntipatternSeveritySummary"))
    AssessmentSummary.add_member(:list_application_component_status_summary, Shapes::ShapeRef.new(shape: ListApplicationComponentStatusSummary, location_name: "listApplicationComponentStatusSummary"))
    AssessmentSummary.add_member(:list_application_component_strategy_summary, Shapes::ShapeRef.new(shape: ListStrategySummary, location_name: "listApplicationComponentStrategySummary"))
    AssessmentSummary.add_member(:list_application_component_summary, Shapes::ShapeRef.new(shape: ListApplicationComponentSummary, location_name: "listApplicationComponentSummary"))
    AssessmentSummary.add_member(:list_server_status_summary, Shapes::ShapeRef.new(shape: ListServerStatusSummary, location_name: "listServerStatusSummary"))
    AssessmentSummary.add_member(:list_server_strategy_summary, Shapes::ShapeRef.new(shape: ListStrategySummary, location_name: "listServerStrategySummary"))
    AssessmentSummary.add_member(:list_server_summary, Shapes::ShapeRef.new(shape: ListServerSummary, location_name: "listServerSummary"))
    AssessmentSummary.struct_class = Types::AssessmentSummary

    AssessmentTarget.add_member(:condition, Shapes::ShapeRef.new(shape: Condition, required: true, location_name: "condition"))
    AssessmentTarget.add_member(:name, Shapes::ShapeRef.new(shape: String, required: true, location_name: "name"))
    AssessmentTarget.add_member(:values, Shapes::ShapeRef.new(shape: AssessmentTargetValues, required: true, location_name: "values"))
    AssessmentTarget.struct_class = Types::AssessmentTarget

    AssessmentTargetValues.member = Shapes::ShapeRef.new(shape: String)

    AssessmentTargets.member = Shapes::ShapeRef.new(shape: AssessmentTarget)

    AssociatedApplication.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    AssociatedApplication.add_member(:name, Shapes::ShapeRef.new(shape: String, location_name: "name"))
    AssociatedApplication.struct_class = Types::AssociatedApplication

    AssociatedApplications.member = Shapes::ShapeRef.new(shape: AssociatedApplication)

    AssociatedServerIDs.member = Shapes::ShapeRef.new(shape: String)

    AwsManagedResources.add_member(:target_destination, Shapes::ShapeRef.new(shape: AwsManagedTargetDestinations, required: true, location_name: "targetDestination"))
    AwsManagedResources.struct_class = Types::AwsManagedResources

    AwsManagedTargetDestinations.member = Shapes::ShapeRef.new(shape: AwsManagedTargetDestination)

    BusinessGoals.add_member(:license_cost_reduction, Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: "licenseCostReduction"))
    BusinessGoals.add_member(:modernize_infrastructure_with_cloud_native_technologies, Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: "modernizeInfrastructureWithCloudNativeTechnologies"))
    BusinessGoals.add_member(:reduce_operational_overhead_with_managed_services, Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: "reduceOperationalOverheadWithManagedServices"))
    BusinessGoals.add_member(:speed_of_migration, Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: "speedOfMigration"))
    BusinessGoals.struct_class = Types::BusinessGoals

    Collector.add_member(:collector_health, Shapes::ShapeRef.new(shape: CollectorHealth, location_name: "collectorHealth"))
    Collector.add_member(:collector_id, Shapes::ShapeRef.new(shape: String, location_name: "collectorId"))
    Collector.add_member(:collector_version, Shapes::ShapeRef.new(shape: String, location_name: "collectorVersion"))
    Collector.add_member(:configuration_summary, Shapes::ShapeRef.new(shape: ConfigurationSummary, location_name: "configurationSummary"))
    Collector.add_member(:host_name, Shapes::ShapeRef.new(shape: String, location_name: "hostName"))
    Collector.add_member(:ip_address, Shapes::ShapeRef.new(shape: String, location_name: "ipAddress"))
    Collector.add_member(:last_activity_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "lastActivityTimeStamp"))
    Collector.add_member(:registered_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "registeredTimeStamp"))
    Collector.struct_class = Types::Collector

    Collectors.member = Shapes::ShapeRef.new(shape: Collector)

    ConfigurationSummary.add_member(:ip_address_based_remote_info_list, Shapes::ShapeRef.new(shape: IPAddressBasedRemoteInfoList, location_name: "ipAddressBasedRemoteInfoList"))
    ConfigurationSummary.add_member(:pipeline_info_list, Shapes::ShapeRef.new(shape: PipelineInfoList, location_name: "pipelineInfoList"))
    ConfigurationSummary.add_member(:remote_source_code_analysis_server_info, Shapes::ShapeRef.new(shape: RemoteSourceCodeAnalysisServerInfo, location_name: "remoteSourceCodeAnalysisServerInfo"))
    ConfigurationSummary.add_member(:vcenter_based_remote_info_list, Shapes::ShapeRef.new(shape: VcenterBasedRemoteInfoList, location_name: "vcenterBasedRemoteInfoList"))
    ConfigurationSummary.add_member(:version_control_info_list, Shapes::ShapeRef.new(shape: VersionControlInfoList, location_name: "versionControlInfoList"))
    ConfigurationSummary.struct_class = Types::ConfigurationSummary

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ConflictException.struct_class = Types::ConflictException

    DataCollectionDetails.add_member(:completion_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "completionTime"))
    DataCollectionDetails.add_member(:failed, Shapes::ShapeRef.new(shape: Integer, location_name: "failed"))
    DataCollectionDetails.add_member(:in_progress, Shapes::ShapeRef.new(shape: Integer, location_name: "inProgress"))
    DataCollectionDetails.add_member(:servers, Shapes::ShapeRef.new(shape: Integer, location_name: "servers"))
    DataCollectionDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    DataCollectionDetails.add_member(:status, Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: "status"))
    DataCollectionDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: AssessmentStatusMessage, location_name: "statusMessage"))
    DataCollectionDetails.add_member(:success, Shapes::ShapeRef.new(shape: Integer, location_name: "success"))
    DataCollectionDetails.struct_class = Types::DataCollectionDetails

    DatabaseConfigDetail.add_member(:secret_name, Shapes::ShapeRef.new(shape: String, location_name: "secretName"))
    DatabaseConfigDetail.struct_class = Types::DatabaseConfigDetail

    DatabaseMigrationPreference.add_member(:heterogeneous, Shapes::ShapeRef.new(shape: Heterogeneous, location_name: "heterogeneous"))
    DatabaseMigrationPreference.add_member(:homogeneous, Shapes::ShapeRef.new(shape: Homogeneous, location_name: "homogeneous"))
    DatabaseMigrationPreference.add_member(:no_preference, Shapes::ShapeRef.new(shape: NoDatabaseMigrationPreference, location_name: "noPreference"))
    DatabaseMigrationPreference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    DatabaseMigrationPreference.add_member_subclass(:heterogeneous, Types::DatabaseMigrationPreference::Heterogeneous)
    DatabaseMigrationPreference.add_member_subclass(:homogeneous, Types::DatabaseMigrationPreference::Homogeneous)
    DatabaseMigrationPreference.add_member_subclass(:no_preference, Types::DatabaseMigrationPreference::NoPreference)
    DatabaseMigrationPreference.add_member_subclass(:unknown, Types::DatabaseMigrationPreference::Unknown)
    DatabaseMigrationPreference.struct_class = Types::DatabaseMigrationPreference

    DatabasePreferences.add_member(:database_management_preference, Shapes::ShapeRef.new(shape: DatabaseManagementPreference, location_name: "databaseManagementPreference"))
    DatabasePreferences.add_member(:database_migration_preference, Shapes::ShapeRef.new(shape: DatabaseMigrationPreference, location_name: "databaseMigrationPreference"))
    DatabasePreferences.struct_class = Types::DatabasePreferences

    DependencyException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    DependencyException.struct_class = Types::DependencyException

    GetApplicationComponentDetailsRequest.add_member(:application_component_id, Shapes::ShapeRef.new(shape: ApplicationComponentId, required: true, location: "uri", location_name: "applicationComponentId"))
    GetApplicationComponentDetailsRequest.struct_class = Types::GetApplicationComponentDetailsRequest

    GetApplicationComponentDetailsResponse.add_member(:application_component_detail, Shapes::ShapeRef.new(shape: ApplicationComponentDetail, location_name: "applicationComponentDetail"))
    GetApplicationComponentDetailsResponse.add_member(:associated_applications, Shapes::ShapeRef.new(shape: AssociatedApplications, location_name: "associatedApplications"))
    GetApplicationComponentDetailsResponse.add_member(:associated_server_ids, Shapes::ShapeRef.new(shape: AssociatedServerIDs, location_name: "associatedServerIds"))
    GetApplicationComponentDetailsResponse.add_member(:more_application_resource, Shapes::ShapeRef.new(shape: Boolean, location_name: "moreApplicationResource"))
    GetApplicationComponentDetailsResponse.struct_class = Types::GetApplicationComponentDetailsResponse

    GetApplicationComponentStrategiesRequest.add_member(:application_component_id, Shapes::ShapeRef.new(shape: ApplicationComponentId, required: true, location: "uri", location_name: "applicationComponentId"))
    GetApplicationComponentStrategiesRequest.struct_class = Types::GetApplicationComponentStrategiesRequest

    GetApplicationComponentStrategiesResponse.add_member(:application_component_strategies, Shapes::ShapeRef.new(shape: ApplicationComponentStrategies, location_name: "applicationComponentStrategies"))
    GetApplicationComponentStrategiesResponse.struct_class = Types::GetApplicationComponentStrategiesResponse

    GetAssessmentRequest.add_member(:id, Shapes::ShapeRef.new(shape: AsyncTaskId, required: true, location: "uri", location_name: "id"))
    GetAssessmentRequest.struct_class = Types::GetAssessmentRequest

    GetAssessmentResponse.add_member(:assessment_targets, Shapes::ShapeRef.new(shape: AssessmentTargets, location_name: "assessmentTargets"))
    GetAssessmentResponse.add_member(:data_collection_details, Shapes::ShapeRef.new(shape: DataCollectionDetails, location_name: "dataCollectionDetails"))
    GetAssessmentResponse.add_member(:id, Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: "id"))
    GetAssessmentResponse.struct_class = Types::GetAssessmentResponse

    GetImportFileTaskRequest.add_member(:id, Shapes::ShapeRef.new(shape: String, required: true, location: "uri", location_name: "id"))
    GetImportFileTaskRequest.struct_class = Types::GetImportFileTaskRequest

    GetImportFileTaskResponse.add_member(:completion_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "completionTime"))
    GetImportFileTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    GetImportFileTaskResponse.add_member(:import_name, Shapes::ShapeRef.new(shape: String, location_name: "importName"))
    GetImportFileTaskResponse.add_member(:input_s3_bucket, Shapes::ShapeRef.new(shape: importS3Bucket, location_name: "inputS3Bucket"))
    GetImportFileTaskResponse.add_member(:input_s3_key, Shapes::ShapeRef.new(shape: importS3Key, location_name: "inputS3Key"))
    GetImportFileTaskResponse.add_member(:number_of_records_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRecordsFailed"))
    GetImportFileTaskResponse.add_member(:number_of_records_success, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRecordsSuccess"))
    GetImportFileTaskResponse.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    GetImportFileTaskResponse.add_member(:status, Shapes::ShapeRef.new(shape: ImportFileTaskStatus, location_name: "status"))
    GetImportFileTaskResponse.add_member(:status_report_s3_bucket, Shapes::ShapeRef.new(shape: importS3Bucket, location_name: "statusReportS3Bucket"))
    GetImportFileTaskResponse.add_member(:status_report_s3_key, Shapes::ShapeRef.new(shape: importS3Key, location_name: "statusReportS3Key"))
    GetImportFileTaskResponse.struct_class = Types::GetImportFileTaskResponse

    GetLatestAssessmentIdRequest.struct_class = Types::GetLatestAssessmentIdRequest

    GetLatestAssessmentIdResponse.add_member(:id, Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: "id"))
    GetLatestAssessmentIdResponse.struct_class = Types::GetLatestAssessmentIdResponse

    GetPortfolioPreferencesRequest.struct_class = Types::GetPortfolioPreferencesRequest

    GetPortfolioPreferencesResponse.add_member(:application_mode, Shapes::ShapeRef.new(shape: ApplicationMode, location_name: "applicationMode"))
    GetPortfolioPreferencesResponse.add_member(:application_preferences, Shapes::ShapeRef.new(shape: ApplicationPreferences, location_name: "applicationPreferences"))
    GetPortfolioPreferencesResponse.add_member(:database_preferences, Shapes::ShapeRef.new(shape: DatabasePreferences, location_name: "databasePreferences"))
    GetPortfolioPreferencesResponse.add_member(:prioritize_business_goals, Shapes::ShapeRef.new(shape: PrioritizeBusinessGoals, location_name: "prioritizeBusinessGoals"))
    GetPortfolioPreferencesResponse.struct_class = Types::GetPortfolioPreferencesResponse

    GetPortfolioSummaryRequest.struct_class = Types::GetPortfolioSummaryRequest

    GetPortfolioSummaryResponse.add_member(:assessment_summary, Shapes::ShapeRef.new(shape: AssessmentSummary, location_name: "assessmentSummary"))
    GetPortfolioSummaryResponse.struct_class = Types::GetPortfolioSummaryResponse

    GetRecommendationReportDetailsRequest.add_member(:id, Shapes::ShapeRef.new(shape: RecommendationTaskId, required: true, location: "uri", location_name: "id"))
    GetRecommendationReportDetailsRequest.struct_class = Types::GetRecommendationReportDetailsRequest

    GetRecommendationReportDetailsResponse.add_member(:id, Shapes::ShapeRef.new(shape: RecommendationTaskId, location_name: "id"))
    GetRecommendationReportDetailsResponse.add_member(:recommendation_report_details, Shapes::ShapeRef.new(shape: RecommendationReportDetails, location_name: "recommendationReportDetails"))
    GetRecommendationReportDetailsResponse.struct_class = Types::GetRecommendationReportDetailsResponse

    GetServerDetailsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult, location: "querystring", location_name: "maxResults"))
    GetServerDetailsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    GetServerDetailsRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location: "uri", location_name: "serverId"))
    GetServerDetailsRequest.struct_class = Types::GetServerDetailsRequest

    GetServerDetailsResponse.add_member(:associated_applications, Shapes::ShapeRef.new(shape: AssociatedApplications, location_name: "associatedApplications"))
    GetServerDetailsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetServerDetailsResponse.add_member(:server_detail, Shapes::ShapeRef.new(shape: ServerDetail, location_name: "serverDetail"))
    GetServerDetailsResponse.struct_class = Types::GetServerDetailsResponse

    GetServerStrategiesRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location: "uri", location_name: "serverId"))
    GetServerStrategiesRequest.struct_class = Types::GetServerStrategiesRequest

    GetServerStrategiesResponse.add_member(:server_strategies, Shapes::ShapeRef.new(shape: ServerStrategies, location_name: "serverStrategies"))
    GetServerStrategiesResponse.struct_class = Types::GetServerStrategiesResponse

    Group.add_member(:name, Shapes::ShapeRef.new(shape: GroupName, location_name: "name"))
    Group.add_member(:value, Shapes::ShapeRef.new(shape: String, location_name: "value"))
    Group.struct_class = Types::Group

    GroupIds.member = Shapes::ShapeRef.new(shape: Group)

    Heterogeneous.add_member(:target_database_engine, Shapes::ShapeRef.new(shape: HeterogeneousTargetDatabaseEngines, required: true, location_name: "targetDatabaseEngine"))
    Heterogeneous.struct_class = Types::Heterogeneous

    HeterogeneousTargetDatabaseEngines.member = Shapes::ShapeRef.new(shape: HeterogeneousTargetDatabaseEngine)

    Homogeneous.add_member(:target_database_engine, Shapes::ShapeRef.new(shape: HomogeneousTargetDatabaseEngines, location_name: "targetDatabaseEngine"))
    Homogeneous.struct_class = Types::Homogeneous

    HomogeneousTargetDatabaseEngines.member = Shapes::ShapeRef.new(shape: HomogeneousTargetDatabaseEngine)

    IPAddressBasedRemoteInfo.add_member(:auth_type, Shapes::ShapeRef.new(shape: AuthType, location_name: "authType"))
    IPAddressBasedRemoteInfo.add_member(:ip_address_configuration_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "ipAddressConfigurationTimeStamp"))
    IPAddressBasedRemoteInfo.add_member(:os_type, Shapes::ShapeRef.new(shape: OSType, location_name: "osType"))
    IPAddressBasedRemoteInfo.struct_class = Types::IPAddressBasedRemoteInfo

    IPAddressBasedRemoteInfoList.member = Shapes::ShapeRef.new(shape: IPAddressBasedRemoteInfo)

    ImportFileTaskInformation.add_member(:completion_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "completionTime"))
    ImportFileTaskInformation.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    ImportFileTaskInformation.add_member(:import_name, Shapes::ShapeRef.new(shape: String, location_name: "importName"))
    ImportFileTaskInformation.add_member(:input_s3_bucket, Shapes::ShapeRef.new(shape: importS3Bucket, location_name: "inputS3Bucket"))
    ImportFileTaskInformation.add_member(:input_s3_key, Shapes::ShapeRef.new(shape: importS3Key, location_name: "inputS3Key"))
    ImportFileTaskInformation.add_member(:number_of_records_failed, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRecordsFailed"))
    ImportFileTaskInformation.add_member(:number_of_records_success, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfRecordsSuccess"))
    ImportFileTaskInformation.add_member(:start_time, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "startTime"))
    ImportFileTaskInformation.add_member(:status, Shapes::ShapeRef.new(shape: ImportFileTaskStatus, location_name: "status"))
    ImportFileTaskInformation.add_member(:status_report_s3_bucket, Shapes::ShapeRef.new(shape: importS3Bucket, location_name: "statusReportS3Bucket"))
    ImportFileTaskInformation.add_member(:status_report_s3_key, Shapes::ShapeRef.new(shape: importS3Key, location_name: "statusReportS3Key"))
    ImportFileTaskInformation.struct_class = Types::ImportFileTaskInformation

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListAntipatternSeveritySummary.member = Shapes::ShapeRef.new(shape: AntipatternSeveritySummary)

    ListApplicationComponentStatusSummary.member = Shapes::ShapeRef.new(shape: ApplicationComponentStatusSummary)

    ListApplicationComponentSummary.member = Shapes::ShapeRef.new(shape: ApplicationComponentSummary)

    ListApplicationComponentsRequest.add_member(:application_component_criteria, Shapes::ShapeRef.new(shape: ApplicationComponentCriteria, location_name: "applicationComponentCriteria"))
    ListApplicationComponentsRequest.add_member(:filter_value, Shapes::ShapeRef.new(shape: ListApplicationComponentsRequestFilterValueString, location_name: "filterValue"))
    ListApplicationComponentsRequest.add_member(:group_id_filter, Shapes::ShapeRef.new(shape: GroupIds, location_name: "groupIdFilter"))
    ListApplicationComponentsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult, location_name: "maxResults"))
    ListApplicationComponentsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationComponentsRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sort"))
    ListApplicationComponentsRequest.struct_class = Types::ListApplicationComponentsRequest

    ListApplicationComponentsResponse.add_member(:application_component_infos, Shapes::ShapeRef.new(shape: ApplicationComponentDetails, location_name: "applicationComponentInfos"))
    ListApplicationComponentsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListApplicationComponentsResponse.struct_class = Types::ListApplicationComponentsResponse

    ListCollectorsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult, location: "querystring", location_name: "maxResults"))
    ListCollectorsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "nextToken"))
    ListCollectorsRequest.struct_class = Types::ListCollectorsRequest

    ListCollectorsResponse.add_member(:collectors, Shapes::ShapeRef.new(shape: Collectors, location_name: "Collectors"))
    ListCollectorsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListCollectorsResponse.struct_class = Types::ListCollectorsResponse

    ListImportFileTaskInformation.member = Shapes::ShapeRef.new(shape: ImportFileTaskInformation)

    ListImportFileTaskRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: Integer, location: "querystring", location_name: "maxResults"))
    ListImportFileTaskRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    ListImportFileTaskRequest.struct_class = Types::ListImportFileTaskRequest

    ListImportFileTaskResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    ListImportFileTaskResponse.add_member(:task_infos, Shapes::ShapeRef.new(shape: ListImportFileTaskInformation, location_name: "taskInfos"))
    ListImportFileTaskResponse.struct_class = Types::ListImportFileTaskResponse

    ListServerStatusSummary.member = Shapes::ShapeRef.new(shape: ServerStatusSummary)

    ListServerSummary.member = Shapes::ShapeRef.new(shape: ServerSummary)

    ListServersRequest.add_member(:filter_value, Shapes::ShapeRef.new(shape: String, location_name: "filterValue"))
    ListServersRequest.add_member(:group_id_filter, Shapes::ShapeRef.new(shape: GroupIds, location_name: "groupIdFilter"))
    ListServersRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResult, location_name: "maxResults"))
    ListServersRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServersRequest.add_member(:server_criteria, Shapes::ShapeRef.new(shape: ServerCriteria, location_name: "serverCriteria"))
    ListServersRequest.add_member(:sort, Shapes::ShapeRef.new(shape: SortOrder, location_name: "sort"))
    ListServersRequest.struct_class = Types::ListServersRequest

    ListServersResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "nextToken"))
    ListServersResponse.add_member(:server_infos, Shapes::ShapeRef.new(shape: ServerDetails, location_name: "serverInfos"))
    ListServersResponse.struct_class = Types::ListServersResponse

    ListStrategySummary.member = Shapes::ShapeRef.new(shape: StrategySummary)

    ManagementPreference.add_member(:aws_managed_resources, Shapes::ShapeRef.new(shape: AwsManagedResources, location_name: "awsManagedResources"))
    ManagementPreference.add_member(:no_preference, Shapes::ShapeRef.new(shape: NoManagementPreference, location_name: "noPreference"))
    ManagementPreference.add_member(:self_manage_resources, Shapes::ShapeRef.new(shape: SelfManageResources, location_name: "selfManageResources"))
    ManagementPreference.add_member(:unknown, Shapes::ShapeRef.new(shape: nil, location_name: 'unknown'))
    ManagementPreference.add_member_subclass(:aws_managed_resources, Types::ManagementPreference::AwsManagedResources)
    ManagementPreference.add_member_subclass(:no_preference, Types::ManagementPreference::NoPreference)
    ManagementPreference.add_member_subclass(:self_manage_resources, Types::ManagementPreference::SelfManageResources)
    ManagementPreference.add_member_subclass(:unknown, Types::ManagementPreference::Unknown)
    ManagementPreference.struct_class = Types::ManagementPreference

    NetworkInfo.add_member(:interface_name, Shapes::ShapeRef.new(shape: InterfaceName, required: true, location_name: "interfaceName"))
    NetworkInfo.add_member(:ip_address, Shapes::ShapeRef.new(shape: IPAddress, required: true, location_name: "ipAddress"))
    NetworkInfo.add_member(:mac_address, Shapes::ShapeRef.new(shape: MacAddress, required: true, location_name: "macAddress"))
    NetworkInfo.add_member(:net_mask, Shapes::ShapeRef.new(shape: NetMask, required: true, location_name: "netMask"))
    NetworkInfo.struct_class = Types::NetworkInfo

    NetworkInfoList.member = Shapes::ShapeRef.new(shape: NetworkInfo)

    NoDatabaseMigrationPreference.add_member(:target_database_engine, Shapes::ShapeRef.new(shape: TargetDatabaseEngines, required: true, location_name: "targetDatabaseEngine"))
    NoDatabaseMigrationPreference.struct_class = Types::NoDatabaseMigrationPreference

    NoManagementPreference.add_member(:target_destination, Shapes::ShapeRef.new(shape: NoPreferenceTargetDestinations, required: true, location_name: "targetDestination"))
    NoManagementPreference.struct_class = Types::NoManagementPreference

    NoPreferenceTargetDestinations.member = Shapes::ShapeRef.new(shape: NoPreferenceTargetDestination)

    OSInfo.add_member(:type, Shapes::ShapeRef.new(shape: OSType, location_name: "type"))
    OSInfo.add_member(:version, Shapes::ShapeRef.new(shape: OSVersion, location_name: "version"))
    OSInfo.struct_class = Types::OSInfo

    PipelineInfo.add_member(:pipeline_configuration_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "pipelineConfigurationTimeStamp"))
    PipelineInfo.add_member(:pipeline_type, Shapes::ShapeRef.new(shape: PipelineType, location_name: "pipelineType"))
    PipelineInfo.struct_class = Types::PipelineInfo

    PipelineInfoList.member = Shapes::ShapeRef.new(shape: PipelineInfo)

    PrioritizeBusinessGoals.add_member(:business_goals, Shapes::ShapeRef.new(shape: BusinessGoals, location_name: "businessGoals"))
    PrioritizeBusinessGoals.struct_class = Types::PrioritizeBusinessGoals

    PutPortfolioPreferencesRequest.add_member(:application_mode, Shapes::ShapeRef.new(shape: ApplicationMode, location_name: "applicationMode"))
    PutPortfolioPreferencesRequest.add_member(:application_preferences, Shapes::ShapeRef.new(shape: ApplicationPreferences, location_name: "applicationPreferences"))
    PutPortfolioPreferencesRequest.add_member(:database_preferences, Shapes::ShapeRef.new(shape: DatabasePreferences, location_name: "databasePreferences"))
    PutPortfolioPreferencesRequest.add_member(:prioritize_business_goals, Shapes::ShapeRef.new(shape: PrioritizeBusinessGoals, location_name: "prioritizeBusinessGoals"))
    PutPortfolioPreferencesRequest.struct_class = Types::PutPortfolioPreferencesRequest

    PutPortfolioPreferencesResponse.struct_class = Types::PutPortfolioPreferencesResponse

    RecommendationReportDetails.add_member(:completion_time, Shapes::ShapeRef.new(shape: RecommendationReportTimeStamp, location_name: "completionTime"))
    RecommendationReportDetails.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: String, location_name: "s3Bucket"))
    RecommendationReportDetails.add_member(:s3_keys, Shapes::ShapeRef.new(shape: S3Keys, location_name: "s3Keys"))
    RecommendationReportDetails.add_member(:start_time, Shapes::ShapeRef.new(shape: RecommendationReportTimeStamp, location_name: "startTime"))
    RecommendationReportDetails.add_member(:status, Shapes::ShapeRef.new(shape: RecommendationReportStatus, location_name: "status"))
    RecommendationReportDetails.add_member(:status_message, Shapes::ShapeRef.new(shape: RecommendationReportStatusMessage, location_name: "statusMessage"))
    RecommendationReportDetails.struct_class = Types::RecommendationReportDetails

    RecommendationSet.add_member(:strategy, Shapes::ShapeRef.new(shape: Strategy, location_name: "strategy"))
    RecommendationSet.add_member(:target_destination, Shapes::ShapeRef.new(shape: TargetDestination, location_name: "targetDestination"))
    RecommendationSet.add_member(:transformation_tool, Shapes::ShapeRef.new(shape: TransformationTool, location_name: "transformationTool"))
    RecommendationSet.struct_class = Types::RecommendationSet

    RemoteSourceCodeAnalysisServerInfo.add_member(:remote_source_code_analysis_server_configuration_timestamp, Shapes::ShapeRef.new(shape: String, location_name: "remoteSourceCodeAnalysisServerConfigurationTimestamp"))
    RemoteSourceCodeAnalysisServerInfo.struct_class = Types::RemoteSourceCodeAnalysisServerInfo

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    Result.add_member(:analysis_status, Shapes::ShapeRef.new(shape: AnalysisStatusUnion, location_name: "analysisStatus"))
    Result.add_member(:analysis_type, Shapes::ShapeRef.new(shape: AnalysisType, location_name: "analysisType"))
    Result.add_member(:antipattern_report_result_list, Shapes::ShapeRef.new(shape: AntipatternReportResultList, location_name: "antipatternReportResultList"))
    Result.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    Result.struct_class = Types::Result

    ResultList.member = Shapes::ShapeRef.new(shape: Result)

    S3Keys.member = Shapes::ShapeRef.new(shape: String)

    S3Object.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: S3Bucket, location_name: "s3Bucket"))
    S3Object.add_member(:s3key, Shapes::ShapeRef.new(shape: S3Key, location_name: "s3key"))
    S3Object.struct_class = Types::S3Object

    SelfManageResources.add_member(:target_destination, Shapes::ShapeRef.new(shape: SelfManageTargetDestinations, required: true, location_name: "targetDestination"))
    SelfManageResources.struct_class = Types::SelfManageResources

    SelfManageTargetDestinations.member = Shapes::ShapeRef.new(shape: SelfManageTargetDestination)

    ServerDetail.add_member(:antipattern_report_s3_object, Shapes::ShapeRef.new(shape: S3Object, location_name: "antipatternReportS3Object"))
    ServerDetail.add_member(:antipattern_report_status, Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: "antipatternReportStatus"))
    ServerDetail.add_member(:antipattern_report_status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "antipatternReportStatusMessage"))
    ServerDetail.add_member(:application_component_strategy_summary, Shapes::ShapeRef.new(shape: ListStrategySummary, location_name: "applicationComponentStrategySummary"))
    ServerDetail.add_member(:data_collection_status, Shapes::ShapeRef.new(shape: RunTimeAssessmentStatus, location_name: "dataCollectionStatus"))
    ServerDetail.add_member(:id, Shapes::ShapeRef.new(shape: ResourceId, location_name: "id"))
    ServerDetail.add_member(:last_analyzed_timestamp, Shapes::ShapeRef.new(shape: TimeStamp, location_name: "lastAnalyzedTimestamp"))
    ServerDetail.add_member(:list_antipattern_severity_summary, Shapes::ShapeRef.new(shape: ListAntipatternSeveritySummary, location_name: "listAntipatternSeveritySummary"))
    ServerDetail.add_member(:name, Shapes::ShapeRef.new(shape: ResourceName, location_name: "name"))
    ServerDetail.add_member(:recommendation_set, Shapes::ShapeRef.new(shape: RecommendationSet, location_name: "recommendationSet"))
    ServerDetail.add_member(:server_error, Shapes::ShapeRef.new(shape: ServerError, location_name: "serverError"))
    ServerDetail.add_member(:server_type, Shapes::ShapeRef.new(shape: String, location_name: "serverType"))
    ServerDetail.add_member(:status_message, Shapes::ShapeRef.new(shape: StatusMessage, location_name: "statusMessage"))
    ServerDetail.add_member(:system_info, Shapes::ShapeRef.new(shape: SystemInfo, location_name: "systemInfo"))
    ServerDetail.struct_class = Types::ServerDetail

    ServerDetails.member = Shapes::ShapeRef.new(shape: ServerDetail)

    ServerError.add_member(:server_error_category, Shapes::ShapeRef.new(shape: ServerErrorCategory, location_name: "serverErrorCategory"))
    ServerError.struct_class = Types::ServerError

    ServerStatusSummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    ServerStatusSummary.add_member(:run_time_assessment_status, Shapes::ShapeRef.new(shape: RunTimeAssessmentStatus, location_name: "runTimeAssessmentStatus"))
    ServerStatusSummary.struct_class = Types::ServerStatusSummary

    ServerStrategies.member = Shapes::ShapeRef.new(shape: ServerStrategy)

    ServerStrategy.add_member(:is_preferred, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPreferred"))
    ServerStrategy.add_member(:number_of_application_components, Shapes::ShapeRef.new(shape: Integer, location_name: "numberOfApplicationComponents"))
    ServerStrategy.add_member(:recommendation, Shapes::ShapeRef.new(shape: RecommendationSet, location_name: "recommendation"))
    ServerStrategy.add_member(:status, Shapes::ShapeRef.new(shape: StrategyRecommendation, location_name: "status"))
    ServerStrategy.struct_class = Types::ServerStrategy

    ServerSummary.add_member(:server_os_type, Shapes::ShapeRef.new(shape: ServerOsType, location_name: "ServerOsType"))
    ServerSummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    ServerSummary.struct_class = Types::ServerSummary

    ServiceLinkedRoleLockClientException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ServiceLinkedRoleLockClientException.struct_class = Types::ServiceLinkedRoleLockClientException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    SourceCode.add_member(:location, Shapes::ShapeRef.new(shape: Location, location_name: "location"))
    SourceCode.add_member(:project_name, Shapes::ShapeRef.new(shape: ProjectName, location_name: "projectName"))
    SourceCode.add_member(:source_version, Shapes::ShapeRef.new(shape: SourceVersion, location_name: "sourceVersion"))
    SourceCode.add_member(:version_control, Shapes::ShapeRef.new(shape: VersionControl, location_name: "versionControl"))
    SourceCode.struct_class = Types::SourceCode

    SourceCodeList.member = Shapes::ShapeRef.new(shape: SourceCode)

    SourceCodeRepositories.member = Shapes::ShapeRef.new(shape: SourceCodeRepository)

    SourceCodeRepository.add_member(:branch, Shapes::ShapeRef.new(shape: String, location_name: "branch"))
    SourceCodeRepository.add_member(:project_name, Shapes::ShapeRef.new(shape: String, location_name: "projectName"))
    SourceCodeRepository.add_member(:repository, Shapes::ShapeRef.new(shape: String, location_name: "repository"))
    SourceCodeRepository.add_member(:version_control_type, Shapes::ShapeRef.new(shape: String, location_name: "versionControlType"))
    SourceCodeRepository.struct_class = Types::SourceCodeRepository

    StartAssessmentRequest.add_member(:assessment_targets, Shapes::ShapeRef.new(shape: AssessmentTargets, location_name: "assessmentTargets"))
    StartAssessmentRequest.add_member(:s3bucket_for_analysis_data, Shapes::ShapeRef.new(shape: StartAssessmentRequestS3bucketForAnalysisDataString, location_name: "s3bucketForAnalysisData"))
    StartAssessmentRequest.add_member(:s3bucket_for_report_data, Shapes::ShapeRef.new(shape: StartAssessmentRequestS3bucketForReportDataString, location_name: "s3bucketForReportData"))
    StartAssessmentRequest.struct_class = Types::StartAssessmentRequest

    StartAssessmentResponse.add_member(:assessment_id, Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: "assessmentId"))
    StartAssessmentResponse.struct_class = Types::StartAssessmentResponse

    StartImportFileTaskRequest.add_member(:s3_bucket, Shapes::ShapeRef.new(shape: importS3Bucket, required: true, location_name: "S3Bucket"))
    StartImportFileTaskRequest.add_member(:data_source_type, Shapes::ShapeRef.new(shape: DataSourceType, location_name: "dataSourceType"))
    StartImportFileTaskRequest.add_member(:group_id, Shapes::ShapeRef.new(shape: GroupIds, location_name: "groupId"))
    StartImportFileTaskRequest.add_member(:name, Shapes::ShapeRef.new(shape: StartImportFileTaskRequestNameString, required: true, location_name: "name"))
    StartImportFileTaskRequest.add_member(:s3bucket_for_report_data, Shapes::ShapeRef.new(shape: StartImportFileTaskRequestS3bucketForReportDataString, location_name: "s3bucketForReportData"))
    StartImportFileTaskRequest.add_member(:s3key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "s3key"))
    StartImportFileTaskRequest.struct_class = Types::StartImportFileTaskRequest

    StartImportFileTaskResponse.add_member(:id, Shapes::ShapeRef.new(shape: String, location_name: "id"))
    StartImportFileTaskResponse.struct_class = Types::StartImportFileTaskResponse

    StartRecommendationReportGenerationRequest.add_member(:group_id_filter, Shapes::ShapeRef.new(shape: GroupIds, location_name: "groupIdFilter"))
    StartRecommendationReportGenerationRequest.add_member(:output_format, Shapes::ShapeRef.new(shape: OutputFormat, location_name: "outputFormat"))
    StartRecommendationReportGenerationRequest.struct_class = Types::StartRecommendationReportGenerationRequest

    StartRecommendationReportGenerationResponse.add_member(:id, Shapes::ShapeRef.new(shape: RecommendationTaskId, location_name: "id"))
    StartRecommendationReportGenerationResponse.struct_class = Types::StartRecommendationReportGenerationResponse

    StopAssessmentRequest.add_member(:assessment_id, Shapes::ShapeRef.new(shape: AsyncTaskId, required: true, location_name: "assessmentId"))
    StopAssessmentRequest.struct_class = Types::StopAssessmentRequest

    StopAssessmentResponse.struct_class = Types::StopAssessmentResponse

    StrategyOption.add_member(:is_preferred, Shapes::ShapeRef.new(shape: Boolean, location_name: "isPreferred"))
    StrategyOption.add_member(:strategy, Shapes::ShapeRef.new(shape: Strategy, location_name: "strategy"))
    StrategyOption.add_member(:target_destination, Shapes::ShapeRef.new(shape: TargetDestination, location_name: "targetDestination"))
    StrategyOption.add_member(:tool_name, Shapes::ShapeRef.new(shape: TransformationToolName, location_name: "toolName"))
    StrategyOption.struct_class = Types::StrategyOption

    StrategySummary.add_member(:count, Shapes::ShapeRef.new(shape: Integer, location_name: "count"))
    StrategySummary.add_member(:strategy, Shapes::ShapeRef.new(shape: Strategy, location_name: "strategy"))
    StrategySummary.struct_class = Types::StrategySummary

    SystemInfo.add_member(:cpu_architecture, Shapes::ShapeRef.new(shape: String, location_name: "cpuArchitecture"))
    SystemInfo.add_member(:file_system_type, Shapes::ShapeRef.new(shape: String, location_name: "fileSystemType"))
    SystemInfo.add_member(:network_info_list, Shapes::ShapeRef.new(shape: NetworkInfoList, location_name: "networkInfoList"))
    SystemInfo.add_member(:os_info, Shapes::ShapeRef.new(shape: OSInfo, location_name: "osInfo"))
    SystemInfo.struct_class = Types::SystemInfo

    TargetDatabaseEngines.member = Shapes::ShapeRef.new(shape: TargetDatabaseEngine)

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    TransformationTool.add_member(:description, Shapes::ShapeRef.new(shape: TranformationToolDescription, location_name: "description"))
    TransformationTool.add_member(:name, Shapes::ShapeRef.new(shape: TransformationToolName, location_name: "name"))
    TransformationTool.add_member(:tranformation_tool_installation_link, Shapes::ShapeRef.new(shape: TranformationToolInstallationLink, location_name: "tranformationToolInstallationLink"))
    TransformationTool.struct_class = Types::TransformationTool

    UpdateApplicationComponentConfigRequest.add_member(:app_type, Shapes::ShapeRef.new(shape: AppType, location_name: "appType"))
    UpdateApplicationComponentConfigRequest.add_member(:application_component_id, Shapes::ShapeRef.new(shape: ApplicationComponentId, required: true, location_name: "applicationComponentId"))
    UpdateApplicationComponentConfigRequest.add_member(:configure_only, Shapes::ShapeRef.new(shape: Boolean, location_name: "configureOnly"))
    UpdateApplicationComponentConfigRequest.add_member(:inclusion_status, Shapes::ShapeRef.new(shape: InclusionStatus, location_name: "inclusionStatus"))
    UpdateApplicationComponentConfigRequest.add_member(:secrets_manager_key, Shapes::ShapeRef.new(shape: SecretsManagerKey, location_name: "secretsManagerKey"))
    UpdateApplicationComponentConfigRequest.add_member(:source_code_list, Shapes::ShapeRef.new(shape: SourceCodeList, location_name: "sourceCodeList"))
    UpdateApplicationComponentConfigRequest.add_member(:strategy_option, Shapes::ShapeRef.new(shape: StrategyOption, location_name: "strategyOption"))
    UpdateApplicationComponentConfigRequest.struct_class = Types::UpdateApplicationComponentConfigRequest

    UpdateApplicationComponentConfigResponse.struct_class = Types::UpdateApplicationComponentConfigResponse

    UpdateServerConfigRequest.add_member(:server_id, Shapes::ShapeRef.new(shape: ServerId, required: true, location_name: "serverId"))
    UpdateServerConfigRequest.add_member(:strategy_option, Shapes::ShapeRef.new(shape: StrategyOption, location_name: "strategyOption"))
    UpdateServerConfigRequest.struct_class = Types::UpdateServerConfigRequest

    UpdateServerConfigResponse.struct_class = Types::UpdateServerConfigResponse

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: errorMessage, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException

    VcenterBasedRemoteInfo.add_member(:os_type, Shapes::ShapeRef.new(shape: OSType, location_name: "osType"))
    VcenterBasedRemoteInfo.add_member(:vcenter_configuration_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "vcenterConfigurationTimeStamp"))
    VcenterBasedRemoteInfo.struct_class = Types::VcenterBasedRemoteInfo

    VcenterBasedRemoteInfoList.member = Shapes::ShapeRef.new(shape: VcenterBasedRemoteInfo)

    VersionControlInfo.add_member(:version_control_configuration_time_stamp, Shapes::ShapeRef.new(shape: String, location_name: "versionControlConfigurationTimeStamp"))
    VersionControlInfo.add_member(:version_control_type, Shapes::ShapeRef.new(shape: VersionControlType, location_name: "versionControlType"))
    VersionControlInfo.struct_class = Types::VersionControlInfo

    VersionControlInfoList.member = Shapes::ShapeRef.new(shape: VersionControlInfo)


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2020-02-19"

      api.metadata = {
        "apiVersion" => "2020-02-19",
        "endpointPrefix" => "migrationhub-strategy",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Migration Hub Strategy Recommendations",
        "serviceId" => "MigrationHubStrategy",
        "signatureVersion" => "v4",
        "signingName" => "migrationhub-strategy",
        "uid" => "migrationhubstrategy-2020-02-19",
      }

      api.add_operation(:get_application_component_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationComponentDetails"
        o.http_method = "GET"
        o.http_request_uri = "/get-applicationcomponent-details/{applicationComponentId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationComponentDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationComponentDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_application_component_strategies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetApplicationComponentStrategies"
        o.http_method = "GET"
        o.http_request_uri = "/get-applicationcomponent-strategies/{applicationComponentId}"
        o.input = Shapes::ShapeRef.new(shape: GetApplicationComponentStrategiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetApplicationComponentStrategiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetAssessment"
        o.http_method = "GET"
        o.http_request_uri = "/get-assessment/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: GetAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_import_file_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetImportFileTask"
        o.http_method = "GET"
        o.http_request_uri = "/get-import-file-task/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetImportFileTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: GetImportFileTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_latest_assessment_id, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetLatestAssessmentId"
        o.http_method = "GET"
        o.http_request_uri = "/get-latest-assessment-id"
        o.input = Shapes::ShapeRef.new(shape: GetLatestAssessmentIdRequest)
        o.output = Shapes::ShapeRef.new(shape: GetLatestAssessmentIdResponse)
        o.errors << Shapes::ShapeRef.new(shape: DependencyException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_portfolio_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortfolioPreferences"
        o.http_method = "GET"
        o.http_request_uri = "/get-portfolio-preferences"
        o.input = Shapes::ShapeRef.new(shape: GetPortfolioPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortfolioPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_portfolio_summary, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetPortfolioSummary"
        o.http_method = "GET"
        o.http_request_uri = "/get-portfolio-summary"
        o.input = Shapes::ShapeRef.new(shape: GetPortfolioSummaryRequest)
        o.output = Shapes::ShapeRef.new(shape: GetPortfolioSummaryResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_recommendation_report_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRecommendationReportDetails"
        o.http_method = "GET"
        o.http_request_uri = "/get-recommendation-report-details/{id}"
        o.input = Shapes::ShapeRef.new(shape: GetRecommendationReportDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetRecommendationReportDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:get_server_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServerDetails"
        o.http_method = "GET"
        o.http_request_uri = "/get-server-details/{serverId}"
        o.input = Shapes::ShapeRef.new(shape: GetServerDetailsRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServerDetailsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:get_server_strategies, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetServerStrategies"
        o.http_method = "GET"
        o.http_request_uri = "/get-server-strategies/{serverId}"
        o.input = Shapes::ShapeRef.new(shape: GetServerStrategiesRequest)
        o.output = Shapes::ShapeRef.new(shape: GetServerStrategiesResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_application_components, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListApplicationComponents"
        o.http_method = "POST"
        o.http_request_uri = "/list-applicationcomponents"
        o.input = Shapes::ShapeRef.new(shape: ListApplicationComponentsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListApplicationComponentsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceLinkedRoleLockClientException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_collectors, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListCollectors"
        o.http_method = "GET"
        o.http_request_uri = "/list-collectors"
        o.input = Shapes::ShapeRef.new(shape: ListCollectorsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListCollectorsResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_import_file_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListImportFileTask"
        o.http_method = "GET"
        o.http_request_uri = "/list-import-file-task"
        o.input = Shapes::ShapeRef.new(shape: ListImportFileTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: ListImportFileTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:list_servers, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListServers"
        o.http_method = "POST"
        o.http_request_uri = "/list-servers"
        o.input = Shapes::ShapeRef.new(shape: ListServersRequest)
        o.output = Shapes::ShapeRef.new(shape: ListServersResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:put_portfolio_preferences, Seahorse::Model::Operation.new.tap do |o|
        o.name = "PutPortfolioPreferences"
        o.http_method = "POST"
        o.http_request_uri = "/put-portfolio-preferences"
        o.input = Shapes::ShapeRef.new(shape: PutPortfolioPreferencesRequest)
        o.output = Shapes::ShapeRef.new(shape: PutPortfolioPreferencesResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/start-assessment"
        o.input = Shapes::ShapeRef.new(shape: StartAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StartAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_import_file_task, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartImportFileTask"
        o.http_method = "POST"
        o.http_request_uri = "/start-import-file-task"
        o.input = Shapes::ShapeRef.new(shape: StartImportFileTaskRequest)
        o.output = Shapes::ShapeRef.new(shape: StartImportFileTaskResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:start_recommendation_report_generation, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartRecommendationReportGeneration"
        o.http_method = "POST"
        o.http_request_uri = "/start-recommendation-report-generation"
        o.input = Shapes::ShapeRef.new(shape: StartRecommendationReportGenerationRequest)
        o.output = Shapes::ShapeRef.new(shape: StartRecommendationReportGenerationResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:stop_assessment, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopAssessment"
        o.http_method = "POST"
        o.http_request_uri = "/stop-assessment"
        o.input = Shapes::ShapeRef.new(shape: StopAssessmentRequest)
        o.output = Shapes::ShapeRef.new(shape: StopAssessmentResponse)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_application_component_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateApplicationComponentConfig"
        o.http_method = "POST"
        o.http_request_uri = "/update-applicationcomponent-config/"
        o.input = Shapes::ShapeRef.new(shape: UpdateApplicationComponentConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateApplicationComponentConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:update_server_config, Seahorse::Model::Operation.new.tap do |o|
        o.name = "UpdateServerConfig"
        o.http_method = "POST"
        o.http_request_uri = "/update-server-config/"
        o.input = Shapes::ShapeRef.new(shape: UpdateServerConfigRequest)
        o.output = Shapes::ShapeRef.new(shape: UpdateServerConfigResponse)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
