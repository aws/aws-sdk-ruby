# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubStrategy
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AnalysisStatusUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.migrationhubstrategy#AnalysisStatusUnion', name: 'AnalysisStatusUnion')
    AnalysisType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AnalysisType', name: 'AnalysisType', traits: {"smithy.api#enum" => [{"value" => "SOURCE_CODE_ANALYSIS", "name" => "SOURCE_CODE_ANALYSIS"}, {"value" => "DATABASE_ANALYSIS", "name" => "DATABASE_ANALYSIS"}, {"value" => "RUNTIME_ANALYSIS", "name" => "RUNTIME_ANALYSIS"}, {"value" => "BINARY_ANALYSIS", "name" => "BINARY_ANALYSIS"}]})
    AnalyzableServerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AnalyzableServerSummary', name: 'AnalyzableServerSummary')
    AnalyzableServerSummaryList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AnalyzableServerSummaryList', name: 'AnalyzableServerSummaryList')
    AnalyzerNameUnion = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.migrationhubstrategy#AnalyzerNameUnion', name: 'AnalyzerNameUnion')
    AntipatternReportResult = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AntipatternReportResult', name: 'AntipatternReportResult')
    AntipatternReportResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AntipatternReportResultList', name: 'AntipatternReportResultList')
    AntipatternReportStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AntipatternReportStatus', name: 'AntipatternReportStatus', traits: {"smithy.api#enum" => [{"name" => "FAILED", "value" => "FAILED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCESS", "value" => "SUCCESS"}]})
    AntipatternSeveritySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AntipatternSeveritySummary', name: 'AntipatternSeveritySummary')
    AppType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AppType', name: 'AppType', traits: {"smithy.api#enum" => [{"value" => "DotNetFramework", "name" => "dotNetFramework"}, {"value" => "Java", "name" => "java"}, {"value" => "SQLServer", "name" => "sqlServer"}, {"value" => "IIS", "name" => "IIS"}, {"value" => "Oracle", "name" => "oracle"}, {"value" => "Other", "name" => "other"}, {"value" => "Tomcat", "name" => "tomcat"}, {"value" => "JBoss", "name" => "jboss"}, {"value" => "Spring", "name" => "spring"}, {"value" => "Mongo DB", "name" => "mongodb"}, {"value" => "DB2", "name" => "db2"}, {"value" => "Maria DB", "name" => "mariadb"}, {"value" => "MySQL", "name" => "mysql"}, {"value" => "Sybase", "name" => "sybase"}, {"value" => "PostgreSQLServer", "name" => "postgresqlserver"}, {"value" => "Cassandra", "name" => "cassandra"}, {"value" => "IBM WebSphere", "name" => "websphere"}, {"value" => "Oracle WebLogic", "name" => "weblogic"}, {"value" => "Visual Basic", "name" => "visualbasic"}, {"value" => "Unknown", "name" => "unknown"}, {"value" => "DotnetCore", "name" => "dotnetcore"}, {"value" => "Dotnet", "name" => "dotnet"}]})
    AppUnitError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AppUnitError', name: 'AppUnitError')
    AppUnitErrorCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AppUnitErrorCategory', name: 'AppUnitErrorCategory', traits: {"smithy.api#enum" => [{"name" => "CREDENTIAL_ERROR", "value" => "CREDENTIAL_ERROR"}, {"name" => "CONNECTIVITY_ERROR", "value" => "CONNECTIVITY_ERROR"}, {"name" => "PERMISSION_ERROR", "value" => "PERMISSION_ERROR"}, {"name" => "UNSUPPORTED_ERROR", "value" => "UNSUPPORTED_ERROR"}, {"name" => "OTHER_ERROR", "value" => "OTHER_ERROR"}]})
    ApplicationComponentCriteria = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentCriteria', name: 'ApplicationComponentCriteria', traits: {"smithy.api#enum" => [{"value" => "NOT_DEFINED", "name" => "NOT_DEFINED"}, {"value" => "APP_NAME", "name" => "APP_NAME"}, {"value" => "SERVER_ID", "name" => "SERVER_ID"}, {"value" => "APP_TYPE", "name" => "APP_TYPE"}, {"value" => "STRATEGY", "name" => "STRATEGY"}, {"value" => "DESTINATION", "name" => "DESTINATION"}, {"value" => "ANALYSIS_STATUS", "name" => "ANALYSIS_STATUS"}, {"value" => "ERROR_CATEGORY", "name" => "ERROR_CATEGORY"}]})
    ApplicationComponentDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentDetail', name: 'ApplicationComponentDetail')
    ApplicationComponentDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentDetails', name: 'ApplicationComponentDetails')
    ApplicationComponentId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentId', name: 'ApplicationComponentId', traits: {"smithy.api#length" => {"max" => 44}, "smithy.api#pattern" => "[0-9a-zA-Z-]+"})
    ApplicationComponentStatusSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentStatusSummary', name: 'ApplicationComponentStatusSummary')
    ApplicationComponentStrategies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentStrategies', name: 'ApplicationComponentStrategies')
    ApplicationComponentStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentStrategy', name: 'ApplicationComponentStrategy')
    ApplicationComponentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationComponentSummary', name: 'ApplicationComponentSummary')
    ApplicationMode = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationMode', name: 'ApplicationMode', traits: {"smithy.api#enum" => [{"name" => "ALL", "value" => "ALL"}, {"name" => "KNOWN", "value" => "KNOWN"}, {"name" => "UNKNOWN", "value" => "UNKNOWN"}]})
    ApplicationPreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ApplicationPreferences', name: 'ApplicationPreferences')
    AssessmentDataSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentDataSourceType', name: 'AssessmentDataSourceType', traits: {"smithy.api#enum" => [{"value" => "StrategyRecommendationsApplicationDataCollector", "name" => "SR_COLLECTOR"}, {"value" => "ManualImport", "name" => "MANUAL_IMPORT"}, {"value" => "ApplicationDiscoveryService", "name" => "ADS"}]})
    AssessmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentStatus', name: 'AssessmentStatus', traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    AssessmentStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentStatusMessage', name: 'AssessmentStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*\\S.*"})
    AssessmentSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentSummary', name: 'AssessmentSummary')
    AssessmentTarget = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentTarget', name: 'AssessmentTarget')
    AssessmentTargetValues = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentTargetValues', name: 'AssessmentTargetValues')
    AssessmentTargets = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AssessmentTargets', name: 'AssessmentTargets', traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssociatedApplication = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AssociatedApplication', name: 'AssociatedApplication')
    AssociatedApplications = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AssociatedApplications', name: 'AssociatedApplications')
    AssociatedServerIDs = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AssociatedServerIDs', name: 'AssociatedServerIDs')
    AsyncTaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AsyncTaskId', name: 'AsyncTaskId', traits: {"smithy.api#length" => {"min" => 0, "max" => 52}, "smithy.api#pattern" => "[0-9a-z-:]+"})
    AuthType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AuthType', name: 'AuthType', traits: {"smithy.api#enum" => [{"value" => "NTLM", "name" => "NTLM"}, {"value" => "SSH", "name" => "SSH"}, {"value" => "CERT", "name" => "CERT"}]})
    AwsManagedResources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#AwsManagedResources', name: 'AwsManagedResources')
    AwsManagedTargetDestination = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#AwsManagedTargetDestination', name: 'AwsManagedTargetDestination', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "AWS Elastic BeanStalk", "name" => "AWS_ELASTIC_BEANSTALK"}, {"value" => "AWS Fargate", "name" => "AWS_FARGATE"}]})
    AwsManagedTargetDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#AwsManagedTargetDestinations', name: 'AwsManagedTargetDestinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    BinaryAnalyzerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#BinaryAnalyzerName', name: 'BinaryAnalyzerName', traits: {"smithy.api#enum" => [{"value" => "DLL_ANALYZER", "name" => "DLL_ANALYZER"}, {"value" => "BYTECODE_ANALYZER", "name" => "BYTECODE_ANALYZER"}]})
    Boolean = Smithy::Schema::Shapes::BooleanShape.new(id: 'com.amazonaws.migrationhubstrategy#Boolean', name: 'Boolean')
    BusinessGoals = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#BusinessGoals', name: 'BusinessGoals')
    BusinessGoalsInteger = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhubstrategy#BusinessGoalsInteger', name: 'BusinessGoalsInteger', traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    Collector = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#Collector', name: 'Collector')
    CollectorHealth = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#CollectorHealth', name: 'CollectorHealth', traits: {"smithy.api#enum" => [{"value" => "COLLECTOR_HEALTHY", "name" => "COLLECTOR_HEALTHY"}, {"value" => "COLLECTOR_UNHEALTHY", "name" => "COLLECTOR_UNHEALTHY"}]})
    Collectors = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#Collectors', name: 'Collectors')
    Condition = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#Condition', name: 'Condition', traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}, {"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "NOT_CONTAINS", "name" => "NOT_CONTAINS"}]})
    ConfigurationSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ConfigurationSummary', name: 'ConfigurationSummary')
    ConflictException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ConflictException', name: 'ConflictException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DataCollectionDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#DataCollectionDetails', name: 'DataCollectionDetails')
    DataSourceType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#DataSourceType', name: 'DataSourceType', traits: {"smithy.api#enum" => [{"value" => "ApplicationDiscoveryService", "name" => "ADS"}, {"value" => "MPA", "name" => "MPA"}, {"value" => "Import", "name" => "IMPORT"}, {"value" => "StrategyRecommendationsApplicationDataCollector", "name" => "MHSR_COLLECTOR"}]})
    DatabaseConfigDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#DatabaseConfigDetail', name: 'DatabaseConfigDetail')
    DatabaseManagementPreference = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#DatabaseManagementPreference', name: 'DatabaseManagementPreference', traits: {"smithy.api#enum" => [{"value" => "AWS-managed", "name" => "AWS_MANAGED"}, {"value" => "Self-manage", "name" => "SELF_MANAGE"}, {"value" => "No preference", "name" => "NO_PREFERENCE"}]})
    DatabaseMigrationPreference = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.migrationhubstrategy#DatabaseMigrationPreference', name: 'DatabaseMigrationPreference')
    DatabasePreferences = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#DatabasePreferences', name: 'DatabasePreferences')
    DependencyException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#DependencyException', name: 'DependencyException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    GetApplicationComponentDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetApplicationComponentDetailsInput', name: 'GetApplicationComponentDetailsInput')
    GetApplicationComponentDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetApplicationComponentDetailsOutput', name: 'GetApplicationComponentDetailsOutput')
    GetApplicationComponentStrategiesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetApplicationComponentStrategiesInput', name: 'GetApplicationComponentStrategiesInput')
    GetApplicationComponentStrategiesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetApplicationComponentStrategiesOutput', name: 'GetApplicationComponentStrategiesOutput')
    GetAssessmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetAssessmentInput', name: 'GetAssessmentInput')
    GetAssessmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetAssessmentOutput', name: 'GetAssessmentOutput')
    GetImportFileTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetImportFileTaskInput', name: 'GetImportFileTaskInput')
    GetImportFileTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetImportFileTaskOutput', name: 'GetImportFileTaskOutput')
    GetLatestAssessmentIdInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetLatestAssessmentIdInput', name: 'GetLatestAssessmentIdInput')
    GetLatestAssessmentIdOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetLatestAssessmentIdOutput', name: 'GetLatestAssessmentIdOutput')
    GetPortfolioPreferencesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetPortfolioPreferencesInput', name: 'GetPortfolioPreferencesInput')
    GetPortfolioPreferencesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetPortfolioPreferencesOutput', name: 'GetPortfolioPreferencesOutput')
    GetPortfolioSummaryInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetPortfolioSummaryInput', name: 'GetPortfolioSummaryInput')
    GetPortfolioSummaryOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetPortfolioSummaryOutput', name: 'GetPortfolioSummaryOutput')
    GetRecommendationReportDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetRecommendationReportDetailsInput', name: 'GetRecommendationReportDetailsInput')
    GetRecommendationReportDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetRecommendationReportDetailsOutput', name: 'GetRecommendationReportDetailsOutput')
    GetServerDetailsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetServerDetailsInput', name: 'GetServerDetailsInput')
    GetServerDetailsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetServerDetailsOutput', name: 'GetServerDetailsOutput')
    GetServerStrategiesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetServerStrategiesInput', name: 'GetServerStrategiesInput')
    GetServerStrategiesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#GetServerStrategiesOutput', name: 'GetServerStrategiesOutput')
    Group = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#Group', name: 'Group')
    GroupIds = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#GroupIds', name: 'GroupIds')
    GroupName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#GroupName', name: 'GroupName', traits: {"smithy.api#enum" => [{"value" => "ExternalId", "name" => "EXTERNAL_ID"}, {"value" => "ExternalSourceType", "name" => "EXTERNAL_SOURCE_TYPE"}]})
    Heterogeneous = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#Heterogeneous', name: 'Heterogeneous')
    HeterogeneousTargetDatabaseEngine = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#HeterogeneousTargetDatabaseEngine', name: 'HeterogeneousTargetDatabaseEngine', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "Amazon Aurora", "name" => "AMAZON_AURORA"}, {"value" => "AWS PostgreSQL", "name" => "AWS_POSTGRESQL"}, {"value" => "MySQL", "name" => "MYSQL"}, {"value" => "Microsoft SQL Server", "name" => "MICROSOFT_SQL_SERVER"}, {"value" => "Oracle Database", "name" => "ORACLE_DATABASE"}, {"value" => "MariaDB", "name" => "MARIA_DB"}, {"value" => "SAP", "name" => "SAP"}, {"value" => "Db2 LUW", "name" => "DB2_LUW"}, {"value" => "MongoDB", "name" => "MONGO_DB"}]})
    HeterogeneousTargetDatabaseEngines = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#HeterogeneousTargetDatabaseEngines', name: 'HeterogeneousTargetDatabaseEngines', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Homogeneous = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#Homogeneous', name: 'Homogeneous')
    HomogeneousTargetDatabaseEngine = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#HomogeneousTargetDatabaseEngine', name: 'HomogeneousTargetDatabaseEngine', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}]})
    HomogeneousTargetDatabaseEngines = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#HomogeneousTargetDatabaseEngines', name: 'HomogeneousTargetDatabaseEngines', traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    IPAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#IPAddress', name: 'IPAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 15}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"})
    IPAddressBasedRemoteInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#IPAddressBasedRemoteInfo', name: 'IPAddressBasedRemoteInfo')
    IPAddressBasedRemoteInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#IPAddressBasedRemoteInfoList', name: 'IPAddressBasedRemoteInfoList')
    ImportFileTaskInformation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ImportFileTaskInformation', name: 'ImportFileTaskInformation')
    ImportFileTaskStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ImportFileTaskStatus', name: 'ImportFileTaskStatus', traits: {"smithy.api#enum" => [{"value" => "ImportInProgress", "name" => "IMPORT_IN_PROGRESS"}, {"value" => "ImportFailed", "name" => "IMPORT_FAILED"}, {"value" => "ImportPartialSuccess", "name" => "IMPORT_PARTIAL_SUCCESS"}, {"value" => "ImportSuccess", "name" => "IMPORT_SUCCESS"}, {"value" => "DeleteInProgress", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DeleteFailed", "name" => "DELETE_FAILED"}, {"value" => "DeletePartialSuccess", "name" => "DELETE_PARTIAL_SUCCESS"}, {"value" => "DeleteSuccess", "name" => "DELETE_SUCCESS"}]})
    InclusionStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#InclusionStatus', name: 'InclusionStatus', traits: {"smithy.api#enum" => [{"name" => "EXCLUDE_FROM_RECOMMENDATION", "value" => "excludeFromAssessment"}, {"name" => "INCLUDE_IN_RECOMMENDATION", "value" => "includeInAssessment"}]})
    Integer = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhubstrategy#Integer', name: 'Integer')
    InterfaceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#InterfaceName', name: 'InterfaceName', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAnalyzableServersRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListAnalyzableServersRequest', name: 'ListAnalyzableServersRequest')
    ListAnalyzableServersResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListAnalyzableServersResponse', name: 'ListAnalyzableServersResponse')
    ListAntipatternSeveritySummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListAntipatternSeveritySummary', name: 'ListAntipatternSeveritySummary')
    ListApplicationComponentStatusSummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListApplicationComponentStatusSummary', name: 'ListApplicationComponentStatusSummary')
    ListApplicationComponentSummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListApplicationComponentSummary', name: 'ListApplicationComponentSummary')
    ListApplicationComponentsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListApplicationComponentsInput', name: 'ListApplicationComponentsInput')
    ListApplicationComponentsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListApplicationComponentsOutput', name: 'ListApplicationComponentsOutput')
    ListCollectorsInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListCollectorsInput', name: 'ListCollectorsInput')
    ListCollectorsOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListCollectorsOutput', name: 'ListCollectorsOutput')
    ListImportFileTaskInformation = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListImportFileTaskInformation', name: 'ListImportFileTaskInformation')
    ListImportFileTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListImportFileTaskInput', name: 'ListImportFileTaskInput')
    ListImportFileTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListImportFileTaskOutput', name: 'ListImportFileTaskOutput')
    ListServerStatusSummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListServerStatusSummary', name: 'ListServerStatusSummary')
    ListServerSummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListServerSummary', name: 'ListServerSummary')
    ListServersInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListServersInput', name: 'ListServersInput')
    ListServersOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ListServersOutput', name: 'ListServersOutput')
    ListStrategySummary = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ListStrategySummary', name: 'ListStrategySummary')
    Location = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#Location', name: 'Location', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*\\S.*"})
    MacAddress = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#MacAddress', name: 'MacAddress', traits: {"smithy.api#length" => {"min" => 0, "max" => 17}, "smithy.api#pattern" => "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})|([0-9a-fA-F]{4}\\\\.[0-9a-fA-F]{4}\\\\.[0-9a-fA-F]{4})$”$"})
    ManagementPreference = Smithy::Schema::Shapes::UnionShape.new(id: 'com.amazonaws.migrationhubstrategy#ManagementPreference', name: 'ManagementPreference')
    MaxResult = Smithy::Schema::Shapes::IntegerShape.new(id: 'com.amazonaws.migrationhubstrategy#MaxResult', name: 'MaxResult')
    NetMask = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#NetMask', name: 'NetMask', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    NetworkInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#NetworkInfo', name: 'NetworkInfo')
    NetworkInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#NetworkInfoList', name: 'NetworkInfoList')
    NextToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#NextToken', name: 'NextToken', traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*\\S.*"})
    NoDatabaseMigrationPreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#NoDatabaseMigrationPreference', name: 'NoDatabaseMigrationPreference')
    NoManagementPreference = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#NoManagementPreference', name: 'NoManagementPreference')
    NoPreferenceTargetDestination = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#NoPreferenceTargetDestination', name: 'NoPreferenceTargetDestination', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "AWS Elastic BeanStalk", "name" => "AWS_ELASTIC_BEANSTALK"}, {"value" => "AWS Fargate", "name" => "AWS_FARGATE"}, {"value" => "Amazon Elastic Cloud Compute (EC2)", "name" => "AMAZON_ELASTIC_CLOUD_COMPUTE"}, {"value" => "Amazon Elastic Container Service (ECS)", "name" => "AMAZON_ELASTIC_CONTAINER_SERVICE"}, {"value" => "Amazon Elastic Kubernetes Service (EKS)", "name" => "AMAZON_ELASTIC_KUBERNETES_SERVICE"}]})
    NoPreferenceTargetDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#NoPreferenceTargetDestinations', name: 'NoPreferenceTargetDestinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    OSInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#OSInfo', name: 'OSInfo')
    OSType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#OSType', name: 'OSType', traits: {"smithy.api#enum" => [{"value" => "LINUX", "name" => "LINUX"}, {"value" => "WINDOWS", "name" => "WINDOWS"}]})
    OSVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#OSVersion', name: 'OSVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*\\S.*"})
    OutputFormat = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#OutputFormat', name: 'OutputFormat', traits: {"smithy.api#enum" => [{"value" => "Excel", "name" => "Excel"}, {"value" => "Json", "name" => "Json"}]})
    PipelineInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#PipelineInfo', name: 'PipelineInfo')
    PipelineInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#PipelineInfoList', name: 'PipelineInfoList')
    PipelineType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#PipelineType', name: 'PipelineType', traits: {"smithy.api#enum" => [{"value" => "AZURE_DEVOPS", "name" => "AZURE_DEVOPS"}]})
    PrioritizeBusinessGoals = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#PrioritizeBusinessGoals', name: 'PrioritizeBusinessGoals')
    ProjectName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ProjectName', name: 'ProjectName', traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*\\S.*"})
    PutPortfolioPreferencesInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#PutPortfolioPreferencesInput', name: 'PutPortfolioPreferencesInput')
    PutPortfolioPreferencesOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#PutPortfolioPreferencesOutput', name: 'PutPortfolioPreferencesOutput')
    RecommendationReportDetails = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#RecommendationReportDetails', name: 'RecommendationReportDetails')
    RecommendationReportStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#RecommendationReportStatus', name: 'RecommendationReportStatus', traits: {"smithy.api#enum" => [{"name" => "FAILED", "value" => "FAILED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCESS", "value" => "SUCCESS"}]})
    RecommendationReportStatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#RecommendationReportStatusMessage', name: 'RecommendationReportStatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*\\S.*"})
    RecommendationReportTimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.migrationhubstrategy#RecommendationReportTimeStamp', name: 'RecommendationReportTimeStamp')
    RecommendationSet = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#RecommendationSet', name: 'RecommendationSet')
    RecommendationTaskId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#RecommendationTaskId', name: 'RecommendationTaskId', traits: {"smithy.api#length" => {"min" => 0, "max" => 52}, "smithy.api#pattern" => "[0-9a-z-:]+"})
    RemoteSourceCodeAnalysisServerInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#RemoteSourceCodeAnalysisServerInfo', name: 'RemoteSourceCodeAnalysisServerInfo')
    ResourceId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ResourceId', name: 'ResourceId', traits: {"smithy.api#length" => {"min" => 0, "max" => 44}, "smithy.api#pattern" => "^[0-9a-b]+"})
    ResourceName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ResourceName', name: 'ResourceName')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSubType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ResourceSubType', name: 'ResourceSubType', traits: {"smithy.api#enum" => [{"value" => "Database", "name" => "DATABASE"}, {"value" => "Process", "name" => "PROCESS"}, {"value" => "DatabaseProcess", "name" => "DATABASE_PROCESS"}]})
    Result = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#Result', name: 'Result')
    ResultList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ResultList', name: 'ResultList')
    RunTimeAnalyzerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#RunTimeAnalyzerName', name: 'RunTimeAnalyzerName', traits: {"smithy.api#enum" => [{"value" => "A2C_ANALYZER", "name" => "A2C_ANALYZER"}, {"value" => "REHOST_ANALYZER", "name" => "REHOST_ANALYZER"}, {"value" => "EMP_PA_ANALYZER", "name" => "EMP_PA_ANALYZER"}, {"value" => "DATABASE_ANALYZER", "name" => "DATABASE_ANALYZER"}, {"value" => "SCT_ANALYZER", "name" => "SCT_ANALYZER"}]})
    RunTimeAssessmentStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#RunTimeAssessmentStatus', name: 'RunTimeAssessmentStatus', traits: {"smithy.api#enum" => [{"name" => "DC_TO_BE_SCHEDULED", "value" => "dataCollectionTaskToBeScheduled"}, {"name" => "DC_REQ_SENT", "value" => "dataCollectionTaskScheduled"}, {"name" => "DC_STARTED", "value" => "dataCollectionTaskStarted"}, {"name" => "DC_STOPPED", "value" => "dataCollectionTaskStopped"}, {"name" => "DC_SUCCESS", "value" => "dataCollectionTaskSuccess"}, {"name" => "DC_FAILED", "value" => "dataCollectionTaskFailed"}, {"name" => "DC_PARTIAL_SUCCESS", "value" => "dataCollectionTaskPartialSuccess"}]})
    RuntimeAnalysisStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#RuntimeAnalysisStatus', name: 'RuntimeAnalysisStatus', traits: {"smithy.api#enum" => [{"name" => "ANALYSIS_TO_BE_SCHEDULED", "value" => "ANALYSIS_TO_BE_SCHEDULED"}, {"name" => "ANALYSIS_STARTED", "value" => "ANALYSIS_STARTED"}, {"name" => "ANALYSIS_SUCCESS", "value" => "ANALYSIS_SUCCESS"}, {"name" => "ANALYSIS_FAILED", "value" => "ANALYSIS_FAILED"}]})
    S3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#S3Bucket', name: 'S3Bucket', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"})
    S3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#S3Key', name: 'S3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    S3Keys = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#S3Keys', name: 'S3Keys')
    S3Object = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#S3Object', name: 'S3Object')
    SecretsManagerKey = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#SecretsManagerKey', name: 'SecretsManagerKey', traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    SelfManageResources = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#SelfManageResources', name: 'SelfManageResources')
    SelfManageTargetDestination = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#SelfManageTargetDestination', name: 'SelfManageTargetDestination', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "Amazon Elastic Cloud Compute (EC2)", "name" => "AMAZON_ELASTIC_CLOUD_COMPUTE"}, {"value" => "Amazon Elastic Container Service (ECS)", "name" => "AMAZON_ELASTIC_CONTAINER_SERVICE"}, {"value" => "Amazon Elastic Kubernetes Service (EKS)", "name" => "AMAZON_ELASTIC_KUBERNETES_SERVICE"}]})
    SelfManageTargetDestinations = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#SelfManageTargetDestinations', name: 'SelfManageTargetDestinations', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ServerCriteria = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerCriteria', name: 'ServerCriteria', traits: {"smithy.api#enum" => [{"value" => "NOT_DEFINED", "name" => "NOT_DEFINED"}, {"value" => "OS_NAME", "name" => "OS_NAME"}, {"value" => "STRATEGY", "name" => "STRATEGY"}, {"value" => "DESTINATION", "name" => "DESTINATION"}, {"value" => "SERVER_ID", "name" => "SERVER_ID"}, {"value" => "ANALYSIS_STATUS", "name" => "ANALYSIS_STATUS"}, {"value" => "ERROR_CATEGORY", "name" => "ERROR_CATEGORY"}]})
    ServerDetail = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerDetail', name: 'ServerDetail')
    ServerDetails = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerDetails', name: 'ServerDetails')
    ServerError = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerError', name: 'ServerError')
    ServerErrorCategory = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerErrorCategory', name: 'ServerErrorCategory', traits: {"smithy.api#enum" => [{"name" => "CONNECTIVITY_ERROR", "value" => "CONNECTIVITY_ERROR"}, {"name" => "CREDENTIAL_ERROR", "value" => "CREDENTIAL_ERROR"}, {"name" => "PERMISSION_ERROR", "value" => "PERMISSION_ERROR"}, {"name" => "ARCHITECTURE_ERROR", "value" => "ARCHITECTURE_ERROR"}, {"name" => "OTHER_ERROR", "value" => "OTHER_ERROR"}]})
    ServerId = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerId', name: 'ServerId', traits: {"smithy.api#length" => {"min" => 1, "max" => 27}, "smithy.api#pattern" => ".*\\S.*"})
    ServerOsType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerOsType', name: 'ServerOsType', traits: {"smithy.api#enum" => [{"value" => "WindowsServer", "name" => "windowsServer"}, {"value" => "AmazonLinux", "name" => "amazonLinux"}, {"value" => "EndOfSupportWindowsServer", "name" => "endOfSupportWindowsServer"}, {"value" => "Redhat", "name" => "redhat"}, {"value" => "Other", "name" => "other"}]})
    ServerStatusSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerStatusSummary', name: 'ServerStatusSummary')
    ServerStrategies = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerStrategies', name: 'ServerStrategies')
    ServerStrategy = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerStrategy', name: 'ServerStrategy')
    ServerSummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServerSummary', name: 'ServerSummary')
    ServiceLinkedRoleLockClientException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServiceLinkedRoleLockClientException', name: 'ServiceLinkedRoleLockClientException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceQuotaExceededException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ServiceQuotaExceededException', name: 'ServiceQuotaExceededException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Severity = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#Severity', name: 'Severity', traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    SortOrder = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#SortOrder', name: 'SortOrder', traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    SourceCode = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#SourceCode', name: 'SourceCode')
    SourceCodeAnalyzerName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#SourceCodeAnalyzerName', name: 'SourceCodeAnalyzerName', traits: {"smithy.api#enum" => [{"value" => "CSHARP_ANALYZER", "name" => "CSHARP_ANALYZER"}, {"value" => "JAVA_ANALYZER", "name" => "JAVA_ANALYZER"}, {"value" => "BYTECODE_ANALYZER", "name" => "BYTECODE_ANALYZER"}, {"value" => "PORTING_ASSISTANT", "name" => "PORTING_ASSISTANT"}]})
    SourceCodeList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#SourceCodeList', name: 'SourceCodeList')
    SourceCodeRepositories = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#SourceCodeRepositories', name: 'SourceCodeRepositories')
    SourceCodeRepository = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#SourceCodeRepository', name: 'SourceCodeRepository')
    SourceVersion = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#SourceVersion', name: 'SourceVersion', traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => ".*\\S.*"})
    SrcCodeOrDbAnalysisStatus = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#SrcCodeOrDbAnalysisStatus', name: 'SrcCodeOrDbAnalysisStatus', traits: {"smithy.api#enum" => [{"name" => "ANALYSIS_TO_BE_SCHEDULED", "value" => "ANALYSIS_TO_BE_SCHEDULED"}, {"name" => "ANALYSIS_STARTED", "value" => "ANALYSIS_STARTED"}, {"name" => "ANALYSIS_SUCCESS", "value" => "ANALYSIS_SUCCESS"}, {"name" => "ANALYSIS_FAILED", "value" => "ANALYSIS_FAILED"}, {"name" => "ANALYSIS_PARTIAL_SUCCESS", "value" => "ANALYSIS_PARTIAL_SUCCESS"}, {"name" => "UNCONFIGURED", "value" => "UNCONFIGURED"}, {"name" => "CONFIGURED", "value" => "CONFIGURED"}]})
    StartAssessmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StartAssessmentInput', name: 'StartAssessmentInput')
    StartAssessmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StartAssessmentOutput', name: 'StartAssessmentOutput')
    StartImportFileTaskInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StartImportFileTaskInput', name: 'StartImportFileTaskInput')
    StartImportFileTaskOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StartImportFileTaskOutput', name: 'StartImportFileTaskOutput')
    StartRecommendationReportGenerationInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StartRecommendationReportGenerationInput', name: 'StartRecommendationReportGenerationInput')
    StartRecommendationReportGenerationOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StartRecommendationReportGenerationOutput', name: 'StartRecommendationReportGenerationOutput')
    StatusMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#StatusMessage', name: 'StatusMessage', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    StopAssessmentInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StopAssessmentInput', name: 'StopAssessmentInput')
    StopAssessmentOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StopAssessmentOutput', name: 'StopAssessmentOutput')
    Strategy = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#Strategy', name: 'Strategy', traits: {"smithy.api#enum" => [{"value" => "Rehost", "name" => "REHOST"}, {"value" => "Retirement", "name" => "RETIREMENT"}, {"value" => "Refactor", "name" => "REFACTOR"}, {"value" => "Replatform", "name" => "REPLATFORM"}, {"value" => "Retain", "name" => "RETAIN"}, {"value" => "Relocate", "name" => "RELOCATE"}, {"value" => "Repurchase", "name" => "REPURCHASE"}]})
    StrategyOption = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StrategyOption', name: 'StrategyOption')
    StrategyRecommendation = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#StrategyRecommendation', name: 'StrategyRecommendation', traits: {"smithy.api#enum" => [{"name" => "RECOMMENDED", "value" => "recommended"}, {"name" => "VIABLE_OPTION", "value" => "viableOption"}, {"name" => "NOT_RECOMMENDED", "value" => "notRecommended"}, {"name" => "POTENTIAL", "value" => "potential"}]})
    StrategySummary = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#StrategySummary', name: 'StrategySummary')
    String = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#String', name: 'String', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    SystemInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#SystemInfo', name: 'SystemInfo')
    TargetDatabaseEngine = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#TargetDatabaseEngine', name: 'TargetDatabaseEngine', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "Amazon Aurora", "name" => "AMAZON_AURORA"}, {"value" => "AWS PostgreSQL", "name" => "AWS_POSTGRESQL"}, {"value" => "MySQL", "name" => "MYSQL"}, {"value" => "Microsoft SQL Server", "name" => "MICROSOFT_SQL_SERVER"}, {"value" => "Oracle Database", "name" => "ORACLE_DATABASE"}, {"value" => "MariaDB", "name" => "MARIA_DB"}, {"value" => "SAP", "name" => "SAP"}, {"value" => "Db2 LUW", "name" => "DB2_LUW"}, {"value" => "MongoDB", "name" => "MONGO_DB"}]})
    TargetDatabaseEngines = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#TargetDatabaseEngines', name: 'TargetDatabaseEngines', traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TargetDestination = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#TargetDestination', name: 'TargetDestination', traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "AWS Elastic BeanStalk", "name" => "AWS_ELASTIC_BEANSTALK"}, {"value" => "AWS Fargate", "name" => "AWS_FARGATE"}, {"value" => "Amazon Elastic Cloud Compute (EC2)", "name" => "AMAZON_ELASTIC_CLOUD_COMPUTE"}, {"value" => "Amazon Elastic Container Service (ECS)", "name" => "AMAZON_ELASTIC_CONTAINER_SERVICE"}, {"value" => "Amazon Elastic Kubernetes Service (EKS)", "name" => "AMAZON_ELASTIC_KUBERNETES_SERVICE"}, {"value" => "Aurora MySQL", "name" => "AURORA_MYSQL"}, {"value" => "Aurora PostgreSQL", "name" => "AURORA_POSTGRESQL"}, {"value" => "Amazon Relational Database Service on MySQL", "name" => "AMAZON_RDS_MYSQL"}, {"value" => "Amazon Relational Database Service on PostgreSQL", "name" => "AMAZON_RDS_POSTGRESQL"}, {"value" => "Amazon DocumentDB", "name" => "AMAZON_DOCUMENTDB"}, {"value" => "Amazon DynamoDB", "name" => "AMAZON_DYNAMODB"}, {"value" => "Amazon Relational Database Service", "name" => "AMAZON_RDS"}, {"value" => "Babelfish for Aurora PostgreSQL", "name" => "BABELFISH_AURORA_POSTGRESQL"}]})
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeStamp = Smithy::Schema::Shapes::TimestampShape.new(id: 'com.amazonaws.migrationhubstrategy#TimeStamp', name: 'TimeStamp')
    TranformationToolDescription = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#TranformationToolDescription', name: 'TranformationToolDescription', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    TranformationToolInstallationLink = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#TranformationToolInstallationLink', name: 'TranformationToolInstallationLink', traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    TransformationTool = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#TransformationTool', name: 'TransformationTool')
    TransformationToolName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#TransformationToolName', name: 'TransformationToolName', traits: {"smithy.api#enum" => [{"value" => "App2Container", "name" => "APP2CONTAINER"}, {"value" => "Porting Assistant For .NET", "name" => "PORTING_ASSISTANT"}, {"value" => "End of Support Migration", "name" => "EMP"}, {"value" => "Windows Web Application Migration Assistant", "name" => "WWAMA"}, {"value" => "Application Migration Service", "name" => "MGN"}, {"value" => "Strategy Recommendation Support", "name" => "STRATEGY_RECOMMENDATION_SUPPORT"}, {"value" => "In Place Operating System Upgrade", "name" => "IN_PLACE_OS_UPGRADE"}, {"value" => "Schema Conversion Tool", "name" => "SCT"}, {"value" => "Database Migration Service", "name" => "DMS"}, {"value" => "Native SQL Server Backup/Restore", "name" => "NATIVE_SQL"}]})
    UpdateApplicationComponentConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#UpdateApplicationComponentConfigInput', name: 'UpdateApplicationComponentConfigInput')
    UpdateApplicationComponentConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#UpdateApplicationComponentConfigOutput', name: 'UpdateApplicationComponentConfigOutput')
    UpdateServerConfigInput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#UpdateServerConfigInput', name: 'UpdateServerConfigInput')
    UpdateServerConfigOutput = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#UpdateServerConfigOutput', name: 'UpdateServerConfigOutput')
    ValidationException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#ValidationException', name: 'ValidationException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VcenterBasedRemoteInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#VcenterBasedRemoteInfo', name: 'VcenterBasedRemoteInfo')
    VcenterBasedRemoteInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#VcenterBasedRemoteInfoList', name: 'VcenterBasedRemoteInfoList')
    VersionControl = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#VersionControl', name: 'VersionControl', traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITHUB_ENTERPRISE", "name" => "GITHUB_ENTERPRISE"}, {"value" => "AZURE_DEVOPS_GIT", "name" => "AZURE_DEVOPS_GIT"}]})
    VersionControlInfo = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.migrationhubstrategy#VersionControlInfo', name: 'VersionControlInfo')
    VersionControlInfoList = Smithy::Schema::Shapes::ListShape.new(id: 'com.amazonaws.migrationhubstrategy#VersionControlInfoList', name: 'VersionControlInfoList')
    VersionControlType = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#VersionControlType', name: 'VersionControlType', traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITHUB_ENTERPRISE", "name" => "GITHUB_ENTERPRISE"}, {"value" => "AZURE_DEVOPS_GIT", "name" => "AZURE_DEVOPS_GIT"}]})
    ErrorMessage = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#errorMessage', name: 'ErrorMessage')
    ImportS3Bucket = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#importS3Bucket', name: 'ImportS3Bucket', traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"})
    ImportS3Key = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.migrationhubstrategy#importS3Key', name: 'ImportS3Key', traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AnalysisStatusUnion.add_member(:runtime_analysis_status, Types::AnalysisStatusUnion::RuntimeAnalysisStatus, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeAnalysisStatus, location_name: 'runtimeAnalysisStatus', traits: {"smithy.api#documentation" => "<p>The status of the analysis.</p>"}))
    AnalysisStatusUnion.add_member(:src_code_or_db_analysis_status, Types::AnalysisStatusUnion::SrcCodeOrDbAnalysisStatus, Smithy::Schema::Shapes::ShapeRef.new(shape: SrcCodeOrDbAnalysisStatus, location_name: 'srcCodeOrDbAnalysisStatus', traits: {"smithy.api#documentation" => "<p>The status of the source code or database analysis.</p>"}))
    AnalysisStatusUnion.add_member(:unknown, Types::AnalysisStatusUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisStatusUnion.type = Types::AnalysisStatusUnion
    AnalyzableServerSummary.add_member(:hostname, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostname', traits: {"smithy.api#documentation" => "The host name of the analyzable server."}))
    AnalyzableServerSummary.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "The ip address of the analyzable server."}))
    AnalyzableServerSummary.add_member(:source, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'source', traits: {"smithy.api#documentation" => "The data source of the analyzable server."}))
    AnalyzableServerSummary.add_member(:vm_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vmId', traits: {"smithy.api#documentation" => "The virtual machine id of the analyzable server."}))
    AnalyzableServerSummary.type = Types::AnalyzableServerSummary
    AnalyzableServerSummaryList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzableServerSummary)
    AnalyzerNameUnion.add_member(:binary_analyzer_name, Types::AnalyzerNameUnion::BinaryAnalyzerName, Smithy::Schema::Shapes::ShapeRef.new(shape: BinaryAnalyzerName, location_name: 'binaryAnalyzerName', traits: {"smithy.api#documentation" => "<p>The binary analyzer names.</p>"}))
    AnalyzerNameUnion.add_member(:run_time_analyzer_name, Types::AnalyzerNameUnion::RunTimeAnalyzerName, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimeAnalyzerName, location_name: 'runTimeAnalyzerName', traits: {"smithy.api#documentation" => "<p>The assessment analyzer names.</p>"}))
    AnalyzerNameUnion.add_member(:source_code_analyzer_name, Types::AnalyzerNameUnion::SourceCodeAnalyzerName, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCodeAnalyzerName, location_name: 'sourceCodeAnalyzerName', traits: {"smithy.api#documentation" => "<p>The source code analyzer names.</p>"}))
    AnalyzerNameUnion.add_member(:unknown, Types::AnalyzerNameUnion::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    AnalyzerNameUnion.type = Types::AnalyzerNameUnion
    AntipatternReportResult.add_member(:analyzer_name, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzerNameUnion, location_name: 'analyzerName', traits: {"smithy.api#documentation" => "<p>The analyzer name.</p>"}))
    AntipatternReportResult.add_member(:anti_pattern_report_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'antiPatternReportS3Object'))
    AntipatternReportResult.add_member(:antipattern_report_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: 'antipatternReportStatus', traits: {"smithy.api#documentation" => "<p>The status of the anti-pattern report generation.</p>"}))
    AntipatternReportResult.add_member(:antipattern_report_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'antipatternReportStatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the anti-pattern.</p>"}))
    AntipatternReportResult.type = Types::AntipatternReportResult
    AntipatternReportResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternReportResult)
    AntipatternSeveritySummary.add_member(:severity, Smithy::Schema::Shapes::ShapeRef.new(shape: Severity, location_name: 'severity', traits: {"smithy.api#documentation" => "<p> Contains the severity of anti-patterns. </p>"}))
    AntipatternSeveritySummary.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p> Contains the count of anti-patterns. </p>"}))
    AntipatternSeveritySummary.type = Types::AntipatternSeveritySummary
    AppUnitError.add_member(:app_unit_error_category, Smithy::Schema::Shapes::ShapeRef.new(shape: AppUnitErrorCategory, location_name: 'appUnitErrorCategory', traits: {"smithy.api#documentation" => "<p>The category of the error.</p>"}))
    AppUnitError.type = Types::AppUnitError
    ApplicationComponentDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the application component. </p>"}))
    ApplicationComponentDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of application component. </p>"}))
    ApplicationComponentDetail.add_member(:recommendation_set, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSet, location_name: 'recommendationSet', traits: {"smithy.api#documentation" => "<p> The top recommendation set for the application component. </p>"}))
    ApplicationComponentDetail.add_member(:analysis_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SrcCodeOrDbAnalysisStatus, location_name: 'analysisStatus', traits: {"smithy.api#documentation" => "<p> The status of analysis, if the application component has source code or an associated\n      database. </p>"}))
    ApplicationComponentDetail.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> A detailed description of the analysis status and any failure message. </p>"}))
    ApplicationComponentDetail.add_member(:list_antipattern_severity_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAntipatternSeveritySummary, location_name: 'listAntipatternSeveritySummary', traits: {"smithy.api#documentation" => "<p> A list of anti-pattern severity summaries. </p>"}))
    ApplicationComponentDetail.add_member(:database_config_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseConfigDetail, location_name: 'databaseConfigDetail', traits: {"smithy.api#documentation" => "<p> Configuration details for the database associated with the application component. </p>"}))
    ApplicationComponentDetail.add_member(:source_code_repositories, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCodeRepositories, location_name: 'sourceCodeRepositories', traits: {"smithy.api#documentation" => "<p> Details about the source code repository associated with the application component.\n    </p>"}))
    ApplicationComponentDetail.add_member(:app_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'appType', traits: {"smithy.api#documentation" => "<p> The type of application component. </p>"}))
    ApplicationComponentDetail.add_member(:resource_sub_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceSubType, location_name: 'resourceSubType', traits: {"smithy.api#documentation" => "<p> The application component subtype.</p>"}))
    ApplicationComponentDetail.add_member(:inclusion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: InclusionStatus, location_name: 'inclusionStatus', traits: {"smithy.api#documentation" => "<p> Indicates whether the application component has been included for server recommendation\n      or not. </p>"}))
    ApplicationComponentDetail.add_member(:antipattern_report_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'antipatternReportS3Object', traits: {"smithy.api#documentation" => "<p> The S3 bucket name and the Amazon S3 key name for the anti-pattern report. </p>"}))
    ApplicationComponentDetail.add_member(:antipattern_report_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: 'antipatternReportStatus', traits: {"smithy.api#documentation" => "<p> The status of the anti-pattern report generation.</p>"}))
    ApplicationComponentDetail.add_member(:antipattern_report_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'antipatternReportStatusMessage', traits: {"smithy.api#documentation" => "<p> The status message for the anti-pattern. </p>"}))
    ApplicationComponentDetail.add_member(:os_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'osVersion', traits: {"smithy.api#documentation" => "<p> OS version. </p>"}))
    ApplicationComponentDetail.add_member(:os_driver, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'osDriver', traits: {"smithy.api#documentation" => "<p> OS driver. </p>"}))
    ApplicationComponentDetail.add_member(:last_analyzed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'lastAnalyzedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of when the application component was assessed. </p>"}))
    ApplicationComponentDetail.add_member(:associated_server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'associatedServerId', traits: {"smithy.api#documentation" => "<p> The ID of the server that the application component is running on. </p>"}))
    ApplicationComponentDetail.add_member(:more_server_association_exists, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'moreServerAssociationExists', traits: {"smithy.api#documentation" => "<p> Set to true if the application component is running on multiple servers.</p>"}))
    ApplicationComponentDetail.add_member(:runtime_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RuntimeAnalysisStatus, location_name: 'runtimeStatus', traits: {"smithy.api#documentation" => "<p>The status of the application unit.</p>"}))
    ApplicationComponentDetail.add_member(:runtime_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'runtimeStatusMessage', traits: {"smithy.api#documentation" => "<p>The status message for the application unit.</p>"}))
    ApplicationComponentDetail.add_member(:app_unit_error, Smithy::Schema::Shapes::ShapeRef.new(shape: AppUnitError, location_name: 'appUnitError', traits: {"smithy.api#documentation" => "<p>The error in the analysis of the source code or database.</p>"}))
    ApplicationComponentDetail.add_member(:result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: ResultList, location_name: 'resultList', traits: {"smithy.api#documentation" => "<p>A list of the analysis results.</p>"}))
    ApplicationComponentDetail.type = Types::ApplicationComponentDetail
    ApplicationComponentDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentDetail)
    ApplicationComponentStatusSummary.add_member(:src_code_or_db_analysis_status, Smithy::Schema::Shapes::ShapeRef.new(shape: SrcCodeOrDbAnalysisStatus, location_name: 'srcCodeOrDbAnalysisStatus', traits: {"smithy.api#documentation" => "<p>The status of database analysis.</p>"}))
    ApplicationComponentStatusSummary.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of application components successfully analyzed, partially successful or failed\n      analysis.</p>"}))
    ApplicationComponentStatusSummary.type = Types::ApplicationComponentStatusSummary
    ApplicationComponentStrategies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentStrategy)
    ApplicationComponentStrategy.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSet, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p> Strategy recommendation for the application component. </p>"}))
    ApplicationComponentStrategy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyRecommendation, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The recommendation status of a strategy for an application component. </p>"}))
    ApplicationComponentStrategy.add_member(:is_preferred, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isPreferred', traits: {"smithy.api#documentation" => "<p> Set to true if the recommendation is set as preferred. </p>"}))
    ApplicationComponentStrategy.type = Types::ApplicationComponentStrategy
    ApplicationComponentSummary.add_member(:app_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'appType', traits: {"smithy.api#documentation" => "<p> Contains the name of application types. </p>"}))
    ApplicationComponentSummary.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p> Contains the count of application type. </p>"}))
    ApplicationComponentSummary.type = Types::ApplicationComponentSummary
    ApplicationPreferences.add_member(:management_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: ManagementPreference, location_name: 'managementPreference', traits: {"smithy.api#documentation" => "<p> Application preferences that you specify to prefer managed environment. </p>"}))
    ApplicationPreferences.type = Types::ApplicationPreferences
    AssessmentSummary.add_member(:list_server_strategy_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStrategySummary, location_name: 'listServerStrategySummary', traits: {"smithy.api#documentation" => "<p> List of ServerStrategySummary. </p>"}))
    AssessmentSummary.add_member(:list_application_component_strategy_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStrategySummary, location_name: 'listApplicationComponentStrategySummary', traits: {"smithy.api#documentation" => "<p> List of ApplicationComponentStrategySummary. </p>"}))
    AssessmentSummary.add_member(:list_antipattern_severity_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAntipatternSeveritySummary, location_name: 'listAntipatternSeveritySummary', traits: {"smithy.api#documentation" => "<p> List of AntipatternSeveritySummary. </p>"}))
    AssessmentSummary.add_member(:list_application_component_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationComponentSummary, location_name: 'listApplicationComponentSummary', traits: {"smithy.api#documentation" => "<p> List of ApplicationComponentSummary. </p>"}))
    AssessmentSummary.add_member(:list_server_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListServerSummary, location_name: 'listServerSummary', traits: {"smithy.api#documentation" => "<p> List of ServerSummary. </p>"}))
    AssessmentSummary.add_member(:antipattern_report_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'antipatternReportS3Object', traits: {"smithy.api#documentation" => "<p> The Amazon S3 object containing the anti-pattern report. </p>"}))
    AssessmentSummary.add_member(:antipattern_report_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: 'antipatternReportStatus', traits: {"smithy.api#documentation" => "<p> The status of the anti-pattern report. </p>"}))
    AssessmentSummary.add_member(:antipattern_report_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'antipatternReportStatusMessage', traits: {"smithy.api#documentation" => "<p> The status message of the anti-pattern report. </p>"}))
    AssessmentSummary.add_member(:last_analyzed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'lastAnalyzedTimestamp', traits: {"smithy.api#documentation" => "<p> The time the assessment was performed. </p>"}))
    AssessmentSummary.add_member(:list_application_component_status_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationComponentStatusSummary, location_name: 'listApplicationComponentStatusSummary', traits: {"smithy.api#documentation" => "<p>List of status summaries of the analyzed application components.</p>"}))
    AssessmentSummary.add_member(:list_server_status_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListServerStatusSummary, location_name: 'listServerStatusSummary', traits: {"smithy.api#documentation" => "<p>List of status summaries of the analyzed servers.</p>"}))
    AssessmentSummary.type = Types::AssessmentSummary
    AssessmentTarget.add_member(:condition, Smithy::Schema::Shapes::ShapeRef.new(shape: Condition, location_name: 'condition', traits: {"smithy.api#documentation" => "<p>Condition of an assessment.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p>Name of an assessment.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.add_member(:values, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargetValues, location_name: 'values', traits: {"smithy.api#documentation" => "<p>Values of an assessment.</p>", "smithy.api#required" => {}}))
    AssessmentTarget.type = Types::AssessmentTarget
    AssessmentTargetValues.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AssessmentTargets.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTarget)
    AssociatedApplication.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> Name of the application as defined in Application Discovery Service. </p>"}))
    AssociatedApplication.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p> ID of the application as defined in Application Discovery Service. </p>"}))
    AssociatedApplication.type = Types::AssociatedApplication
    AssociatedApplications.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedApplication)
    AssociatedServerIDs.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    AwsManagedResources.add_member(:target_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsManagedTargetDestinations, location_name: 'targetDestination', traits: {"smithy.api#documentation" => "<p> The choice of application destination that you specify. </p>", "smithy.api#required" => {}}))
    AwsManagedResources.type = Types::AwsManagedResources
    AwsManagedTargetDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AwsManagedTargetDestination)
    BusinessGoals.add_member(:speed_of_migration, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: 'speedOfMigration', traits: {"smithy.api#documentation" => "<p> Business goal to achieve migration at a fast pace. </p>"}))
    BusinessGoals.add_member(:reduce_operational_overhead_with_managed_services, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: 'reduceOperationalOverheadWithManagedServices', traits: {"smithy.api#documentation" => "<p> Business goal to reduce the operational overhead on the team by moving into managed\n      services. </p>"}))
    BusinessGoals.add_member(:modernize_infrastructure_with_cloud_native_technologies, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: 'modernizeInfrastructureWithCloudNativeTechnologies', traits: {"smithy.api#documentation" => "<p> Business goal to modernize infrastructure by moving to cloud native technologies. </p>"}))
    BusinessGoals.add_member(:license_cost_reduction, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessGoalsInteger, location_name: 'licenseCostReduction', traits: {"smithy.api#documentation" => "<p> Business goal to reduce license costs. </p>"}))
    BusinessGoals.type = Types::BusinessGoals
    Collector.add_member(:collector_id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'collectorId', traits: {"smithy.api#documentation" => "<p> The ID of the collector. </p>"}))
    Collector.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p> IP address of the server that is hosting the collector. </p>"}))
    Collector.add_member(:host_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'hostName', traits: {"smithy.api#documentation" => "<p> Hostname of the server that is hosting the collector. </p>"}))
    Collector.add_member(:collector_health, Smithy::Schema::Shapes::ShapeRef.new(shape: CollectorHealth, location_name: 'collectorHealth', traits: {"smithy.api#documentation" => "<p> Indicates the health of a collector. </p>"}))
    Collector.add_member(:collector_version, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'collectorVersion', traits: {"smithy.api#documentation" => "<p> Current version of the collector that is running in the environment that you specify.\n    </p>"}))
    Collector.add_member(:registered_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'registeredTimeStamp', traits: {"smithy.api#documentation" => "<p> Time when the collector registered with the service. </p>"}))
    Collector.add_member(:last_activity_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'lastActivityTimeStamp', traits: {"smithy.api#documentation" => "<p> Time when the collector last pinged the service. </p>"}))
    Collector.add_member(:configuration_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ConfigurationSummary, location_name: 'configurationSummary', traits: {"smithy.api#documentation" => "<p>Summary of the collector configuration.</p>"}))
    Collector.type = Types::Collector
    Collectors.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Collector)
    ConfigurationSummary.add_member(:vcenter_based_remote_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterBasedRemoteInfoList, location_name: 'vcenterBasedRemoteInfoList', traits: {"smithy.api#documentation" => "<p>The list of vCenter configurations.</p>"}))
    ConfigurationSummary.add_member(:ip_address_based_remote_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressBasedRemoteInfoList, location_name: 'ipAddressBasedRemoteInfoList', traits: {"smithy.api#documentation" => "<p>IP address based configurations.</p>"}))
    ConfigurationSummary.add_member(:version_control_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionControlInfoList, location_name: 'versionControlInfoList', traits: {"smithy.api#documentation" => "<p>The list of the version control configurations.</p>"}))
    ConfigurationSummary.add_member(:pipeline_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineInfoList, location_name: 'pipelineInfoList', traits: {"smithy.api#documentation" => "<p>The list of pipeline info configurations.</p>"}))
    ConfigurationSummary.add_member(:remote_source_code_analysis_server_info, Smithy::Schema::Shapes::ShapeRef.new(shape: RemoteSourceCodeAnalysisServerInfo, location_name: 'remoteSourceCodeAnalysisServerInfo', traits: {"smithy.api#documentation" => "<p>Info about the remote server source code configuration.</p>"}))
    ConfigurationSummary.type = Types::ConfigurationSummary
    ConflictException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    DataCollectionDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the assessment. </p>"}))
    DataCollectionDetails.add_member(:servers, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'servers', traits: {"smithy.api#documentation" => "<p> The total number of servers in the assessment. </p>"}))
    DataCollectionDetails.add_member(:failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'failed', traits: {"smithy.api#documentation" => "<p> The number of failed servers in the assessment. </p>"}))
    DataCollectionDetails.add_member(:success, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'success', traits: {"smithy.api#documentation" => "<p> The number of successful servers in the assessment. </p>"}))
    DataCollectionDetails.add_member(:in_progress, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'inProgress', traits: {"smithy.api#documentation" => "<p> The number of servers with the assessment status <code>IN_PROGESS</code>. </p>"}))
    DataCollectionDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> The start time of assessment. </p>"}))
    DataCollectionDetails.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p> The time the assessment completes. </p>"}))
    DataCollectionDetails.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The status message of the assessment.</p>"}))
    DataCollectionDetails.type = Types::DataCollectionDetails
    DatabaseConfigDetail.add_member(:secret_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'secretName', traits: {"smithy.api#documentation" => "<p> AWS Secrets Manager key that holds the credentials that you use to connect to a database.\n    </p>"}))
    DatabaseConfigDetail.type = Types::DatabaseConfigDetail
    DatabaseMigrationPreference.add_member(:heterogeneous, Types::DatabaseMigrationPreference::Heterogeneous, Smithy::Schema::Shapes::ShapeRef.new(shape: Heterogeneous, location_name: 'heterogeneous', traits: {"smithy.api#documentation" => "<p> Indicates whether you are interested in moving from one type of database to another. For\n      example, from SQL Server to Amazon Aurora MySQL-Compatible Edition. </p>"}))
    DatabaseMigrationPreference.add_member(:homogeneous, Types::DatabaseMigrationPreference::Homogeneous, Smithy::Schema::Shapes::ShapeRef.new(shape: Homogeneous, location_name: 'homogeneous', traits: {"smithy.api#documentation" => "<p> Indicates whether you are interested in moving to the same type of database into AWS.\n      For example, from SQL Server in your environment to SQL Server on AWS. </p>"}))
    DatabaseMigrationPreference.add_member(:no_preference, Types::DatabaseMigrationPreference::NoPreference, Smithy::Schema::Shapes::ShapeRef.new(shape: NoDatabaseMigrationPreference, location_name: 'noPreference', traits: {"smithy.api#documentation" => "<p> Indicated that you do not prefer heterogeneous or homogeneous. </p>"}))
    DatabaseMigrationPreference.add_member(:unknown, Types::DatabaseMigrationPreference::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    DatabaseMigrationPreference.type = Types::DatabaseMigrationPreference
    DatabasePreferences.add_member(:database_management_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseManagementPreference, location_name: 'databaseManagementPreference', traits: {"smithy.api#documentation" => "<p> Specifies whether you're interested in self-managed databases or databases managed by\n      AWS. </p>"}))
    DatabasePreferences.add_member(:database_migration_preference, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabaseMigrationPreference, location_name: 'databaseMigrationPreference', traits: {"smithy.api#documentation" => "<p> Specifies your preferred migration path. </p>"}))
    DatabasePreferences.type = Types::DatabasePreferences
    DependencyException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    DependencyException.type = Types::DependencyException
    GetApplicationComponentDetailsInput.add_member(:application_component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentId, location_name: 'applicationComponentId', traits: {"smithy.api#documentation" => "<p> The ID of the application component. The ID is unique within an AWS account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationComponentDetailsInput.type = Types::GetApplicationComponentDetailsInput
    GetApplicationComponentDetailsOutput.add_member(:application_component_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentDetail, location_name: 'applicationComponentDetail', traits: {"smithy.api#documentation" => "<p> Detailed information about an application component. </p>"}))
    GetApplicationComponentDetailsOutput.add_member(:associated_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedApplications, location_name: 'associatedApplications', traits: {"smithy.api#documentation" => "<p> The associated application group as defined in AWS Application Discovery Service. </p>"}))
    GetApplicationComponentDetailsOutput.add_member(:more_application_resource, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'moreApplicationResource', traits: {"smithy.api#documentation" => "<p> Set to true if the application component belongs to more than one application group.\n    </p>"}))
    GetApplicationComponentDetailsOutput.add_member(:associated_server_ids, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedServerIDs, location_name: 'associatedServerIds', traits: {"smithy.api#documentation" => "<p> A list of the IDs of the servers on which the application component is running. </p>"}))
    GetApplicationComponentDetailsOutput.type = Types::GetApplicationComponentDetailsOutput
    GetApplicationComponentStrategiesInput.add_member(:application_component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentId, location_name: 'applicationComponentId', traits: {"smithy.api#documentation" => "<p> The ID of the application component. The ID is unique within an AWS account.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationComponentStrategiesInput.type = Types::GetApplicationComponentStrategiesInput
    GetApplicationComponentStrategiesOutput.add_member(:application_component_strategies, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentStrategies, location_name: 'applicationComponentStrategies', traits: {"smithy.api#documentation" => "<p> A list of application component strategy recommendations. </p>"}))
    GetApplicationComponentStrategiesOutput.type = Types::GetApplicationComponentStrategiesOutput
    GetAssessmentInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The <code>assessmentid</code> returned by <a>StartAssessment</a>.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentInput.type = Types::GetAssessmentInput
    GetAssessmentOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID for the specific assessment task. </p>"}))
    GetAssessmentOutput.add_member(:data_collection_details, Smithy::Schema::Shapes::ShapeRef.new(shape: DataCollectionDetails, location_name: 'dataCollectionDetails', traits: {"smithy.api#documentation" => "<p> Detailed information about the assessment. </p>"}))
    GetAssessmentOutput.add_member(:assessment_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargets, location_name: 'assessmentTargets', traits: {"smithy.api#documentation" => "<p>List of criteria for assessment.</p>"}))
    GetAssessmentOutput.type = Types::GetAssessmentOutput
    GetImportFileTaskInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the import file task. This ID is returned in the response of <a>StartImportFileTask</a>. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportFileTaskInput.type = Types::GetImportFileTaskInput
    GetImportFileTaskOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The import file task <code>id</code> returned in the response of <a>StartImportFileTask</a>. </p>"}))
    GetImportFileTaskOutput.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFileTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> Status of import file task. </p>"}))
    GetImportFileTaskOutput.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> Start time of the import task. </p>"}))
    GetImportFileTaskOutput.add_member(:input_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Bucket, location_name: 'inputS3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket where import file is located. </p>"}))
    GetImportFileTaskOutput.add_member(:input_s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Key, location_name: 'inputS3Key', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name of the import file. </p>"}))
    GetImportFileTaskOutput.add_member(:status_report_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Bucket, location_name: 'statusReportS3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket name for status report of import task. </p>"}))
    GetImportFileTaskOutput.add_member(:status_report_s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Key, location_name: 'statusReportS3Key', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name for status report of import task. The report contains details about\n      whether each record imported successfully or why it did not.</p>"}))
    GetImportFileTaskOutput.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p> The time that the import task completed. </p>"}))
    GetImportFileTaskOutput.add_member(:number_of_records_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numberOfRecordsSuccess', traits: {"smithy.api#documentation" => "<p> The number of records successfully imported. </p>"}))
    GetImportFileTaskOutput.add_member(:number_of_records_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numberOfRecordsFailed', traits: {"smithy.api#documentation" => "<p> The number of records that failed to be imported. </p>"}))
    GetImportFileTaskOutput.add_member(:import_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'importName', traits: {"smithy.api#documentation" => "<p> The name of the import task given in <a>StartImportFileTask</a>. </p>"}))
    GetImportFileTaskOutput.type = Types::GetImportFileTaskOutput
    GetLatestAssessmentIdInput.type = Types::GetLatestAssessmentIdInput
    GetLatestAssessmentIdOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: 'id', traits: {"smithy.api#documentation" => "<p>The latest ID for the specific assessment task.</p>"}))
    GetLatestAssessmentIdOutput.type = Types::GetLatestAssessmentIdOutput
    GetPortfolioPreferencesInput.type = Types::GetPortfolioPreferencesInput
    GetPortfolioPreferencesOutput.add_member(:prioritize_business_goals, Smithy::Schema::Shapes::ShapeRef.new(shape: PrioritizeBusinessGoals, location_name: 'prioritizeBusinessGoals', traits: {"smithy.api#documentation" => "<p> The rank of business goals based on priority. </p>"}))
    GetPortfolioPreferencesOutput.add_member(:application_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPreferences, location_name: 'applicationPreferences', traits: {"smithy.api#documentation" => "<p> The transformation preferences for non-database applications. </p>"}))
    GetPortfolioPreferencesOutput.add_member(:database_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabasePreferences, location_name: 'databasePreferences', traits: {"smithy.api#documentation" => "<p> The transformation preferences for database applications. </p>"}))
    GetPortfolioPreferencesOutput.add_member(:application_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMode, location_name: 'applicationMode', traits: {"smithy.api#documentation" => "<p>The classification for application component types.</p>"}))
    GetPortfolioPreferencesOutput.type = Types::GetPortfolioPreferencesOutput
    GetPortfolioSummaryInput.type = Types::GetPortfolioSummaryInput
    GetPortfolioSummaryOutput.add_member(:assessment_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentSummary, location_name: 'assessmentSummary', traits: {"smithy.api#documentation" => "<p> An assessment summary for the portfolio including the number of servers to rehost and the\n      overall number of anti-patterns. </p>"}))
    GetPortfolioSummaryOutput.type = Types::GetPortfolioSummaryOutput
    GetRecommendationReportDetailsInput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTaskId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The recommendation report generation task <code>id</code> returned by <a>StartRecommendationReportGeneration</a>. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationReportDetailsInput.type = Types::GetRecommendationReportDetailsInput
    GetRecommendationReportDetailsOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTaskId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the recommendation report generation task. See the response of <a>StartRecommendationReportGeneration</a>. </p>"}))
    GetRecommendationReportDetailsOutput.add_member(:recommendation_report_details, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationReportDetails, location_name: 'recommendationReportDetails', traits: {"smithy.api#documentation" => "<p> Detailed information about the recommendation report. </p>"}))
    GetRecommendationReportDetailsOutput.type = Types::GetRecommendationReportDetailsOutput
    GetServerDetailsInput.add_member(:server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#documentation" => "<p> The ID of the server. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServerDetailsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token from a previous call that you use to retrieve the next set of results. For example, \nif a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along\n      with a token. You then use the returned token to retrieve the next set of 10. </p>", "smithy.api#httpQuery" => "nextToken"}))
    GetServerDetailsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResult, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of items to include in the response. The maximum value is 100. </p>", "smithy.api#httpQuery" => "maxResults"}))
    GetServerDetailsInput.type = Types::GetServerDetailsInput
    GetServerDetailsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"}))
    GetServerDetailsOutput.add_member(:server_detail, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerDetail, location_name: 'serverDetail', traits: {"smithy.api#documentation" => "<p> Detailed information about the server. </p>"}))
    GetServerDetailsOutput.add_member(:associated_applications, Smithy::Schema::Shapes::ShapeRef.new(shape: AssociatedApplications, location_name: 'associatedApplications', traits: {"smithy.api#documentation" => "<p> The associated application group the server belongs to, as defined in AWS Application Discovery Service.\n    </p>"}))
    GetServerDetailsOutput.type = Types::GetServerDetailsOutput
    GetServerStrategiesInput.add_member(:server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#documentation" => "<p> The ID of the server. </p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServerStrategiesInput.type = Types::GetServerStrategiesInput
    GetServerStrategiesOutput.add_member(:server_strategies, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerStrategies, location_name: 'serverStrategies', traits: {"smithy.api#documentation" => "<p> A list of strategy recommendations for the server. </p>"}))
    GetServerStrategiesOutput.type = Types::GetServerStrategiesOutput
    Group.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The key of the specific import group. </p>"}))
    Group.add_member(:value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'value', traits: {"smithy.api#documentation" => "<p> The value of the specific import group. </p>"}))
    Group.type = Types::Group
    GroupIds.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Group)
    Heterogeneous.add_member(:target_database_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: HeterogeneousTargetDatabaseEngines, location_name: 'targetDatabaseEngine', traits: {"smithy.api#documentation" => "<p> The target database engine for heterogeneous database migration preference. </p>", "smithy.api#required" => {}}))
    Heterogeneous.type = Types::Heterogeneous
    HeterogeneousTargetDatabaseEngines.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HeterogeneousTargetDatabaseEngine)
    Homogeneous.add_member(:target_database_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: HomogeneousTargetDatabaseEngines, location_name: 'targetDatabaseEngine', traits: {"smithy.api#documentation" => "<p> The target database engine for homogeneous database migration preferences. </p>"}))
    Homogeneous.type = Types::Homogeneous
    HomogeneousTargetDatabaseEngines.member = Smithy::Schema::Shapes::ShapeRef.new(shape: HomogeneousTargetDatabaseEngine)
    IPAddressBasedRemoteInfo.add_member(:ip_address_configuration_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'ipAddressConfigurationTimeStamp', traits: {"smithy.api#documentation" => "<p>The time stamp of the configuration.</p>"}))
    IPAddressBasedRemoteInfo.add_member(:auth_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AuthType, location_name: 'authType', traits: {"smithy.api#documentation" => "<p>The type of authorization.</p>"}))
    IPAddressBasedRemoteInfo.add_member(:os_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OSType, location_name: 'osType', traits: {"smithy.api#documentation" => "<p>The type of the operating system.</p>"}))
    IPAddressBasedRemoteInfo.type = Types::IPAddressBasedRemoteInfo
    IPAddressBasedRemoteInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddressBasedRemoteInfo)
    ImportFileTaskInformation.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the import file task. </p>"}))
    ImportFileTaskInformation.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFileTaskStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> Status of import file task. </p>"}))
    ImportFileTaskInformation.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> Start time of the import task. </p>"}))
    ImportFileTaskInformation.add_member(:input_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Bucket, location_name: 'inputS3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket where the import file is located. </p>"}))
    ImportFileTaskInformation.add_member(:input_s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Key, location_name: 'inputS3Key', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name of the import file. </p>"}))
    ImportFileTaskInformation.add_member(:status_report_s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Bucket, location_name: 'statusReportS3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket name for status report of import task. </p>"}))
    ImportFileTaskInformation.add_member(:status_report_s3_key, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Key, location_name: 'statusReportS3Key', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name for status report of import task. The report contains details about\n      whether each record imported successfully or why it did not. </p>"}))
    ImportFileTaskInformation.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p> The time that the import task completes. </p>"}))
    ImportFileTaskInformation.add_member(:number_of_records_success, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numberOfRecordsSuccess', traits: {"smithy.api#documentation" => "<p> The number of records successfully imported. </p>"}))
    ImportFileTaskInformation.add_member(:number_of_records_failed, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numberOfRecordsFailed', traits: {"smithy.api#documentation" => "<p> The number of records that failed to be imported. </p>"}))
    ImportFileTaskInformation.add_member(:import_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'importName', traits: {"smithy.api#documentation" => "<p> The name of the import task given in <code>StartImportFileTask</code>. </p>"}))
    ImportFileTaskInformation.type = Types::ImportFileTaskInformation
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    ListAnalyzableServersRequest.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sort', traits: {"smithy.api#documentation" => "Specifies whether to sort by ascending (ASC) or descending (DESC) order."}))
    ListAnalyzableServersRequest.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "The token from a previous call that you use to retrieve the next set of results. For example, if a previous call to this action returned 100 items, but you set maxResults to 10. You'll receive a set of 10 results along with a token. You then use the returned token to retrieve the next set of 10."}))
    ListAnalyzableServersRequest.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResult, location_name: 'maxResults', traits: {"smithy.api#documentation" => "The maximum number of items to include in the response. The maximum value is 100."}))
    ListAnalyzableServersRequest.type = Types::ListAnalyzableServersRequest
    ListAnalyzableServersResponse.add_member(:analyzable_servers, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalyzableServerSummaryList, location_name: 'analyzableServers', traits: {"smithy.api#documentation" => "The list of analyzable servers with summary information about each server."}))
    ListAnalyzableServersResponse.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "The token you use to retrieve the next set of results, or null if there are no more results."}))
    ListAnalyzableServersResponse.type = Types::ListAnalyzableServersResponse
    ListAntipatternSeveritySummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternSeveritySummary)
    ListApplicationComponentStatusSummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentStatusSummary)
    ListApplicationComponentSummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentSummary)
    ListApplicationComponentsInput.add_member(:application_component_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentCriteria, location_name: 'applicationComponentCriteria', traits: {"smithy.api#documentation" => "<p> Criteria for filtering the list of application components. </p>"}))
    ListApplicationComponentsInput.add_member(:filter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'filterValue', traits: {"smithy.api#documentation" => "<p> Specify the value based on the application component criteria type. For example, if\n        <code>applicationComponentCriteria</code> is set to <code>SERVER_ID</code> and\n        <code>filterValue</code> is set to <code>server1</code>, then <a>ListApplicationComponents</a> returns all the application components running on\n      server1. </p>", "smithy.api#length" => {"max" => 256}}))
    ListApplicationComponentsInput.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sort', traits: {"smithy.api#documentation" => "<p> Specifies whether to sort by ascending (<code>ASC</code>) or descending\n        (<code>DESC</code>) order. </p>"}))
    ListApplicationComponentsInput.add_member(:group_id_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIds, location_name: 'groupIdFilter', traits: {"smithy.api#documentation" => "<p> The group ID specified in to filter on. </p>"}))
    ListApplicationComponentsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token from a previous call that you use to retrieve the next set of results. For example, \nif a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along\n      with a token. You then use the returned token to retrieve the next set of 10. </p>"}))
    ListApplicationComponentsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResult, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of items to include in the response. The maximum value is 100. </p>"}))
    ListApplicationComponentsInput.type = Types::ListApplicationComponentsInput
    ListApplicationComponentsOutput.add_member(:application_component_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentDetails, location_name: 'applicationComponentInfos', traits: {"smithy.api#documentation" => "<p> The list of application components with detailed information about each component.\n    </p>"}))
    ListApplicationComponentsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"}))
    ListApplicationComponentsOutput.type = Types::ListApplicationComponentsOutput
    ListCollectorsInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token from a previous call that you use to retrieve the next set of results. For example, \nif a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along\n      with a token. You then use the returned token to retrieve the next set of 10. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListCollectorsInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResult, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of items to include in the response. The maximum value is 100. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListCollectorsInput.type = Types::ListCollectorsInput
    ListCollectorsOutput.add_member(:collectors, Smithy::Schema::Shapes::ShapeRef.new(shape: Collectors, location_name: 'Collectors', traits: {"smithy.api#documentation" => "<p> The list of all the installed collectors. </p>"}))
    ListCollectorsOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"}))
    ListCollectorsOutput.type = Types::ListCollectorsOutput
    ListImportFileTaskInformation.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ImportFileTaskInformation)
    ListImportFileTaskInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token from a previous call that you use to retrieve the next set of results. For example, \nif a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along\n      with a token. You then use the returned token to retrieve the next set of 10. </p>", "smithy.api#httpQuery" => "nextToken"}))
    ListImportFileTaskInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The total number of items to return. The maximum value is 100. </p>", "smithy.api#httpQuery" => "maxResults"}))
    ListImportFileTaskInput.type = Types::ListImportFileTaskInput
    ListImportFileTaskOutput.add_member(:task_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportFileTaskInformation, location_name: 'taskInfos', traits: {"smithy.api#documentation" => "<p> Lists information about the files you import.</p>"}))
    ListImportFileTaskOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"}))
    ListImportFileTaskOutput.type = Types::ListImportFileTaskOutput
    ListServerStatusSummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerStatusSummary)
    ListServerSummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerSummary)
    ListServersInput.add_member(:server_criteria, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerCriteria, location_name: 'serverCriteria', traits: {"smithy.api#documentation" => "<p> Criteria for filtering servers. </p>"}))
    ListServersInput.add_member(:filter_value, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'filterValue', traits: {"smithy.api#documentation" => "<p> Specifies the filter value, which is based on the type of server criteria. For example,\n      if <code>serverCriteria</code> is <code>OS_NAME</code>, and the <code>filterValue</code> is\n      equal to <code>WindowsServer</code>, then <code>ListServers</code> returns all of the servers\n      matching the OS name <code>WindowsServer</code>. </p>"}))
    ListServersInput.add_member(:sort, Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: 'sort', traits: {"smithy.api#documentation" => "<p> Specifies whether to sort by ascending (<code>ASC</code>) or descending\n        (<code>DESC</code>) order. </p>"}))
    ListServersInput.add_member(:group_id_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIds, location_name: 'groupIdFilter', traits: {"smithy.api#documentation" => "<p> Specifies the group ID to filter on. </p>"}))
    ListServersInput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token from a previous call that you use to retrieve the next set of results. For example, \nif a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along\n      with a token. You then use the returned token to retrieve the next set of 10. </p>"}))
    ListServersInput.add_member(:max_results, Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResult, location_name: 'maxResults', traits: {"smithy.api#documentation" => "<p> The maximum number of items to include in the response. The maximum value is 100. </p>"}))
    ListServersInput.type = Types::ListServersInput
    ListServersOutput.add_member(:server_infos, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerDetails, location_name: 'serverInfos', traits: {"smithy.api#documentation" => "<p> The list of servers with detailed information about each server. </p>"}))
    ListServersOutput.add_member(:next_token, Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: 'nextToken', traits: {"smithy.api#documentation" => "<p> The token you use to retrieve the next set of results, or null if there are no more results. </p>"}))
    ListServersOutput.type = Types::ListServersOutput
    ListStrategySummary.member = Smithy::Schema::Shapes::ShapeRef.new(shape: StrategySummary)
    ManagementPreference.add_member(:aws_managed_resources, Types::ManagementPreference::AwsManagedResources, Smithy::Schema::Shapes::ShapeRef.new(shape: AwsManagedResources, location_name: 'awsManagedResources', traits: {"smithy.api#documentation" => "<p> Indicates interest in solutions that are managed by AWS. </p>"}))
    ManagementPreference.add_member(:self_manage_resources, Types::ManagementPreference::SelfManageResources, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfManageResources, location_name: 'selfManageResources', traits: {"smithy.api#documentation" => "<p> Indicates interest in managing your own resources on AWS. </p>"}))
    ManagementPreference.add_member(:no_preference, Types::ManagementPreference::NoPreference, Smithy::Schema::Shapes::ShapeRef.new(shape: NoManagementPreference, location_name: 'noPreference', traits: {"smithy.api#documentation" => "<p> No specific preference. </p>"}))
    ManagementPreference.add_member(:unknown, Types::ManagementPreference::Unknown, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Unit))
    ManagementPreference.type = Types::ManagementPreference
    NetworkInfo.add_member(:interface_name, Smithy::Schema::Shapes::ShapeRef.new(shape: InterfaceName, location_name: 'interfaceName', traits: {"smithy.api#documentation" => "<p> Information about the name of the interface of the server for which the assessment was\n      run. </p>", "smithy.api#required" => {}}))
    NetworkInfo.add_member(:ip_address, Smithy::Schema::Shapes::ShapeRef.new(shape: IPAddress, location_name: 'ipAddress', traits: {"smithy.api#documentation" => "<p> Information about the IP address of the server for which the assessment was run. </p>", "smithy.api#required" => {}}))
    NetworkInfo.add_member(:mac_address, Smithy::Schema::Shapes::ShapeRef.new(shape: MacAddress, location_name: 'macAddress', traits: {"smithy.api#documentation" => "<p> Information about the MAC address of the server for which the assessment was run. </p>", "smithy.api#required" => {}}))
    NetworkInfo.add_member(:net_mask, Smithy::Schema::Shapes::ShapeRef.new(shape: NetMask, location_name: 'netMask', traits: {"smithy.api#documentation" => "<p> Information about the subnet mask of the server for which the assessment was run. </p>", "smithy.api#required" => {}}))
    NetworkInfo.type = Types::NetworkInfo
    NetworkInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInfo)
    NoDatabaseMigrationPreference.add_member(:target_database_engine, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDatabaseEngines, location_name: 'targetDatabaseEngine', traits: {"smithy.api#documentation" => "<p> The target database engine for database migration preference that you specify. </p>", "smithy.api#required" => {}}))
    NoDatabaseMigrationPreference.type = Types::NoDatabaseMigrationPreference
    NoManagementPreference.add_member(:target_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: NoPreferenceTargetDestinations, location_name: 'targetDestination', traits: {"smithy.api#documentation" => "<p> The choice of application destination that you specify. </p>", "smithy.api#required" => {}}))
    NoManagementPreference.type = Types::NoManagementPreference
    NoPreferenceTargetDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: NoPreferenceTargetDestination)
    OSInfo.add_member(:type, Smithy::Schema::Shapes::ShapeRef.new(shape: OSType, location_name: 'type', traits: {"smithy.api#documentation" => "<p> Information about the type of operating system. </p>"}))
    OSInfo.add_member(:version, Smithy::Schema::Shapes::ShapeRef.new(shape: OSVersion, location_name: 'version', traits: {"smithy.api#documentation" => "<p> Information about the version of operating system. </p>"}))
    OSInfo.type = Types::OSInfo
    PipelineInfo.add_member(:pipeline_type, Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineType, location_name: 'pipelineType', traits: {"smithy.api#documentation" => "<p>The type of pipeline.</p>"}))
    PipelineInfo.add_member(:pipeline_configuration_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'pipelineConfigurationTimeStamp', traits: {"smithy.api#documentation" => "<p>The time when the pipeline info was configured.</p>"}))
    PipelineInfo.type = Types::PipelineInfo
    PipelineInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: PipelineInfo)
    PrioritizeBusinessGoals.add_member(:business_goals, Smithy::Schema::Shapes::ShapeRef.new(shape: BusinessGoals, location_name: 'businessGoals', traits: {"smithy.api#documentation" => "<p> Rank of business goals based on priority. </p>"}))
    PrioritizeBusinessGoals.type = Types::PrioritizeBusinessGoals
    PutPortfolioPreferencesInput.add_member(:prioritize_business_goals, Smithy::Schema::Shapes::ShapeRef.new(shape: PrioritizeBusinessGoals, location_name: 'prioritizeBusinessGoals', traits: {"smithy.api#documentation" => "<p> The rank of the business goals based on priority. </p>"}))
    PutPortfolioPreferencesInput.add_member(:application_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationPreferences, location_name: 'applicationPreferences', traits: {"smithy.api#documentation" => "<p> The transformation preferences for non-database applications. </p>"}))
    PutPortfolioPreferencesInput.add_member(:database_preferences, Smithy::Schema::Shapes::ShapeRef.new(shape: DatabasePreferences, location_name: 'databasePreferences', traits: {"smithy.api#documentation" => "<p> The transformation preferences for database applications. </p>"}))
    PutPortfolioPreferencesInput.add_member(:application_mode, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationMode, location_name: 'applicationMode', traits: {"smithy.api#documentation" => "<p>The classification for application component types.</p>"}))
    PutPortfolioPreferencesInput.type = Types::PutPortfolioPreferencesInput
    PutPortfolioPreferencesOutput.type = Types::PutPortfolioPreferencesOutput
    RecommendationReportDetails.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationReportStatus, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The status of the recommendation report generation task. </p>"}))
    RecommendationReportDetails.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationReportStatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> The status message for recommendation report generation. </p>"}))
    RecommendationReportDetails.add_member(:start_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationReportTimeStamp, location_name: 'startTime', traits: {"smithy.api#documentation" => "<p> The time that the recommendation report generation task starts. </p>"}))
    RecommendationReportDetails.add_member(:completion_time, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationReportTimeStamp, location_name: 'completionTime', traits: {"smithy.api#documentation" => "<p> The time that the recommendation report generation task completes. </p>"}))
    RecommendationReportDetails.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket where the report file is located. </p>"}))
    RecommendationReportDetails.add_member(:s3_keys, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Keys, location_name: 's3Keys', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name of the report file. </p>"}))
    RecommendationReportDetails.type = Types::RecommendationReportDetails
    RecommendationSet.add_member(:transformation_tool, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformationTool, location_name: 'transformationTool', traits: {"smithy.api#documentation" => "<p> The target destination for the recommendation set. </p>"}))
    RecommendationSet.add_member(:target_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDestination, location_name: 'targetDestination', traits: {"smithy.api#documentation" => "<p> The recommended target destination. </p>"}))
    RecommendationSet.add_member(:strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: Strategy, location_name: 'strategy', traits: {"smithy.api#documentation" => "<p> The recommended strategy. </p>"}))
    RecommendationSet.type = Types::RecommendationSet
    RemoteSourceCodeAnalysisServerInfo.add_member(:remote_source_code_analysis_server_configuration_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'remoteSourceCodeAnalysisServerConfigurationTimestamp', traits: {"smithy.api#documentation" => "<p>The time when the remote source code server was configured.</p>"}))
    RemoteSourceCodeAnalysisServerInfo.type = Types::RemoteSourceCodeAnalysisServerInfo
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Result.add_member(:analysis_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisType, location_name: 'analysisType', traits: {"smithy.api#documentation" => "<p>The error in server analysis.</p>"}))
    Result.add_member(:analysis_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AnalysisStatusUnion, location_name: 'analysisStatus', traits: {"smithy.api#documentation" => "<p>The error in server analysis.</p>"}))
    Result.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p>The error in server analysis.</p>"}))
    Result.add_member(:antipattern_report_result_list, Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternReportResultList, location_name: 'antipatternReportResultList', traits: {"smithy.api#documentation" => "<p>The error in server analysis.</p>"}))
    Result.type = Types::Result
    ResultList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: Result)
    S3Keys.member = Smithy::Schema::Shapes::ShapeRef.new(shape: String)
    S3Object.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Bucket, location_name: 's3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket name. </p>"}))
    S3Object.add_member(:s3key, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Key, location_name: 's3key', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name. </p>"}))
    S3Object.type = Types::S3Object
    SelfManageResources.add_member(:target_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: SelfManageTargetDestinations, location_name: 'targetDestination', traits: {"smithy.api#documentation" => "<p> Self-managed resources target destination. </p>", "smithy.api#required" => {}}))
    SelfManageResources.type = Types::SelfManageResources
    SelfManageTargetDestinations.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SelfManageTargetDestination)
    ServerDetail.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The server ID. </p>"}))
    ServerDetail.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> The name of the server. </p>"}))
    ServerDetail.add_member(:recommendation_set, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSet, location_name: 'recommendationSet', traits: {"smithy.api#documentation" => "<p> A set of recommendations. </p>"}))
    ServerDetail.add_member(:data_collection_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimeAssessmentStatus, location_name: 'dataCollectionStatus', traits: {"smithy.api#documentation" => "<p> The status of assessment for the server. </p>"}))
    ServerDetail.add_member(:status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'statusMessage', traits: {"smithy.api#documentation" => "<p> A message about the status of data collection, which contains detailed descriptions of\n      any error messages. </p>"}))
    ServerDetail.add_member(:list_antipattern_severity_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListAntipatternSeveritySummary, location_name: 'listAntipatternSeveritySummary', traits: {"smithy.api#documentation" => "<p> A list of anti-pattern severity summaries. </p>"}))
    ServerDetail.add_member(:system_info, Smithy::Schema::Shapes::ShapeRef.new(shape: SystemInfo, location_name: 'systemInfo', traits: {"smithy.api#documentation" => "<p> System information about the server. </p>"}))
    ServerDetail.add_member(:application_component_strategy_summary, Smithy::Schema::Shapes::ShapeRef.new(shape: ListStrategySummary, location_name: 'applicationComponentStrategySummary', traits: {"smithy.api#documentation" => "<p> A list of strategy summaries. </p>"}))
    ServerDetail.add_member(:antipattern_report_s3_object, Smithy::Schema::Shapes::ShapeRef.new(shape: S3Object, location_name: 'antipatternReportS3Object', traits: {"smithy.api#documentation" => "<p> The S3 bucket name and Amazon S3 key name for anti-pattern report. </p>"}))
    ServerDetail.add_member(:antipattern_report_status, Smithy::Schema::Shapes::ShapeRef.new(shape: AntipatternReportStatus, location_name: 'antipatternReportStatus', traits: {"smithy.api#documentation" => "<p> The status of the anti-pattern report generation. </p>"}))
    ServerDetail.add_member(:antipattern_report_status_message, Smithy::Schema::Shapes::ShapeRef.new(shape: StatusMessage, location_name: 'antipatternReportStatusMessage', traits: {"smithy.api#documentation" => "<p> A message about the status of the anti-pattern report generation. </p>"}))
    ServerDetail.add_member(:server_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'serverType', traits: {"smithy.api#documentation" => "<p> The type of server. </p>"}))
    ServerDetail.add_member(:last_analyzed_timestamp, Smithy::Schema::Shapes::ShapeRef.new(shape: TimeStamp, location_name: 'lastAnalyzedTimestamp', traits: {"smithy.api#documentation" => "<p> The timestamp of when the server was assessed. </p>"}))
    ServerDetail.add_member(:server_error, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerError, location_name: 'serverError', traits: {"smithy.api#documentation" => "<p>The error in server analysis.</p>"}))
    ServerDetail.type = Types::ServerDetail
    ServerDetails.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerDetail)
    ServerError.add_member(:server_error_category, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerErrorCategory, location_name: 'serverErrorCategory', traits: {"smithy.api#documentation" => "<p>The error category of server analysis.</p>"}))
    ServerError.type = Types::ServerError
    ServerStatusSummary.add_member(:run_time_assessment_status, Smithy::Schema::Shapes::ShapeRef.new(shape: RunTimeAssessmentStatus, location_name: 'runTimeAssessmentStatus', traits: {"smithy.api#documentation" => "<p>The status of the run time.</p>"}))
    ServerStatusSummary.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p>The number of servers successfully analyzed, partially successful or failed\n      analysis.</p>"}))
    ServerStatusSummary.type = Types::ServerStatusSummary
    ServerStrategies.member = Smithy::Schema::Shapes::ShapeRef.new(shape: ServerStrategy)
    ServerStrategy.add_member(:recommendation, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationSet, location_name: 'recommendation', traits: {"smithy.api#documentation" => "<p> Strategy recommendation for the server. </p>"}))
    ServerStrategy.add_member(:status, Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyRecommendation, location_name: 'status', traits: {"smithy.api#documentation" => "<p> The recommendation status of the strategy for the server. </p>"}))
    ServerStrategy.add_member(:number_of_application_components, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'numberOfApplicationComponents', traits: {"smithy.api#documentation" => "<p> The number of application components with this strategy recommendation running on the\n      server. </p>"}))
    ServerStrategy.add_member(:is_preferred, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isPreferred', traits: {"smithy.api#documentation" => "<p> Set to true if the recommendation is set as preferred. </p>"}))
    ServerStrategy.type = Types::ServerStrategy
    ServerSummary.add_member(:server_os_type, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerOsType, location_name: 'ServerOsType', traits: {"smithy.api#documentation" => "<p> Type of operating system for the servers. </p>"}))
    ServerSummary.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p> Number of servers. </p>"}))
    ServerSummary.type = Types::ServerSummary
    ServiceLinkedRoleLockClientException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ServiceLinkedRoleLockClientException.type = Types::ServiceLinkedRoleLockClientException
    ServiceQuotaExceededException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'message', traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceCode.add_member(:version_control, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionControl, location_name: 'versionControl', traits: {"smithy.api#documentation" => "<p> The type of repository to use for the source code. </p>"}))
    SourceCode.add_member(:source_version, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceVersion, location_name: 'sourceVersion', traits: {"smithy.api#documentation" => "<p> The branch of the source code. </p>"}))
    SourceCode.add_member(:location, Smithy::Schema::Shapes::ShapeRef.new(shape: Location, location_name: 'location', traits: {"smithy.api#documentation" => "<p> The repository name for the source code. </p>"}))
    SourceCode.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ProjectName, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>"}))
    SourceCode.type = Types::SourceCode
    SourceCodeList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCode)
    SourceCodeRepositories.member = Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCodeRepository)
    SourceCodeRepository.add_member(:repository, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'repository', traits: {"smithy.api#documentation" => "<p> The repository name for the source code. </p>"}))
    SourceCodeRepository.add_member(:branch, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'branch', traits: {"smithy.api#documentation" => "<p> The branch of the source code. </p>"}))
    SourceCodeRepository.add_member(:version_control_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionControlType', traits: {"smithy.api#documentation" => "<p> The type of repository to use for the source code. </p>"}))
    SourceCodeRepository.add_member(:project_name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'projectName', traits: {"smithy.api#documentation" => "<p>The name of the project.</p>"}))
    SourceCodeRepository.type = Types::SourceCodeRepository
    StartAssessmentInput.add_member(:s3bucket_for_analysis_data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 's3bucketForAnalysisData', traits: {"smithy.api#documentation" => "<p> The S3 bucket used by the collectors to send analysis data to the service. The bucket\n      name must begin with <code>migrationhub-strategy-</code>. </p>", "smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"}))
    StartAssessmentInput.add_member(:s3bucket_for_report_data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 's3bucketForReportData', traits: {"smithy.api#documentation" => "<p> The S3 bucket where all the reports generated by the service are stored. The bucket name\n      must begin with <code>migrationhub-strategy-</code>. </p>", "smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"}))
    StartAssessmentInput.add_member(:assessment_targets, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentTargets, location_name: 'assessmentTargets', traits: {"smithy.api#documentation" => "<p>List of criteria for assessment.</p>"}))
    StartAssessmentInput.add_member(:assessment_data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AssessmentDataSourceType, location_name: 'assessmentDataSourceType', traits: {"smithy.api#documentation" => "The data source type of an assessment to be started."}))
    StartAssessmentInput.type = Types::StartAssessmentInput
    StartAssessmentOutput.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The ID of the assessment. </p>"}))
    StartAssessmentOutput.type = Types::StartAssessmentOutput
    StartImportFileTaskInput.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'name', traits: {"smithy.api#documentation" => "<p> A descriptive name for the request. </p>", "smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "[a-zA-Z0-9_-]+", "smithy.api#required" => {}}))
    StartImportFileTaskInput.add_member(:s3_bucket, Smithy::Schema::Shapes::ShapeRef.new(shape: ImportS3Bucket, location_name: 'S3Bucket', traits: {"smithy.api#documentation" => "<p> The S3 bucket where the import file is located. The bucket name is required to begin with\n        <code>migrationhub-strategy-</code>.</p>", "smithy.api#required" => {}}))
    StartImportFileTaskInput.add_member(:s3key, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 's3key', traits: {"smithy.api#documentation" => "<p> The Amazon S3 key name of the import file. </p>", "smithy.api#required" => {}}))
    StartImportFileTaskInput.add_member(:data_source_type, Smithy::Schema::Shapes::ShapeRef.new(shape: DataSourceType, location_name: 'dataSourceType', traits: {"smithy.api#documentation" => "<p>Specifies the source that the servers are coming from. By default, Strategy Recommendations assumes that\n      the servers specified in the import file are available in AWS Application Discovery Service. </p>"}))
    StartImportFileTaskInput.add_member(:group_id, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIds, location_name: 'groupId', traits: {"smithy.api#documentation" => "<p>Groups the resources in the import file together with a unique name. This ID can be as\n      filter in <code>ListApplicationComponents</code> and <code>ListServers</code>. </p>"}))
    StartImportFileTaskInput.add_member(:s3bucket_for_report_data, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 's3bucketForReportData', traits: {"smithy.api#documentation" => "<p> The S3 bucket where Strategy Recommendations uploads import results. The bucket name is required to\n      begin with migrationhub-strategy-. </p>", "smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"}))
    StartImportFileTaskInput.type = Types::StartImportFileTaskInput
    StartImportFileTaskOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID for a specific import task. The ID is unique within an AWS account. </p>"}))
    StartImportFileTaskOutput.type = Types::StartImportFileTaskOutput
    StartRecommendationReportGenerationInput.add_member(:output_format, Smithy::Schema::Shapes::ShapeRef.new(shape: OutputFormat, location_name: 'outputFormat', traits: {"smithy.api#documentation" => "<p> The output format for the recommendation report file. The default format is Microsoft\n      Excel. </p>"}))
    StartRecommendationReportGenerationInput.add_member(:group_id_filter, Smithy::Schema::Shapes::ShapeRef.new(shape: GroupIds, location_name: 'groupIdFilter', traits: {"smithy.api#documentation" => "<p> Groups the resources in the recommendation report with a unique name. </p>"}))
    StartRecommendationReportGenerationInput.type = Types::StartRecommendationReportGenerationInput
    StartRecommendationReportGenerationOutput.add_member(:id, Smithy::Schema::Shapes::ShapeRef.new(shape: RecommendationTaskId, location_name: 'id', traits: {"smithy.api#documentation" => "<p> The ID of the recommendation report generation task. </p>"}))
    StartRecommendationReportGenerationOutput.type = Types::StartRecommendationReportGenerationOutput
    StopAssessmentInput.add_member(:assessment_id, Smithy::Schema::Shapes::ShapeRef.new(shape: AsyncTaskId, location_name: 'assessmentId', traits: {"smithy.api#documentation" => "<p> The <code>assessmentId</code> returned by <a>StartAssessment</a>. </p>", "smithy.api#required" => {}}))
    StopAssessmentInput.type = Types::StopAssessmentInput
    StopAssessmentOutput.type = Types::StopAssessmentOutput
    StrategyOption.add_member(:strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: Strategy, location_name: 'strategy', traits: {"smithy.api#documentation" => "<p> Type of transformation. For example, Rehost, Replatform, and so on. </p>"}))
    StrategyOption.add_member(:tool_name, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformationToolName, location_name: 'toolName', traits: {"smithy.api#documentation" => "<p> The name of the tool that can be used to transform an application component using this\n      strategy. </p>"}))
    StrategyOption.add_member(:target_destination, Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDestination, location_name: 'targetDestination', traits: {"smithy.api#documentation" => "<p> Destination information about where the application component can migrate to. For\n      example, <code>EC2</code>, <code>ECS</code>, and so on. </p>"}))
    StrategyOption.add_member(:is_preferred, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'isPreferred', traits: {"smithy.api#documentation" => "<p> Indicates if a specific strategy is preferred for the application component. </p>"}))
    StrategyOption.type = Types::StrategyOption
    StrategySummary.add_member(:strategy, Smithy::Schema::Shapes::ShapeRef.new(shape: Strategy, location_name: 'strategy', traits: {"smithy.api#documentation" => "<p> The name of recommended strategy. </p>"}))
    StrategySummary.add_member(:count, Smithy::Schema::Shapes::ShapeRef.new(shape: Integer, location_name: 'count', traits: {"smithy.api#documentation" => "<p> The count of recommendations per strategy. </p>"}))
    StrategySummary.type = Types::StrategySummary
    SystemInfo.add_member(:os_info, Smithy::Schema::Shapes::ShapeRef.new(shape: OSInfo, location_name: 'osInfo', traits: {"smithy.api#documentation" => "<p> Operating system corresponding to a server. </p>"}))
    SystemInfo.add_member(:file_system_type, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'fileSystemType', traits: {"smithy.api#documentation" => "<p> File system type for the server. </p>"}))
    SystemInfo.add_member(:network_info_list, Smithy::Schema::Shapes::ShapeRef.new(shape: NetworkInfoList, location_name: 'networkInfoList', traits: {"smithy.api#documentation" => "<p> Networking information related to a server. </p>"}))
    SystemInfo.add_member(:cpu_architecture, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'cpuArchitecture', traits: {"smithy.api#documentation" => "<p> CPU architecture type for the server. </p>"}))
    SystemInfo.type = Types::SystemInfo
    TargetDatabaseEngines.member = Smithy::Schema::Shapes::ShapeRef.new(shape: TargetDatabaseEngine)
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException
    TransformationTool.add_member(:name, Smithy::Schema::Shapes::ShapeRef.new(shape: TransformationToolName, location_name: 'name', traits: {"smithy.api#documentation" => "<p> Name of the tool. </p>"}))
    TransformationTool.add_member(:description, Smithy::Schema::Shapes::ShapeRef.new(shape: TranformationToolDescription, location_name: 'description', traits: {"smithy.api#documentation" => "<p> Description of the tool. </p>"}))
    TransformationTool.add_member(:tranformation_tool_installation_link, Smithy::Schema::Shapes::ShapeRef.new(shape: TranformationToolInstallationLink, location_name: 'tranformationToolInstallationLink', traits: {"smithy.api#documentation" => "<p> URL for installing the tool. </p>"}))
    TransformationTool.type = Types::TransformationTool
    UpdateApplicationComponentConfigInput.add_member(:application_component_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ApplicationComponentId, location_name: 'applicationComponentId', traits: {"smithy.api#documentation" => "<p> The ID of the application component. The ID is unique within an AWS account. </p>", "smithy.api#required" => {}}))
    UpdateApplicationComponentConfigInput.add_member(:inclusion_status, Smithy::Schema::Shapes::ShapeRef.new(shape: InclusionStatus, location_name: 'inclusionStatus', traits: {"smithy.api#documentation" => "<p> Indicates whether the application component has been included for server recommendation\n      or not. </p>"}))
    UpdateApplicationComponentConfigInput.add_member(:strategy_option, Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyOption, location_name: 'strategyOption', traits: {"smithy.api#documentation" => "<p> The preferred strategy options for the application component. Use values from the <a>GetApplicationComponentStrategies</a> response. </p>"}))
    UpdateApplicationComponentConfigInput.add_member(:source_code_list, Smithy::Schema::Shapes::ShapeRef.new(shape: SourceCodeList, location_name: 'sourceCodeList', traits: {"smithy.api#documentation" => "<p> The list of source code configurations to update for the application component. </p>"}))
    UpdateApplicationComponentConfigInput.add_member(:secrets_manager_key, Smithy::Schema::Shapes::ShapeRef.new(shape: SecretsManagerKey, location_name: 'secretsManagerKey', traits: {"smithy.api#documentation" => "<p> Database credentials. </p>"}))
    UpdateApplicationComponentConfigInput.add_member(:configure_only, Smithy::Schema::Shapes::ShapeRef.new(shape: Boolean, location_name: 'configureOnly', traits: {"smithy.api#documentation" => "<p>Update the configuration request of an application component. If it is set to true, the\n      source code and/or database credentials are updated. If it is set to false, the source code\n      and/or database credentials are updated and an analysis is initiated.</p>"}))
    UpdateApplicationComponentConfigInput.add_member(:app_type, Smithy::Schema::Shapes::ShapeRef.new(shape: AppType, location_name: 'appType', traits: {"smithy.api#documentation" => "<p>The type of known component.</p>"}))
    UpdateApplicationComponentConfigInput.type = Types::UpdateApplicationComponentConfigInput
    UpdateApplicationComponentConfigOutput.type = Types::UpdateApplicationComponentConfigOutput
    UpdateServerConfigInput.add_member(:server_id, Smithy::Schema::Shapes::ShapeRef.new(shape: ServerId, location_name: 'serverId', traits: {"smithy.api#documentation" => "<p> The ID of the server. </p>", "smithy.api#required" => {}}))
    UpdateServerConfigInput.add_member(:strategy_option, Smithy::Schema::Shapes::ShapeRef.new(shape: StrategyOption, location_name: 'strategyOption', traits: {"smithy.api#documentation" => "<p> The preferred strategy options for the application component. See the response from <a>GetServerStrategies</a>.</p>"}))
    UpdateServerConfigInput.type = Types::UpdateServerConfigInput
    UpdateServerConfigOutput.type = Types::UpdateServerConfigOutput
    ValidationException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: ErrorMessage, location_name: 'message'))
    ValidationException.type = Types::ValidationException
    VcenterBasedRemoteInfo.add_member(:vcenter_configuration_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'vcenterConfigurationTimeStamp', traits: {"smithy.api#documentation" => "<p>The time when the remote server based on vCenter was last configured.</p>"}))
    VcenterBasedRemoteInfo.add_member(:os_type, Smithy::Schema::Shapes::ShapeRef.new(shape: OSType, location_name: 'osType', traits: {"smithy.api#documentation" => "<p>The type of the operating system.</p>"}))
    VcenterBasedRemoteInfo.type = Types::VcenterBasedRemoteInfo
    VcenterBasedRemoteInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VcenterBasedRemoteInfo)
    VersionControlInfo.add_member(:version_control_type, Smithy::Schema::Shapes::ShapeRef.new(shape: VersionControlType, location_name: 'versionControlType', traits: {"smithy.api#documentation" => "<p>The type of version control.</p>"}))
    VersionControlInfo.add_member(:version_control_configuration_time_stamp, Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: 'versionControlConfigurationTimeStamp', traits: {"smithy.api#documentation" => "<p>The time when the version control system was last configured.</p>"}))
    VersionControlInfo.type = Types::VersionControlInfo
    VersionControlInfoList.member = Smithy::Schema::Shapes::ShapeRef.new(shape: VersionControlInfo)

    AWSMigrationHubStrategyRecommendation = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhubstrategy#AWSMigrationHubStrategyRecommendation"
      service.name = "AWSMigrationHubStrategyRecommendation"
      service.version = "2020-02-19"
      service.traits = {"aws.api#service" => {"sdkId" => "MigrationHubStrategy", "endpointPrefix" => "migrationhub-strategy", "cloudTrailEventSource" => "migrationhub-strategy.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "migrationhub-strategy"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Migration Hub Strategy Recommendations"}
      service.add_operation(:get_application_component_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetApplicationComponentDetails"
        operation.name = "GetApplicationComponentDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationComponentDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationComponentDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-applicationcomponent-details/{applicationComponentId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_component_strategies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetApplicationComponentStrategies"
        operation.name = "GetApplicationComponentStrategies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationComponentStrategiesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetApplicationComponentStrategiesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/get-applicationcomponent-strategies/{applicationComponentId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetAssessment"
        operation.name = "GetAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetAssessmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-assessment/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_file_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetImportFileTask"
        operation.name = "GetImportFileTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportFileTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetImportFileTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-import-file-task/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_latest_assessment_id, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetLatestAssessmentId"
        operation.name = "GetLatestAssessmentId"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLatestAssessmentIdInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetLatestAssessmentIdOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: DependencyException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-latest-assessment-id", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portfolio_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetPortfolioPreferences"
        operation.name = "GetPortfolioPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortfolioPreferencesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortfolioPreferencesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-portfolio-preferences", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portfolio_summary, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetPortfolioSummary"
        operation.name = "GetPortfolioSummary"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortfolioSummaryInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetPortfolioSummaryOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-portfolio-summary", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendation_report_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetRecommendationReportDetails"
        operation.name = "GetRecommendationReportDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationReportDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetRecommendationReportDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-recommendation-report-details/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_server_details, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetServerDetails"
        operation.name = "GetServerDetails"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServerDetailsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServerDetailsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-server-details/{serverId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetServerDetails.new
      end)
      service.add_operation(:get_server_strategies, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetServerStrategies"
        operation.name = "GetServerStrategies"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServerStrategiesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: GetServerStrategiesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/get-server-strategies/{serverId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_analyzable_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListAnalyzableServers"
        operation.name = "ListAnalyzableServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzableServersRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListAnalyzableServersResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-analyzable-servers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalyzableServers.new
      end)
      service.add_operation(:list_application_components, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListApplicationComponents"
        operation.name = "ListApplicationComponents"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationComponentsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListApplicationComponentsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceLinkedRoleLockClientException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-applicationcomponents", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationComponents.new
      end)
      service.add_operation(:list_collectors, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListCollectors"
        operation.name = "ListCollectors"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectorsInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListCollectorsOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-collectors", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollectors.new
      end)
      service.add_operation(:list_import_file_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListImportFileTask"
        operation.name = "ListImportFileTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportFileTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListImportFileTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-import-file-task", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportFileTask.new
      end)
      service.add_operation(:list_servers, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListServers"
        operation.name = "ListServers"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServersInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: ListServersOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-servers", "code" => 200}}
        operation[:paginator] = Paginators::ListServers.new
      end)
      service.add_operation(:put_portfolio_preferences, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#PutPortfolioPreferences"
        operation.name = "PutPortfolioPreferences"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPortfolioPreferencesInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: PutPortfolioPreferencesOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/put-portfolio-preferences", "code" => 200}}
      end)
      service.add_operation(:start_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StartAssessment"
        operation.name = "StartAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartAssessmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-assessment", "code" => 200}}
      end)
      service.add_operation(:start_import_file_task, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StartImportFileTask"
        operation.name = "StartImportFileTask"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportFileTaskInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartImportFileTaskOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-import-file-task", "code" => 200}}
      end)
      service.add_operation(:start_recommendation_report_generation, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StartRecommendationReportGeneration"
        operation.name = "StartRecommendationReportGeneration"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommendationReportGenerationInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StartRecommendationReportGenerationOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-recommendation-report-generation", "code" => 200}}
      end)
      service.add_operation(:stop_assessment, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StopAssessment"
        operation.name = "StopAssessment"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAssessmentInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: StopAssessmentOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/stop-assessment", "code" => 200}}
      end)
      service.add_operation(:update_application_component_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#UpdateApplicationComponentConfig"
        operation.name = "UpdateApplicationComponentConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationComponentConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateApplicationComponentConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-applicationcomponent-config/"}}
      end)
      service.add_operation(:update_server_config, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#UpdateServerConfig"
        operation.name = "UpdateServerConfig"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerConfigInput)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: UpdateServerConfigOutput)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-server-config/"}}
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
