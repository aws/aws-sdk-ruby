# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubStrategy
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AnalysisStatusUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhubstrategy#AnalysisStatusUnion", name: "AnalysisStatusUnion")
    AnalysisType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AnalysisType", name: "AnalysisType", traits: {"smithy.api#enum" => [{"value" => "SOURCE_CODE_ANALYSIS", "name" => "SOURCE_CODE_ANALYSIS"}, {"value" => "DATABASE_ANALYSIS", "name" => "DATABASE_ANALYSIS"}, {"value" => "RUNTIME_ANALYSIS", "name" => "RUNTIME_ANALYSIS"}, {"value" => "BINARY_ANALYSIS", "name" => "BINARY_ANALYSIS"}]})
    AnalyzableServerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AnalyzableServerSummary", name: "AnalyzableServerSummary")
    AnalyzableServerSummaryList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AnalyzableServerSummaryList", name: "AnalyzableServerSummaryList")
    AnalyzerNameUnion = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhubstrategy#AnalyzerNameUnion", name: "AnalyzerNameUnion")
    AntipatternReportResult = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AntipatternReportResult", name: "AntipatternReportResult")
    AntipatternReportResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AntipatternReportResultList", name: "AntipatternReportResultList")
    AntipatternReportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AntipatternReportStatus", name: "AntipatternReportStatus", traits: {"smithy.api#enum" => [{"name" => "FAILED", "value" => "FAILED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCESS", "value" => "SUCCESS"}]})
    AntipatternSeveritySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AntipatternSeveritySummary", name: "AntipatternSeveritySummary")
    AppType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AppType", name: "AppType", traits: {"smithy.api#enum" => [{"value" => "DotNetFramework", "name" => "dotNetFramework"}, {"value" => "Java", "name" => "java"}, {"value" => "SQLServer", "name" => "sqlServer"}, {"value" => "IIS", "name" => "IIS"}, {"value" => "Oracle", "name" => "oracle"}, {"value" => "Other", "name" => "other"}, {"value" => "Tomcat", "name" => "tomcat"}, {"value" => "JBoss", "name" => "jboss"}, {"value" => "Spring", "name" => "spring"}, {"value" => "Mongo DB", "name" => "mongodb"}, {"value" => "DB2", "name" => "db2"}, {"value" => "Maria DB", "name" => "mariadb"}, {"value" => "MySQL", "name" => "mysql"}, {"value" => "Sybase", "name" => "sybase"}, {"value" => "PostgreSQLServer", "name" => "postgresqlserver"}, {"value" => "Cassandra", "name" => "cassandra"}, {"value" => "IBM WebSphere", "name" => "websphere"}, {"value" => "Oracle WebLogic", "name" => "weblogic"}, {"value" => "Visual Basic", "name" => "visualbasic"}, {"value" => "Unknown", "name" => "unknown"}, {"value" => "DotnetCore", "name" => "dotnetcore"}, {"value" => "Dotnet", "name" => "dotnet"}]})
    AppUnitError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AppUnitError", name: "AppUnitError")
    AppUnitErrorCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AppUnitErrorCategory", name: "AppUnitErrorCategory", traits: {"smithy.api#enum" => [{"name" => "CREDENTIAL_ERROR", "value" => "CREDENTIAL_ERROR"}, {"name" => "CONNECTIVITY_ERROR", "value" => "CONNECTIVITY_ERROR"}, {"name" => "PERMISSION_ERROR", "value" => "PERMISSION_ERROR"}, {"name" => "UNSUPPORTED_ERROR", "value" => "UNSUPPORTED_ERROR"}, {"name" => "OTHER_ERROR", "value" => "OTHER_ERROR"}]})
    ApplicationComponentCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentCriteria", name: "ApplicationComponentCriteria", traits: {"smithy.api#enum" => [{"value" => "NOT_DEFINED", "name" => "NOT_DEFINED"}, {"value" => "APP_NAME", "name" => "APP_NAME"}, {"value" => "SERVER_ID", "name" => "SERVER_ID"}, {"value" => "APP_TYPE", "name" => "APP_TYPE"}, {"value" => "STRATEGY", "name" => "STRATEGY"}, {"value" => "DESTINATION", "name" => "DESTINATION"}, {"value" => "ANALYSIS_STATUS", "name" => "ANALYSIS_STATUS"}, {"value" => "ERROR_CATEGORY", "name" => "ERROR_CATEGORY"}]})
    ApplicationComponentDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentDetail", name: "ApplicationComponentDetail")
    ApplicationComponentDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentDetails", name: "ApplicationComponentDetails")
    ApplicationComponentId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentId", name: "ApplicationComponentId", traits: {"smithy.api#length" => {"max" => 44}, "smithy.api#pattern" => "[0-9a-zA-Z-]+"})
    ApplicationComponentStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentStatusSummary", name: "ApplicationComponentStatusSummary")
    ApplicationComponentStrategies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentStrategies", name: "ApplicationComponentStrategies")
    ApplicationComponentStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentStrategy", name: "ApplicationComponentStrategy")
    ApplicationComponentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationComponentSummary", name: "ApplicationComponentSummary")
    ApplicationMode = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationMode", name: "ApplicationMode", traits: {"smithy.api#enum" => [{"name" => "ALL", "value" => "ALL"}, {"name" => "KNOWN", "value" => "KNOWN"}, {"name" => "UNKNOWN", "value" => "UNKNOWN"}]})
    ApplicationPreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ApplicationPreferences", name: "ApplicationPreferences")
    AssessmentDataSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentDataSourceType", name: "AssessmentDataSourceType", traits: {"smithy.api#enum" => [{"value" => "StrategyRecommendationsApplicationDataCollector", "name" => "SR_COLLECTOR"}, {"value" => "ManualImport", "name" => "MANUAL_IMPORT"}, {"value" => "ApplicationDiscoveryService", "name" => "ADS"}]})
    AssessmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentStatus", name: "AssessmentStatus", traits: {"smithy.api#enum" => [{"value" => "IN_PROGRESS", "name" => "IN_PROGRESS"}, {"value" => "COMPLETE", "name" => "COMPLETE"}, {"value" => "FAILED", "name" => "FAILED"}, {"value" => "STOPPED", "name" => "STOPPED"}]})
    AssessmentStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentStatusMessage", name: "AssessmentStatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*\\S.*"})
    AssessmentSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentSummary", name: "AssessmentSummary")
    AssessmentTarget = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentTarget", name: "AssessmentTarget")
    AssessmentTargetValues = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentTargetValues", name: "AssessmentTargetValues")
    AssessmentTargets = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AssessmentTargets", name: "AssessmentTargets", traits: {"smithy.api#length" => {"min" => 0, "max" => 10}})
    AssociatedApplication = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AssociatedApplication", name: "AssociatedApplication")
    AssociatedApplications = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AssociatedApplications", name: "AssociatedApplications")
    AssociatedServerIDs = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AssociatedServerIDs", name: "AssociatedServerIDs")
    AsyncTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AsyncTaskId", name: "AsyncTaskId", traits: {"smithy.api#length" => {"min" => 0, "max" => 52}, "smithy.api#pattern" => "[0-9a-z-:]+"})
    AuthType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AuthType", name: "AuthType", traits: {"smithy.api#enum" => [{"value" => "NTLM", "name" => "NTLM"}, {"value" => "SSH", "name" => "SSH"}, {"value" => "CERT", "name" => "CERT"}]})
    AwsManagedResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#AwsManagedResources", name: "AwsManagedResources")
    AwsManagedTargetDestination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#AwsManagedTargetDestination", name: "AwsManagedTargetDestination", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "AWS Elastic BeanStalk", "name" => "AWS_ELASTIC_BEANSTALK"}, {"value" => "AWS Fargate", "name" => "AWS_FARGATE"}]})
    AwsManagedTargetDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#AwsManagedTargetDestinations", name: "AwsManagedTargetDestinations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    BinaryAnalyzerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#BinaryAnalyzerName", name: "BinaryAnalyzerName", traits: {"smithy.api#enum" => [{"value" => "DLL_ANALYZER", "name" => "DLL_ANALYZER"}, {"value" => "BYTECODE_ANALYZER", "name" => "BYTECODE_ANALYZER"}]})
    Boolean = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.migrationhubstrategy#Boolean", name: "Boolean")
    BusinessGoals = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#BusinessGoals", name: "BusinessGoals")
    BusinessGoalsInteger = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubstrategy#BusinessGoalsInteger", name: "BusinessGoalsInteger", traits: {"smithy.api#range" => {"min" => 1, "max" => 5}})
    Collector = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#Collector", name: "Collector")
    CollectorHealth = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#CollectorHealth", name: "CollectorHealth", traits: {"smithy.api#enum" => [{"value" => "COLLECTOR_HEALTHY", "name" => "COLLECTOR_HEALTHY"}, {"value" => "COLLECTOR_UNHEALTHY", "name" => "COLLECTOR_UNHEALTHY"}]})
    Collectors = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#Collectors", name: "Collectors")
    Condition = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#Condition", name: "Condition", traits: {"smithy.api#enum" => [{"value" => "EQUALS", "name" => "EQUALS"}, {"value" => "NOT_EQUALS", "name" => "NOT_EQUALS"}, {"value" => "CONTAINS", "name" => "CONTAINS"}, {"value" => "NOT_CONTAINS", "name" => "NOT_CONTAINS"}]})
    ConfigurationSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ConfigurationSummary", name: "ConfigurationSummary")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DataCollectionDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#DataCollectionDetails", name: "DataCollectionDetails")
    DataSourceType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#DataSourceType", name: "DataSourceType", traits: {"smithy.api#enum" => [{"value" => "ApplicationDiscoveryService", "name" => "ADS"}, {"value" => "MPA", "name" => "MPA"}, {"value" => "Import", "name" => "IMPORT"}, {"value" => "StrategyRecommendationsApplicationDataCollector", "name" => "MHSR_COLLECTOR"}]})
    DatabaseConfigDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#DatabaseConfigDetail", name: "DatabaseConfigDetail")
    DatabaseManagementPreference = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#DatabaseManagementPreference", name: "DatabaseManagementPreference", traits: {"smithy.api#enum" => [{"value" => "AWS-managed", "name" => "AWS_MANAGED"}, {"value" => "Self-manage", "name" => "SELF_MANAGE"}, {"value" => "No preference", "name" => "NO_PREFERENCE"}]})
    DatabaseMigrationPreference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhubstrategy#DatabaseMigrationPreference", name: "DatabaseMigrationPreference")
    DatabasePreferences = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#DatabasePreferences", name: "DatabasePreferences")
    DependencyException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#DependencyException", name: "DependencyException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    GetApplicationComponentDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetApplicationComponentDetailsInput", name: "GetApplicationComponentDetailsInput")
    GetApplicationComponentDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetApplicationComponentDetailsOutput", name: "GetApplicationComponentDetailsOutput")
    GetApplicationComponentStrategiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetApplicationComponentStrategiesInput", name: "GetApplicationComponentStrategiesInput")
    GetApplicationComponentStrategiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetApplicationComponentStrategiesOutput", name: "GetApplicationComponentStrategiesOutput")
    GetAssessmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetAssessmentInput", name: "GetAssessmentInput")
    GetAssessmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetAssessmentOutput", name: "GetAssessmentOutput")
    GetImportFileTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetImportFileTaskInput", name: "GetImportFileTaskInput")
    GetImportFileTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetImportFileTaskOutput", name: "GetImportFileTaskOutput")
    GetLatestAssessmentIdInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetLatestAssessmentIdInput", name: "GetLatestAssessmentIdInput")
    GetLatestAssessmentIdOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetLatestAssessmentIdOutput", name: "GetLatestAssessmentIdOutput")
    GetPortfolioPreferencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetPortfolioPreferencesInput", name: "GetPortfolioPreferencesInput")
    GetPortfolioPreferencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetPortfolioPreferencesOutput", name: "GetPortfolioPreferencesOutput")
    GetPortfolioSummaryInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetPortfolioSummaryInput", name: "GetPortfolioSummaryInput")
    GetPortfolioSummaryOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetPortfolioSummaryOutput", name: "GetPortfolioSummaryOutput")
    GetRecommendationReportDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetRecommendationReportDetailsInput", name: "GetRecommendationReportDetailsInput")
    GetRecommendationReportDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetRecommendationReportDetailsOutput", name: "GetRecommendationReportDetailsOutput")
    GetServerDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetServerDetailsInput", name: "GetServerDetailsInput")
    GetServerDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetServerDetailsOutput", name: "GetServerDetailsOutput")
    GetServerStrategiesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetServerStrategiesInput", name: "GetServerStrategiesInput")
    GetServerStrategiesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#GetServerStrategiesOutput", name: "GetServerStrategiesOutput")
    Group = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#Group", name: "Group")
    GroupIds = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#GroupIds", name: "GroupIds")
    GroupName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#GroupName", name: "GroupName", traits: {"smithy.api#enum" => [{"value" => "ExternalId", "name" => "EXTERNAL_ID"}, {"value" => "ExternalSourceType", "name" => "EXTERNAL_SOURCE_TYPE"}]})
    Heterogeneous = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#Heterogeneous", name: "Heterogeneous")
    HeterogeneousTargetDatabaseEngine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#HeterogeneousTargetDatabaseEngine", name: "HeterogeneousTargetDatabaseEngine", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "Amazon Aurora", "name" => "AMAZON_AURORA"}, {"value" => "AWS PostgreSQL", "name" => "AWS_POSTGRESQL"}, {"value" => "MySQL", "name" => "MYSQL"}, {"value" => "Microsoft SQL Server", "name" => "MICROSOFT_SQL_SERVER"}, {"value" => "Oracle Database", "name" => "ORACLE_DATABASE"}, {"value" => "MariaDB", "name" => "MARIA_DB"}, {"value" => "SAP", "name" => "SAP"}, {"value" => "Db2 LUW", "name" => "DB2_LUW"}, {"value" => "MongoDB", "name" => "MONGO_DB"}]})
    HeterogeneousTargetDatabaseEngines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#HeterogeneousTargetDatabaseEngines", name: "HeterogeneousTargetDatabaseEngines", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    Homogeneous = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#Homogeneous", name: "Homogeneous")
    HomogeneousTargetDatabaseEngine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#HomogeneousTargetDatabaseEngine", name: "HomogeneousTargetDatabaseEngine", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}]})
    HomogeneousTargetDatabaseEngines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#HomogeneousTargetDatabaseEngines", name: "HomogeneousTargetDatabaseEngines", traits: {"smithy.api#length" => {"min" => 0, "max" => 1}})
    IPAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#IPAddress", name: "IPAddress", traits: {"smithy.api#length" => {"min" => 0, "max" => 15}, "smithy.api#pattern" => "^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$"})
    IPAddressBasedRemoteInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#IPAddressBasedRemoteInfo", name: "IPAddressBasedRemoteInfo")
    IPAddressBasedRemoteInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#IPAddressBasedRemoteInfoList", name: "IPAddressBasedRemoteInfoList")
    ImportFileTaskInformation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ImportFileTaskInformation", name: "ImportFileTaskInformation")
    ImportFileTaskStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ImportFileTaskStatus", name: "ImportFileTaskStatus", traits: {"smithy.api#enum" => [{"value" => "ImportInProgress", "name" => "IMPORT_IN_PROGRESS"}, {"value" => "ImportFailed", "name" => "IMPORT_FAILED"}, {"value" => "ImportPartialSuccess", "name" => "IMPORT_PARTIAL_SUCCESS"}, {"value" => "ImportSuccess", "name" => "IMPORT_SUCCESS"}, {"value" => "DeleteInProgress", "name" => "DELETE_IN_PROGRESS"}, {"value" => "DeleteFailed", "name" => "DELETE_FAILED"}, {"value" => "DeletePartialSuccess", "name" => "DELETE_PARTIAL_SUCCESS"}, {"value" => "DeleteSuccess", "name" => "DELETE_SUCCESS"}]})
    InclusionStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#InclusionStatus", name: "InclusionStatus", traits: {"smithy.api#enum" => [{"name" => "EXCLUDE_FROM_RECOMMENDATION", "value" => "excludeFromAssessment"}, {"name" => "INCLUDE_IN_RECOMMENDATION", "value" => "includeInAssessment"}]})
    Integer = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubstrategy#Integer", name: "Integer")
    InterfaceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#InterfaceName", name: "InterfaceName", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListAnalyzableServersRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListAnalyzableServersRequest", name: "ListAnalyzableServersRequest")
    ListAnalyzableServersResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListAnalyzableServersResponse", name: "ListAnalyzableServersResponse")
    ListAntipatternSeveritySummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListAntipatternSeveritySummary", name: "ListAntipatternSeveritySummary")
    ListApplicationComponentStatusSummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListApplicationComponentStatusSummary", name: "ListApplicationComponentStatusSummary")
    ListApplicationComponentSummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListApplicationComponentSummary", name: "ListApplicationComponentSummary")
    ListApplicationComponentsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListApplicationComponentsInput", name: "ListApplicationComponentsInput")
    ListApplicationComponentsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListApplicationComponentsOutput", name: "ListApplicationComponentsOutput")
    ListCollectorsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListCollectorsInput", name: "ListCollectorsInput")
    ListCollectorsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListCollectorsOutput", name: "ListCollectorsOutput")
    ListImportFileTaskInformation = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListImportFileTaskInformation", name: "ListImportFileTaskInformation")
    ListImportFileTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListImportFileTaskInput", name: "ListImportFileTaskInput")
    ListImportFileTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListImportFileTaskOutput", name: "ListImportFileTaskOutput")
    ListServerStatusSummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListServerStatusSummary", name: "ListServerStatusSummary")
    ListServerSummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListServerSummary", name: "ListServerSummary")
    ListServersInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListServersInput", name: "ListServersInput")
    ListServersOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ListServersOutput", name: "ListServersOutput")
    ListStrategySummary = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ListStrategySummary", name: "ListStrategySummary")
    Location = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#Location", name: "Location", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*\\S.*"})
    MacAddress = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#MacAddress", name: "MacAddress", traits: {"smithy.api#length" => {"min" => 0, "max" => 17}, "smithy.api#pattern" => "^([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})|([0-9a-fA-F]{4}\\\\.[0-9a-fA-F]{4}\\\\.[0-9a-fA-F]{4})$”$"})
    ManagementPreference = ::Smithy::Schema::Shapes::UnionShape.new(id: "com.amazonaws.migrationhubstrategy#ManagementPreference", name: "ManagementPreference")
    MaxResult = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.migrationhubstrategy#MaxResult", name: "MaxResult")
    NetMask = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#NetMask", name: "NetMask", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*"})
    NetworkInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#NetworkInfo", name: "NetworkInfo")
    NetworkInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#NetworkInfoList", name: "NetworkInfoList")
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 2048}, "smithy.api#pattern" => ".*\\S.*"})
    NoDatabaseMigrationPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#NoDatabaseMigrationPreference", name: "NoDatabaseMigrationPreference")
    NoManagementPreference = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#NoManagementPreference", name: "NoManagementPreference")
    NoPreferenceTargetDestination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#NoPreferenceTargetDestination", name: "NoPreferenceTargetDestination", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "AWS Elastic BeanStalk", "name" => "AWS_ELASTIC_BEANSTALK"}, {"value" => "AWS Fargate", "name" => "AWS_FARGATE"}, {"value" => "Amazon Elastic Cloud Compute (EC2)", "name" => "AMAZON_ELASTIC_CLOUD_COMPUTE"}, {"value" => "Amazon Elastic Container Service (ECS)", "name" => "AMAZON_ELASTIC_CONTAINER_SERVICE"}, {"value" => "Amazon Elastic Kubernetes Service (EKS)", "name" => "AMAZON_ELASTIC_KUBERNETES_SERVICE"}]})
    NoPreferenceTargetDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#NoPreferenceTargetDestinations", name: "NoPreferenceTargetDestinations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    OSInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#OSInfo", name: "OSInfo")
    OSType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#OSType", name: "OSType", traits: {"smithy.api#enum" => [{"value" => "LINUX", "name" => "LINUX"}, {"value" => "WINDOWS", "name" => "WINDOWS"}]})
    OSVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#OSVersion", name: "OSVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 64}, "smithy.api#pattern" => ".*\\S.*"})
    OutputFormat = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#OutputFormat", name: "OutputFormat", traits: {"smithy.api#enum" => [{"value" => "Excel", "name" => "Excel"}, {"value" => "Json", "name" => "Json"}]})
    PipelineInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#PipelineInfo", name: "PipelineInfo")
    PipelineInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#PipelineInfoList", name: "PipelineInfoList")
    PipelineType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#PipelineType", name: "PipelineType", traits: {"smithy.api#enum" => [{"value" => "AZURE_DEVOPS", "name" => "AZURE_DEVOPS"}]})
    PrioritizeBusinessGoals = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#PrioritizeBusinessGoals", name: "PrioritizeBusinessGoals")
    ProjectName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ProjectName", name: "ProjectName", traits: {"smithy.api#length" => {"min" => 1, "max" => 128}, "smithy.api#pattern" => ".*\\S.*"})
    PutPortfolioPreferencesInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#PutPortfolioPreferencesInput", name: "PutPortfolioPreferencesInput")
    PutPortfolioPreferencesOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#PutPortfolioPreferencesOutput", name: "PutPortfolioPreferencesOutput")
    RecommendationReportDetails = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#RecommendationReportDetails", name: "RecommendationReportDetails")
    RecommendationReportStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#RecommendationReportStatus", name: "RecommendationReportStatus", traits: {"smithy.api#enum" => [{"name" => "FAILED", "value" => "FAILED"}, {"name" => "IN_PROGRESS", "value" => "IN_PROGRESS"}, {"name" => "SUCCESS", "value" => "SUCCESS"}]})
    RecommendationReportStatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#RecommendationReportStatusMessage", name: "RecommendationReportStatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 512}, "smithy.api#pattern" => ".*\\S.*"})
    RecommendationReportTimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.migrationhubstrategy#RecommendationReportTimeStamp", name: "RecommendationReportTimeStamp")
    RecommendationSet = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#RecommendationSet", name: "RecommendationSet")
    RecommendationTaskId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#RecommendationTaskId", name: "RecommendationTaskId", traits: {"smithy.api#length" => {"min" => 0, "max" => 52}, "smithy.api#pattern" => "[0-9a-z-:]+"})
    RemoteSourceCodeAnalysisServerInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#RemoteSourceCodeAnalysisServerInfo", name: "RemoteSourceCodeAnalysisServerInfo")
    ResourceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ResourceId", name: "ResourceId", traits: {"smithy.api#length" => {"min" => 0, "max" => 44}, "smithy.api#pattern" => "^[0-9a-b]+"})
    ResourceName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ResourceName", name: "ResourceName")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResourceSubType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ResourceSubType", name: "ResourceSubType", traits: {"smithy.api#enum" => [{"value" => "Database", "name" => "DATABASE"}, {"value" => "Process", "name" => "PROCESS"}, {"value" => "DatabaseProcess", "name" => "DATABASE_PROCESS"}]})
    Result = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#Result", name: "Result")
    ResultList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ResultList", name: "ResultList")
    RunTimeAnalyzerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#RunTimeAnalyzerName", name: "RunTimeAnalyzerName", traits: {"smithy.api#enum" => [{"value" => "A2C_ANALYZER", "name" => "A2C_ANALYZER"}, {"value" => "REHOST_ANALYZER", "name" => "REHOST_ANALYZER"}, {"value" => "EMP_PA_ANALYZER", "name" => "EMP_PA_ANALYZER"}, {"value" => "DATABASE_ANALYZER", "name" => "DATABASE_ANALYZER"}, {"value" => "SCT_ANALYZER", "name" => "SCT_ANALYZER"}]})
    RunTimeAssessmentStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#RunTimeAssessmentStatus", name: "RunTimeAssessmentStatus", traits: {"smithy.api#enum" => [{"name" => "DC_TO_BE_SCHEDULED", "value" => "dataCollectionTaskToBeScheduled"}, {"name" => "DC_REQ_SENT", "value" => "dataCollectionTaskScheduled"}, {"name" => "DC_STARTED", "value" => "dataCollectionTaskStarted"}, {"name" => "DC_STOPPED", "value" => "dataCollectionTaskStopped"}, {"name" => "DC_SUCCESS", "value" => "dataCollectionTaskSuccess"}, {"name" => "DC_FAILED", "value" => "dataCollectionTaskFailed"}, {"name" => "DC_PARTIAL_SUCCESS", "value" => "dataCollectionTaskPartialSuccess"}]})
    RuntimeAnalysisStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#RuntimeAnalysisStatus", name: "RuntimeAnalysisStatus", traits: {"smithy.api#enum" => [{"name" => "ANALYSIS_TO_BE_SCHEDULED", "value" => "ANALYSIS_TO_BE_SCHEDULED"}, {"name" => "ANALYSIS_STARTED", "value" => "ANALYSIS_STARTED"}, {"name" => "ANALYSIS_SUCCESS", "value" => "ANALYSIS_SUCCESS"}, {"name" => "ANALYSIS_FAILED", "value" => "ANALYSIS_FAILED"}]})
    S3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#S3Bucket", name: "S3Bucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"})
    S3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#S3Key", name: "S3Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    S3Keys = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#S3Keys", name: "S3Keys")
    S3Object = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#S3Object", name: "S3Object")
    SecretsManagerKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#SecretsManagerKey", name: "SecretsManagerKey", traits: {"smithy.api#length" => {"min" => 1, "max" => 512}, "smithy.api#pattern" => ".*", "smithy.api#sensitive" => {}})
    SelfManageResources = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#SelfManageResources", name: "SelfManageResources")
    SelfManageTargetDestination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#SelfManageTargetDestination", name: "SelfManageTargetDestination", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "Amazon Elastic Cloud Compute (EC2)", "name" => "AMAZON_ELASTIC_CLOUD_COMPUTE"}, {"value" => "Amazon Elastic Container Service (ECS)", "name" => "AMAZON_ELASTIC_CONTAINER_SERVICE"}, {"value" => "Amazon Elastic Kubernetes Service (EKS)", "name" => "AMAZON_ELASTIC_KUBERNETES_SERVICE"}]})
    SelfManageTargetDestinations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#SelfManageTargetDestinations", name: "SelfManageTargetDestinations", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    ServerCriteria = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ServerCriteria", name: "ServerCriteria", traits: {"smithy.api#enum" => [{"value" => "NOT_DEFINED", "name" => "NOT_DEFINED"}, {"value" => "OS_NAME", "name" => "OS_NAME"}, {"value" => "STRATEGY", "name" => "STRATEGY"}, {"value" => "DESTINATION", "name" => "DESTINATION"}, {"value" => "SERVER_ID", "name" => "SERVER_ID"}, {"value" => "ANALYSIS_STATUS", "name" => "ANALYSIS_STATUS"}, {"value" => "ERROR_CATEGORY", "name" => "ERROR_CATEGORY"}]})
    ServerDetail = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServerDetail", name: "ServerDetail")
    ServerDetails = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ServerDetails", name: "ServerDetails")
    ServerError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServerError", name: "ServerError")
    ServerErrorCategory = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ServerErrorCategory", name: "ServerErrorCategory", traits: {"smithy.api#enum" => [{"name" => "CONNECTIVITY_ERROR", "value" => "CONNECTIVITY_ERROR"}, {"name" => "CREDENTIAL_ERROR", "value" => "CREDENTIAL_ERROR"}, {"name" => "PERMISSION_ERROR", "value" => "PERMISSION_ERROR"}, {"name" => "ARCHITECTURE_ERROR", "value" => "ARCHITECTURE_ERROR"}, {"name" => "OTHER_ERROR", "value" => "OTHER_ERROR"}]})
    ServerId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ServerId", name: "ServerId", traits: {"smithy.api#length" => {"min" => 1, "max" => 27}, "smithy.api#pattern" => ".*\\S.*"})
    ServerOsType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#ServerOsType", name: "ServerOsType", traits: {"smithy.api#enum" => [{"value" => "WindowsServer", "name" => "windowsServer"}, {"value" => "AmazonLinux", "name" => "amazonLinux"}, {"value" => "EndOfSupportWindowsServer", "name" => "endOfSupportWindowsServer"}, {"value" => "Redhat", "name" => "redhat"}, {"value" => "Other", "name" => "other"}]})
    ServerStatusSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServerStatusSummary", name: "ServerStatusSummary")
    ServerStrategies = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#ServerStrategies", name: "ServerStrategies")
    ServerStrategy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServerStrategy", name: "ServerStrategy")
    ServerSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServerSummary", name: "ServerSummary")
    ServiceLinkedRoleLockClientException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServiceLinkedRoleLockClientException", name: "ServiceLinkedRoleLockClientException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    Severity = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#Severity", name: "Severity", traits: {"smithy.api#enum" => [{"value" => "HIGH", "name" => "HIGH"}, {"value" => "MEDIUM", "name" => "MEDIUM"}, {"value" => "LOW", "name" => "LOW"}]})
    SortOrder = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#SortOrder", name: "SortOrder", traits: {"smithy.api#enum" => [{"value" => "ASC", "name" => "ASC"}, {"value" => "DESC", "name" => "DESC"}]})
    SourceCode = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#SourceCode", name: "SourceCode")
    SourceCodeAnalyzerName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#SourceCodeAnalyzerName", name: "SourceCodeAnalyzerName", traits: {"smithy.api#enum" => [{"value" => "CSHARP_ANALYZER", "name" => "CSHARP_ANALYZER"}, {"value" => "JAVA_ANALYZER", "name" => "JAVA_ANALYZER"}, {"value" => "BYTECODE_ANALYZER", "name" => "BYTECODE_ANALYZER"}, {"value" => "PORTING_ASSISTANT", "name" => "PORTING_ASSISTANT"}]})
    SourceCodeList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#SourceCodeList", name: "SourceCodeList")
    SourceCodeRepositories = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#SourceCodeRepositories", name: "SourceCodeRepositories")
    SourceCodeRepository = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#SourceCodeRepository", name: "SourceCodeRepository")
    SourceVersion = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#SourceVersion", name: "SourceVersion", traits: {"smithy.api#length" => {"min" => 1, "max" => 40}, "smithy.api#pattern" => ".*\\S.*"})
    SrcCodeOrDbAnalysisStatus = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#SrcCodeOrDbAnalysisStatus", name: "SrcCodeOrDbAnalysisStatus", traits: {"smithy.api#enum" => [{"name" => "ANALYSIS_TO_BE_SCHEDULED", "value" => "ANALYSIS_TO_BE_SCHEDULED"}, {"name" => "ANALYSIS_STARTED", "value" => "ANALYSIS_STARTED"}, {"name" => "ANALYSIS_SUCCESS", "value" => "ANALYSIS_SUCCESS"}, {"name" => "ANALYSIS_FAILED", "value" => "ANALYSIS_FAILED"}, {"name" => "ANALYSIS_PARTIAL_SUCCESS", "value" => "ANALYSIS_PARTIAL_SUCCESS"}, {"name" => "UNCONFIGURED", "value" => "UNCONFIGURED"}, {"name" => "CONFIGURED", "value" => "CONFIGURED"}]})
    StartAssessmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StartAssessmentInput", name: "StartAssessmentInput")
    StartAssessmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StartAssessmentOutput", name: "StartAssessmentOutput")
    StartImportFileTaskInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StartImportFileTaskInput", name: "StartImportFileTaskInput")
    StartImportFileTaskOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StartImportFileTaskOutput", name: "StartImportFileTaskOutput")
    StartRecommendationReportGenerationInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StartRecommendationReportGenerationInput", name: "StartRecommendationReportGenerationInput")
    StartRecommendationReportGenerationOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StartRecommendationReportGenerationOutput", name: "StartRecommendationReportGenerationOutput")
    StatusMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#StatusMessage", name: "StatusMessage", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    StopAssessmentInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StopAssessmentInput", name: "StopAssessmentInput")
    StopAssessmentOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StopAssessmentOutput", name: "StopAssessmentOutput")
    Strategy = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#Strategy", name: "Strategy", traits: {"smithy.api#enum" => [{"value" => "Rehost", "name" => "REHOST"}, {"value" => "Retirement", "name" => "RETIREMENT"}, {"value" => "Refactor", "name" => "REFACTOR"}, {"value" => "Replatform", "name" => "REPLATFORM"}, {"value" => "Retain", "name" => "RETAIN"}, {"value" => "Relocate", "name" => "RELOCATE"}, {"value" => "Repurchase", "name" => "REPURCHASE"}]})
    StrategyOption = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StrategyOption", name: "StrategyOption")
    StrategyRecommendation = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#StrategyRecommendation", name: "StrategyRecommendation", traits: {"smithy.api#enum" => [{"name" => "RECOMMENDED", "value" => "recommended"}, {"name" => "VIABLE_OPTION", "value" => "viableOption"}, {"name" => "NOT_RECOMMENDED", "value" => "notRecommended"}, {"name" => "POTENTIAL", "value" => "potential"}]})
    StrategySummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#StrategySummary", name: "StrategySummary")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#String", name: "String", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    SystemInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#SystemInfo", name: "SystemInfo")
    TargetDatabaseEngine = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#TargetDatabaseEngine", name: "TargetDatabaseEngine", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "Amazon Aurora", "name" => "AMAZON_AURORA"}, {"value" => "AWS PostgreSQL", "name" => "AWS_POSTGRESQL"}, {"value" => "MySQL", "name" => "MYSQL"}, {"value" => "Microsoft SQL Server", "name" => "MICROSOFT_SQL_SERVER"}, {"value" => "Oracle Database", "name" => "ORACLE_DATABASE"}, {"value" => "MariaDB", "name" => "MARIA_DB"}, {"value" => "SAP", "name" => "SAP"}, {"value" => "Db2 LUW", "name" => "DB2_LUW"}, {"value" => "MongoDB", "name" => "MONGO_DB"}]})
    TargetDatabaseEngines = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#TargetDatabaseEngines", name: "TargetDatabaseEngines", traits: {"smithy.api#length" => {"min" => 1, "max" => 1}})
    TargetDestination = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#TargetDestination", name: "TargetDestination", traits: {"smithy.api#enum" => [{"value" => "None specified", "name" => "NONE_SPECIFIED"}, {"value" => "AWS Elastic BeanStalk", "name" => "AWS_ELASTIC_BEANSTALK"}, {"value" => "AWS Fargate", "name" => "AWS_FARGATE"}, {"value" => "Amazon Elastic Cloud Compute (EC2)", "name" => "AMAZON_ELASTIC_CLOUD_COMPUTE"}, {"value" => "Amazon Elastic Container Service (ECS)", "name" => "AMAZON_ELASTIC_CONTAINER_SERVICE"}, {"value" => "Amazon Elastic Kubernetes Service (EKS)", "name" => "AMAZON_ELASTIC_KUBERNETES_SERVICE"}, {"value" => "Aurora MySQL", "name" => "AURORA_MYSQL"}, {"value" => "Aurora PostgreSQL", "name" => "AURORA_POSTGRESQL"}, {"value" => "Amazon Relational Database Service on MySQL", "name" => "AMAZON_RDS_MYSQL"}, {"value" => "Amazon Relational Database Service on PostgreSQL", "name" => "AMAZON_RDS_POSTGRESQL"}, {"value" => "Amazon DocumentDB", "name" => "AMAZON_DOCUMENTDB"}, {"value" => "Amazon DynamoDB", "name" => "AMAZON_DYNAMODB"}, {"value" => "Amazon Relational Database Service", "name" => "AMAZON_RDS"}, {"value" => "Babelfish for Aurora PostgreSQL", "name" => "BABELFISH_AURORA_POSTGRESQL"}]})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    TimeStamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.migrationhubstrategy#TimeStamp", name: "TimeStamp")
    TranformationToolDescription = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#TranformationToolDescription", name: "TranformationToolDescription", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    TranformationToolInstallationLink = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#TranformationToolInstallationLink", name: "TranformationToolInstallationLink", traits: {"smithy.api#length" => {"min" => 1, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})
    TransformationTool = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#TransformationTool", name: "TransformationTool")
    TransformationToolName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#TransformationToolName", name: "TransformationToolName", traits: {"smithy.api#enum" => [{"value" => "App2Container", "name" => "APP2CONTAINER"}, {"value" => "Porting Assistant For .NET", "name" => "PORTING_ASSISTANT"}, {"value" => "End of Support Migration", "name" => "EMP"}, {"value" => "Windows Web Application Migration Assistant", "name" => "WWAMA"}, {"value" => "Application Migration Service", "name" => "MGN"}, {"value" => "Strategy Recommendation Support", "name" => "STRATEGY_RECOMMENDATION_SUPPORT"}, {"value" => "In Place Operating System Upgrade", "name" => "IN_PLACE_OS_UPGRADE"}, {"value" => "Schema Conversion Tool", "name" => "SCT"}, {"value" => "Database Migration Service", "name" => "DMS"}, {"value" => "Native SQL Server Backup/Restore", "name" => "NATIVE_SQL"}]})
    UpdateApplicationComponentConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#UpdateApplicationComponentConfigInput", name: "UpdateApplicationComponentConfigInput")
    UpdateApplicationComponentConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#UpdateApplicationComponentConfigOutput", name: "UpdateApplicationComponentConfigOutput")
    UpdateServerConfigInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#UpdateServerConfigInput", name: "UpdateServerConfigInput")
    UpdateServerConfigOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#UpdateServerConfigOutput", name: "UpdateServerConfigOutput")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    VcenterBasedRemoteInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#VcenterBasedRemoteInfo", name: "VcenterBasedRemoteInfo")
    VcenterBasedRemoteInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#VcenterBasedRemoteInfoList", name: "VcenterBasedRemoteInfoList")
    VersionControl = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#VersionControl", name: "VersionControl", traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITHUB_ENTERPRISE", "name" => "GITHUB_ENTERPRISE"}, {"value" => "AZURE_DEVOPS_GIT", "name" => "AZURE_DEVOPS_GIT"}]})
    VersionControlInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.migrationhubstrategy#VersionControlInfo", name: "VersionControlInfo")
    VersionControlInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.migrationhubstrategy#VersionControlInfoList", name: "VersionControlInfoList")
    VersionControlType = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#VersionControlType", name: "VersionControlType", traits: {"smithy.api#enum" => [{"value" => "GITHUB", "name" => "GITHUB"}, {"value" => "GITHUB_ENTERPRISE", "name" => "GITHUB_ENTERPRISE"}, {"value" => "AZURE_DEVOPS_GIT", "name" => "AZURE_DEVOPS_GIT"}]})
    ErrorMessage = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#errorMessage", name: "ErrorMessage")
    ImportS3Bucket = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#importS3Bucket", name: "ImportS3Bucket", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"})
    ImportS3Key = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.migrationhubstrategy#importS3Key", name: "ImportS3Key", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => ".*\\S.*"})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AnalysisStatusUnion.add_member(:runtime_analysis_status, Types::AnalysisStatusUnion::RuntimeAnalysisStatus, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeAnalysisStatus, name: "runtimeAnalysisStatus"))
    AnalysisStatusUnion.add_member(:src_code_or_db_analysis_status, Types::AnalysisStatusUnion::SrcCodeOrDbAnalysisStatus, ::Smithy::Schema::Shapes::MemberShape.new(target: SrcCodeOrDbAnalysisStatus, name: "srcCodeOrDbAnalysisStatus"))
    AnalysisStatusUnion.add_member(:unknown, Types::AnalysisStatusUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalysisStatusUnion.type = Types::AnalysisStatusUnion
    AnalyzableServerSummary.add_member(:hostname, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostname"))
    AnalyzableServerSummary.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipAddress"))
    AnalyzableServerSummary.add_member(:source, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "source"))
    AnalyzableServerSummary.add_member(:vm_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vmId"))
    AnalyzableServerSummary.type = Types::AnalyzableServerSummary
    AnalyzableServerSummaryList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzableServerSummary, name: "member"))
    AnalyzerNameUnion.add_member(:binary_analyzer_name, Types::AnalyzerNameUnion::BinaryAnalyzerName, ::Smithy::Schema::Shapes::MemberShape.new(target: BinaryAnalyzerName, name: "binaryAnalyzerName"))
    AnalyzerNameUnion.add_member(:run_time_analyzer_name, Types::AnalyzerNameUnion::RunTimeAnalyzerName, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimeAnalyzerName, name: "runTimeAnalyzerName"))
    AnalyzerNameUnion.add_member(:source_code_analyzer_name, Types::AnalyzerNameUnion::SourceCodeAnalyzerName, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeAnalyzerName, name: "sourceCodeAnalyzerName"))
    AnalyzerNameUnion.add_member(:unknown, Types::AnalyzerNameUnion::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    AnalyzerNameUnion.type = Types::AnalyzerNameUnion
    AntipatternReportResult.add_member(:analyzer_name, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzerNameUnion, name: "analyzerName"))
    AntipatternReportResult.add_member(:anti_pattern_report_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "antiPatternReportS3Object"))
    AntipatternReportResult.add_member(:antipattern_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternReportStatus, name: "antipatternReportStatus"))
    AntipatternReportResult.add_member(:antipattern_report_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "antipatternReportStatusMessage"))
    AntipatternReportResult.type = Types::AntipatternReportResult
    AntipatternReportResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternReportResult, name: "member"))
    AntipatternSeveritySummary.add_member(:severity, ::Smithy::Schema::Shapes::MemberShape.new(target: Severity, name: "severity"))
    AntipatternSeveritySummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count"))
    AntipatternSeveritySummary.type = Types::AntipatternSeveritySummary
    AppUnitError.add_member(:app_unit_error_category, ::Smithy::Schema::Shapes::MemberShape.new(target: AppUnitErrorCategory, name: "appUnitErrorCategory"))
    AppUnitError.type = Types::AppUnitError
    ApplicationComponentDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    ApplicationComponentDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ApplicationComponentDetail.add_member(:recommendation_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSet, name: "recommendationSet"))
    ApplicationComponentDetail.add_member(:analysis_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SrcCodeOrDbAnalysisStatus, name: "analysisStatus"))
    ApplicationComponentDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    ApplicationComponentDetail.add_member(:list_antipattern_severity_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAntipatternSeveritySummary, name: "listAntipatternSeveritySummary"))
    ApplicationComponentDetail.add_member(:database_config_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseConfigDetail, name: "databaseConfigDetail"))
    ApplicationComponentDetail.add_member(:source_code_repositories, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepositories, name: "sourceCodeRepositories"))
    ApplicationComponentDetail.add_member(:app_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AppType, name: "appType"))
    ApplicationComponentDetail.add_member(:resource_sub_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceSubType, name: "resourceSubType"))
    ApplicationComponentDetail.add_member(:inclusion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InclusionStatus, name: "inclusionStatus"))
    ApplicationComponentDetail.add_member(:antipattern_report_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "antipatternReportS3Object"))
    ApplicationComponentDetail.add_member(:antipattern_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternReportStatus, name: "antipatternReportStatus"))
    ApplicationComponentDetail.add_member(:antipattern_report_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "antipatternReportStatusMessage"))
    ApplicationComponentDetail.add_member(:os_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "osVersion"))
    ApplicationComponentDetail.add_member(:os_driver, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "osDriver"))
    ApplicationComponentDetail.add_member(:last_analyzed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastAnalyzedTimestamp"))
    ApplicationComponentDetail.add_member(:associated_server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerId, name: "associatedServerId"))
    ApplicationComponentDetail.add_member(:more_server_association_exists, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "moreServerAssociationExists"))
    ApplicationComponentDetail.add_member(:runtime_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RuntimeAnalysisStatus, name: "runtimeStatus"))
    ApplicationComponentDetail.add_member(:runtime_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "runtimeStatusMessage"))
    ApplicationComponentDetail.add_member(:app_unit_error, ::Smithy::Schema::Shapes::MemberShape.new(target: AppUnitError, name: "appUnitError"))
    ApplicationComponentDetail.add_member(:result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: ResultList, name: "resultList"))
    ApplicationComponentDetail.type = Types::ApplicationComponentDetail
    ApplicationComponentDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentDetail, name: "member"))
    ApplicationComponentStatusSummary.add_member(:src_code_or_db_analysis_status, ::Smithy::Schema::Shapes::MemberShape.new(target: SrcCodeOrDbAnalysisStatus, name: "srcCodeOrDbAnalysisStatus"))
    ApplicationComponentStatusSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count"))
    ApplicationComponentStatusSummary.type = Types::ApplicationComponentStatusSummary
    ApplicationComponentStrategies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentStrategy, name: "member"))
    ApplicationComponentStrategy.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSet, name: "recommendation"))
    ApplicationComponentStrategy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StrategyRecommendation, name: "status"))
    ApplicationComponentStrategy.add_member(:is_preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isPreferred"))
    ApplicationComponentStrategy.type = Types::ApplicationComponentStrategy
    ApplicationComponentSummary.add_member(:app_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AppType, name: "appType"))
    ApplicationComponentSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count"))
    ApplicationComponentSummary.type = Types::ApplicationComponentSummary
    ApplicationPreferences.add_member(:management_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: ManagementPreference, name: "managementPreference"))
    ApplicationPreferences.type = Types::ApplicationPreferences
    AssessmentSummary.add_member(:list_server_strategy_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStrategySummary, name: "listServerStrategySummary"))
    AssessmentSummary.add_member(:list_application_component_strategy_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStrategySummary, name: "listApplicationComponentStrategySummary"))
    AssessmentSummary.add_member(:list_antipattern_severity_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAntipatternSeveritySummary, name: "listAntipatternSeveritySummary"))
    AssessmentSummary.add_member(:list_application_component_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationComponentSummary, name: "listApplicationComponentSummary"))
    AssessmentSummary.add_member(:list_server_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServerSummary, name: "listServerSummary"))
    AssessmentSummary.add_member(:antipattern_report_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "antipatternReportS3Object"))
    AssessmentSummary.add_member(:antipattern_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternReportStatus, name: "antipatternReportStatus"))
    AssessmentSummary.add_member(:antipattern_report_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "antipatternReportStatusMessage"))
    AssessmentSummary.add_member(:last_analyzed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastAnalyzedTimestamp"))
    AssessmentSummary.add_member(:list_application_component_status_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListApplicationComponentStatusSummary, name: "listApplicationComponentStatusSummary"))
    AssessmentSummary.add_member(:list_server_status_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListServerStatusSummary, name: "listServerStatusSummary"))
    AssessmentSummary.type = Types::AssessmentSummary
    AssessmentTarget.add_member(:condition, ::Smithy::Schema::Shapes::MemberShape.new(target: Condition, name: "condition", traits: {"smithy.api#required" => {}}))
    AssessmentTarget.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#required" => {}}))
    AssessmentTarget.add_member(:values, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentTargetValues, name: "values", traits: {"smithy.api#required" => {}}))
    AssessmentTarget.type = Types::AssessmentTarget
    AssessmentTargetValues.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    AssessmentTargets.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentTarget, name: "member"))
    AssociatedApplication.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name"))
    AssociatedApplication.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    AssociatedApplication.type = Types::AssociatedApplication
    AssociatedApplications.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedApplication, name: "member"))
    AssociatedServerIDs.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    AwsManagedResources.add_member(:target_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsManagedTargetDestinations, name: "targetDestination", traits: {"smithy.api#required" => {}}))
    AwsManagedResources.type = Types::AwsManagedResources
    AwsManagedTargetDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsManagedTargetDestination, name: "member"))
    BusinessGoals.add_member(:speed_of_migration, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessGoalsInteger, name: "speedOfMigration"))
    BusinessGoals.add_member(:reduce_operational_overhead_with_managed_services, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessGoalsInteger, name: "reduceOperationalOverheadWithManagedServices"))
    BusinessGoals.add_member(:modernize_infrastructure_with_cloud_native_technologies, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessGoalsInteger, name: "modernizeInfrastructureWithCloudNativeTechnologies"))
    BusinessGoals.add_member(:license_cost_reduction, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessGoalsInteger, name: "licenseCostReduction"))
    BusinessGoals.type = Types::BusinessGoals
    Collector.add_member(:collector_id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "collectorId"))
    Collector.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipAddress"))
    Collector.add_member(:host_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "hostName"))
    Collector.add_member(:collector_health, ::Smithy::Schema::Shapes::MemberShape.new(target: CollectorHealth, name: "collectorHealth"))
    Collector.add_member(:collector_version, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "collectorVersion"))
    Collector.add_member(:registered_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "registeredTimeStamp"))
    Collector.add_member(:last_activity_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "lastActivityTimeStamp"))
    Collector.add_member(:configuration_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ConfigurationSummary, name: "configurationSummary"))
    Collector.type = Types::Collector
    Collectors.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Collector, name: "member"))
    ConfigurationSummary.add_member(:vcenter_based_remote_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterBasedRemoteInfoList, name: "vcenterBasedRemoteInfoList"))
    ConfigurationSummary.add_member(:ip_address_based_remote_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressBasedRemoteInfoList, name: "ipAddressBasedRemoteInfoList"))
    ConfigurationSummary.add_member(:version_control_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionControlInfoList, name: "versionControlInfoList"))
    ConfigurationSummary.add_member(:pipeline_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineInfoList, name: "pipelineInfoList"))
    ConfigurationSummary.add_member(:remote_source_code_analysis_server_info, ::Smithy::Schema::Shapes::MemberShape.new(target: RemoteSourceCodeAnalysisServerInfo, name: "remoteSourceCodeAnalysisServerInfo"))
    ConfigurationSummary.type = Types::ConfigurationSummary
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    DataCollectionDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatus, name: "status"))
    DataCollectionDetails.add_member(:servers, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "servers"))
    DataCollectionDetails.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "failed"))
    DataCollectionDetails.add_member(:success, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "success"))
    DataCollectionDetails.add_member(:in_progress, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "inProgress"))
    DataCollectionDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    DataCollectionDetails.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "completionTime"))
    DataCollectionDetails.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentStatusMessage, name: "statusMessage"))
    DataCollectionDetails.type = Types::DataCollectionDetails
    DatabaseConfigDetail.add_member(:secret_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "secretName"))
    DatabaseConfigDetail.type = Types::DatabaseConfigDetail
    DatabaseMigrationPreference.add_member(:heterogeneous, Types::DatabaseMigrationPreference::Heterogeneous, ::Smithy::Schema::Shapes::MemberShape.new(target: Heterogeneous, name: "heterogeneous"))
    DatabaseMigrationPreference.add_member(:homogeneous, Types::DatabaseMigrationPreference::Homogeneous, ::Smithy::Schema::Shapes::MemberShape.new(target: Homogeneous, name: "homogeneous"))
    DatabaseMigrationPreference.add_member(:no_preference, Types::DatabaseMigrationPreference::NoPreference, ::Smithy::Schema::Shapes::MemberShape.new(target: NoDatabaseMigrationPreference, name: "noPreference"))
    DatabaseMigrationPreference.add_member(:unknown, Types::DatabaseMigrationPreference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    DatabaseMigrationPreference.type = Types::DatabaseMigrationPreference
    DatabasePreferences.add_member(:database_management_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseManagementPreference, name: "databaseManagementPreference"))
    DatabasePreferences.add_member(:database_migration_preference, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabaseMigrationPreference, name: "databaseMigrationPreference"))
    DatabasePreferences.type = Types::DatabasePreferences
    DependencyException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    DependencyException.type = Types::DependencyException
    GetApplicationComponentDetailsInput.add_member(:application_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentId, name: "applicationComponentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationComponentDetailsInput.type = Types::GetApplicationComponentDetailsInput
    GetApplicationComponentDetailsOutput.add_member(:application_component_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentDetail, name: "applicationComponentDetail"))
    GetApplicationComponentDetailsOutput.add_member(:associated_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedApplications, name: "associatedApplications"))
    GetApplicationComponentDetailsOutput.add_member(:more_application_resource, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "moreApplicationResource"))
    GetApplicationComponentDetailsOutput.add_member(:associated_server_ids, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedServerIDs, name: "associatedServerIds"))
    GetApplicationComponentDetailsOutput.type = Types::GetApplicationComponentDetailsOutput
    GetApplicationComponentStrategiesInput.add_member(:application_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentId, name: "applicationComponentId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetApplicationComponentStrategiesInput.type = Types::GetApplicationComponentStrategiesInput
    GetApplicationComponentStrategiesOutput.add_member(:application_component_strategies, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentStrategies, name: "applicationComponentStrategies"))
    GetApplicationComponentStrategiesOutput.type = Types::GetApplicationComponentStrategiesOutput
    GetAssessmentInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncTaskId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetAssessmentInput.type = Types::GetAssessmentInput
    GetAssessmentOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncTaskId, name: "id"))
    GetAssessmentOutput.add_member(:data_collection_details, ::Smithy::Schema::Shapes::MemberShape.new(target: DataCollectionDetails, name: "dataCollectionDetails"))
    GetAssessmentOutput.add_member(:assessment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentTargets, name: "assessmentTargets"))
    GetAssessmentOutput.type = Types::GetAssessmentOutput
    GetImportFileTaskInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetImportFileTaskInput.type = Types::GetImportFileTaskInput
    GetImportFileTaskOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    GetImportFileTaskOutput.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileTaskStatus, name: "status"))
    GetImportFileTaskOutput.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    GetImportFileTaskOutput.add_member(:input_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Bucket, name: "inputS3Bucket"))
    GetImportFileTaskOutput.add_member(:input_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Key, name: "inputS3Key"))
    GetImportFileTaskOutput.add_member(:status_report_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Bucket, name: "statusReportS3Bucket"))
    GetImportFileTaskOutput.add_member(:status_report_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Key, name: "statusReportS3Key"))
    GetImportFileTaskOutput.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "completionTime"))
    GetImportFileTaskOutput.add_member(:number_of_records_success, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numberOfRecordsSuccess"))
    GetImportFileTaskOutput.add_member(:number_of_records_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numberOfRecordsFailed"))
    GetImportFileTaskOutput.add_member(:import_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "importName"))
    GetImportFileTaskOutput.type = Types::GetImportFileTaskOutput
    GetLatestAssessmentIdInput.type = Types::GetLatestAssessmentIdInput
    GetLatestAssessmentIdOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncTaskId, name: "id"))
    GetLatestAssessmentIdOutput.type = Types::GetLatestAssessmentIdOutput
    GetPortfolioPreferencesInput.type = Types::GetPortfolioPreferencesInput
    GetPortfolioPreferencesOutput.add_member(:prioritize_business_goals, ::Smithy::Schema::Shapes::MemberShape.new(target: PrioritizeBusinessGoals, name: "prioritizeBusinessGoals"))
    GetPortfolioPreferencesOutput.add_member(:application_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPreferences, name: "applicationPreferences"))
    GetPortfolioPreferencesOutput.add_member(:database_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabasePreferences, name: "databasePreferences"))
    GetPortfolioPreferencesOutput.add_member(:application_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMode, name: "applicationMode"))
    GetPortfolioPreferencesOutput.type = Types::GetPortfolioPreferencesOutput
    GetPortfolioSummaryInput.type = Types::GetPortfolioSummaryInput
    GetPortfolioSummaryOutput.add_member(:assessment_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentSummary, name: "assessmentSummary"))
    GetPortfolioSummaryOutput.type = Types::GetPortfolioSummaryOutput
    GetRecommendationReportDetailsInput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTaskId, name: "id", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetRecommendationReportDetailsInput.type = Types::GetRecommendationReportDetailsInput
    GetRecommendationReportDetailsOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTaskId, name: "id"))
    GetRecommendationReportDetailsOutput.add_member(:recommendation_report_details, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationReportDetails, name: "recommendationReportDetails"))
    GetRecommendationReportDetailsOutput.type = Types::GetRecommendationReportDetailsOutput
    GetServerDetailsInput.add_member(:server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerId, name: "serverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServerDetailsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetServerDetailsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResult, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    GetServerDetailsInput.type = Types::GetServerDetailsInput
    GetServerDetailsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    GetServerDetailsOutput.add_member(:server_detail, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerDetail, name: "serverDetail"))
    GetServerDetailsOutput.add_member(:associated_applications, ::Smithy::Schema::Shapes::MemberShape.new(target: AssociatedApplications, name: "associatedApplications"))
    GetServerDetailsOutput.type = Types::GetServerDetailsOutput
    GetServerStrategiesInput.add_member(:server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerId, name: "serverId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    GetServerStrategiesInput.type = Types::GetServerStrategiesInput
    GetServerStrategiesOutput.add_member(:server_strategies, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerStrategies, name: "serverStrategies"))
    GetServerStrategiesOutput.type = Types::GetServerStrategiesOutput
    Group.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupName, name: "name"))
    Group.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "value"))
    Group.type = Types::Group
    GroupIds.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Group, name: "member"))
    Heterogeneous.add_member(:target_database_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: HeterogeneousTargetDatabaseEngines, name: "targetDatabaseEngine", traits: {"smithy.api#required" => {}}))
    Heterogeneous.type = Types::Heterogeneous
    HeterogeneousTargetDatabaseEngines.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HeterogeneousTargetDatabaseEngine, name: "member"))
    Homogeneous.add_member(:target_database_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: HomogeneousTargetDatabaseEngines, name: "targetDatabaseEngine"))
    Homogeneous.type = Types::Homogeneous
    HomogeneousTargetDatabaseEngines.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: HomogeneousTargetDatabaseEngine, name: "member"))
    IPAddressBasedRemoteInfo.add_member(:ip_address_configuration_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "ipAddressConfigurationTimeStamp"))
    IPAddressBasedRemoteInfo.add_member(:auth_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthType, name: "authType"))
    IPAddressBasedRemoteInfo.add_member(:os_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OSType, name: "osType"))
    IPAddressBasedRemoteInfo.type = Types::IPAddressBasedRemoteInfo
    IPAddressBasedRemoteInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddressBasedRemoteInfo, name: "member"))
    ImportFileTaskInformation.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    ImportFileTaskInformation.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileTaskStatus, name: "status"))
    ImportFileTaskInformation.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "startTime"))
    ImportFileTaskInformation.add_member(:input_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Bucket, name: "inputS3Bucket"))
    ImportFileTaskInformation.add_member(:input_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Key, name: "inputS3Key"))
    ImportFileTaskInformation.add_member(:status_report_s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Bucket, name: "statusReportS3Bucket"))
    ImportFileTaskInformation.add_member(:status_report_s3_key, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Key, name: "statusReportS3Key"))
    ImportFileTaskInformation.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "completionTime"))
    ImportFileTaskInformation.add_member(:number_of_records_success, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numberOfRecordsSuccess"))
    ImportFileTaskInformation.add_member(:number_of_records_failed, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numberOfRecordsFailed"))
    ImportFileTaskInformation.add_member(:import_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "importName"))
    ImportFileTaskInformation.type = Types::ImportFileTaskInformation
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    InternalServerException.type = Types::InternalServerException
    ListAnalyzableServersRequest.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sort"))
    ListAnalyzableServersRequest.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAnalyzableServersRequest.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResult, name: "maxResults"))
    ListAnalyzableServersRequest.type = Types::ListAnalyzableServersRequest
    ListAnalyzableServersResponse.add_member(:analyzable_servers, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalyzableServerSummaryList, name: "analyzableServers"))
    ListAnalyzableServersResponse.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListAnalyzableServersResponse.type = Types::ListAnalyzableServersResponse
    ListAntipatternSeveritySummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternSeveritySummary, name: "member"))
    ListApplicationComponentStatusSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentStatusSummary, name: "member"))
    ListApplicationComponentSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentSummary, name: "member"))
    ListApplicationComponentsInput.add_member(:application_component_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentCriteria, name: "applicationComponentCriteria"))
    ListApplicationComponentsInput.add_member(:filter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "filterValue", traits: {"smithy.api#length" => {"max" => 256}}))
    ListApplicationComponentsInput.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sort"))
    ListApplicationComponentsInput.add_member(:group_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIds, name: "groupIdFilter"))
    ListApplicationComponentsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationComponentsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResult, name: "maxResults"))
    ListApplicationComponentsInput.type = Types::ListApplicationComponentsInput
    ListApplicationComponentsOutput.add_member(:application_component_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentDetails, name: "applicationComponentInfos"))
    ListApplicationComponentsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListApplicationComponentsOutput.type = Types::ListApplicationComponentsOutput
    ListCollectorsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListCollectorsInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResult, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListCollectorsInput.type = Types::ListCollectorsInput
    ListCollectorsOutput.add_member(:collectors, ::Smithy::Schema::Shapes::MemberShape.new(target: Collectors, name: "Collectors"))
    ListCollectorsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListCollectorsOutput.type = Types::ListCollectorsOutput
    ListImportFileTaskInformation.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportFileTaskInformation, name: "member"))
    ListImportFileTaskInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    ListImportFileTaskInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "maxResults", traits: {"smithy.api#httpQuery" => "maxResults"}))
    ListImportFileTaskInput.type = Types::ListImportFileTaskInput
    ListImportFileTaskOutput.add_member(:task_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: ListImportFileTaskInformation, name: "taskInfos"))
    ListImportFileTaskOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "nextToken"))
    ListImportFileTaskOutput.type = Types::ListImportFileTaskOutput
    ListServerStatusSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerStatusSummary, name: "member"))
    ListServerSummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerSummary, name: "member"))
    ListServersInput.add_member(:server_criteria, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerCriteria, name: "serverCriteria"))
    ListServersInput.add_member(:filter_value, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "filterValue"))
    ListServersInput.add_member(:sort, ::Smithy::Schema::Shapes::MemberShape.new(target: SortOrder, name: "sort"))
    ListServersInput.add_member(:group_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIds, name: "groupIdFilter"))
    ListServersInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServersInput.add_member(:max_results, ::Smithy::Schema::Shapes::MemberShape.new(target: MaxResult, name: "maxResults"))
    ListServersInput.type = Types::ListServersInput
    ListServersOutput.add_member(:server_infos, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerDetails, name: "serverInfos"))
    ListServersOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: NextToken, name: "nextToken"))
    ListServersOutput.type = Types::ListServersOutput
    ListStrategySummary.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: StrategySummary, name: "member"))
    ManagementPreference.add_member(:aws_managed_resources, Types::ManagementPreference::AwsManagedResources, ::Smithy::Schema::Shapes::MemberShape.new(target: AwsManagedResources, name: "awsManagedResources"))
    ManagementPreference.add_member(:self_manage_resources, Types::ManagementPreference::SelfManageResources, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManageResources, name: "selfManageResources"))
    ManagementPreference.add_member(:no_preference, Types::ManagementPreference::NoPreference, ::Smithy::Schema::Shapes::MemberShape.new(target: NoManagementPreference, name: "noPreference"))
    ManagementPreference.add_member(:unknown, Types::ManagementPreference::Unknown, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit))
    ManagementPreference.type = Types::ManagementPreference
    NetworkInfo.add_member(:interface_name, ::Smithy::Schema::Shapes::MemberShape.new(target: InterfaceName, name: "interfaceName", traits: {"smithy.api#required" => {}}))
    NetworkInfo.add_member(:ip_address, ::Smithy::Schema::Shapes::MemberShape.new(target: IPAddress, name: "ipAddress", traits: {"smithy.api#required" => {}}))
    NetworkInfo.add_member(:mac_address, ::Smithy::Schema::Shapes::MemberShape.new(target: MacAddress, name: "macAddress", traits: {"smithy.api#required" => {}}))
    NetworkInfo.add_member(:net_mask, ::Smithy::Schema::Shapes::MemberShape.new(target: NetMask, name: "netMask", traits: {"smithy.api#required" => {}}))
    NetworkInfo.type = Types::NetworkInfo
    NetworkInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInfo, name: "member"))
    NoDatabaseMigrationPreference.add_member(:target_database_engine, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDatabaseEngines, name: "targetDatabaseEngine", traits: {"smithy.api#required" => {}}))
    NoDatabaseMigrationPreference.type = Types::NoDatabaseMigrationPreference
    NoManagementPreference.add_member(:target_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: NoPreferenceTargetDestinations, name: "targetDestination", traits: {"smithy.api#required" => {}}))
    NoManagementPreference.type = Types::NoManagementPreference
    NoPreferenceTargetDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: NoPreferenceTargetDestination, name: "member"))
    OSInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: OSType, name: "type"))
    OSInfo.add_member(:version, ::Smithy::Schema::Shapes::MemberShape.new(target: OSVersion, name: "version"))
    OSInfo.type = Types::OSInfo
    PipelineInfo.add_member(:pipeline_type, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineType, name: "pipelineType"))
    PipelineInfo.add_member(:pipeline_configuration_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "pipelineConfigurationTimeStamp"))
    PipelineInfo.type = Types::PipelineInfo
    PipelineInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PipelineInfo, name: "member"))
    PrioritizeBusinessGoals.add_member(:business_goals, ::Smithy::Schema::Shapes::MemberShape.new(target: BusinessGoals, name: "businessGoals"))
    PrioritizeBusinessGoals.type = Types::PrioritizeBusinessGoals
    PutPortfolioPreferencesInput.add_member(:prioritize_business_goals, ::Smithy::Schema::Shapes::MemberShape.new(target: PrioritizeBusinessGoals, name: "prioritizeBusinessGoals"))
    PutPortfolioPreferencesInput.add_member(:application_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationPreferences, name: "applicationPreferences"))
    PutPortfolioPreferencesInput.add_member(:database_preferences, ::Smithy::Schema::Shapes::MemberShape.new(target: DatabasePreferences, name: "databasePreferences"))
    PutPortfolioPreferencesInput.add_member(:application_mode, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationMode, name: "applicationMode"))
    PutPortfolioPreferencesInput.type = Types::PutPortfolioPreferencesInput
    PutPortfolioPreferencesOutput.type = Types::PutPortfolioPreferencesOutput
    RecommendationReportDetails.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationReportStatus, name: "status"))
    RecommendationReportDetails.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationReportStatusMessage, name: "statusMessage"))
    RecommendationReportDetails.add_member(:start_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationReportTimeStamp, name: "startTime"))
    RecommendationReportDetails.add_member(:completion_time, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationReportTimeStamp, name: "completionTime"))
    RecommendationReportDetails.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3Bucket"))
    RecommendationReportDetails.add_member(:s3_keys, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Keys, name: "s3Keys"))
    RecommendationReportDetails.type = Types::RecommendationReportDetails
    RecommendationSet.add_member(:transformation_tool, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationTool, name: "transformationTool"))
    RecommendationSet.add_member(:target_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDestination, name: "targetDestination"))
    RecommendationSet.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: Strategy, name: "strategy"))
    RecommendationSet.type = Types::RecommendationSet
    RemoteSourceCodeAnalysisServerInfo.add_member(:remote_source_code_analysis_server_configuration_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "remoteSourceCodeAnalysisServerConfigurationTimestamp"))
    RemoteSourceCodeAnalysisServerInfo.type = Types::RemoteSourceCodeAnalysisServerInfo
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    Result.add_member(:analysis_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisType, name: "analysisType"))
    Result.add_member(:analysis_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AnalysisStatusUnion, name: "analysisStatus"))
    Result.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    Result.add_member(:antipattern_report_result_list, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternReportResultList, name: "antipatternReportResultList"))
    Result.type = Types::Result
    ResultList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Result, name: "member"))
    S3Keys.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "member"))
    S3Object.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Bucket, name: "s3Bucket"))
    S3Object.add_member(:s3key, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Key, name: "s3key"))
    S3Object.type = Types::S3Object
    SelfManageResources.add_member(:target_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManageTargetDestinations, name: "targetDestination", traits: {"smithy.api#required" => {}}))
    SelfManageResources.type = Types::SelfManageResources
    SelfManageTargetDestinations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SelfManageTargetDestination, name: "member"))
    ServerDetail.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceId, name: "id"))
    ServerDetail.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: ResourceName, name: "name"))
    ServerDetail.add_member(:recommendation_set, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSet, name: "recommendationSet"))
    ServerDetail.add_member(:data_collection_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimeAssessmentStatus, name: "dataCollectionStatus"))
    ServerDetail.add_member(:status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "statusMessage"))
    ServerDetail.add_member(:list_antipattern_severity_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListAntipatternSeveritySummary, name: "listAntipatternSeveritySummary"))
    ServerDetail.add_member(:system_info, ::Smithy::Schema::Shapes::MemberShape.new(target: SystemInfo, name: "systemInfo"))
    ServerDetail.add_member(:application_component_strategy_summary, ::Smithy::Schema::Shapes::MemberShape.new(target: ListStrategySummary, name: "applicationComponentStrategySummary"))
    ServerDetail.add_member(:antipattern_report_s3_object, ::Smithy::Schema::Shapes::MemberShape.new(target: S3Object, name: "antipatternReportS3Object"))
    ServerDetail.add_member(:antipattern_report_status, ::Smithy::Schema::Shapes::MemberShape.new(target: AntipatternReportStatus, name: "antipatternReportStatus"))
    ServerDetail.add_member(:antipattern_report_status_message, ::Smithy::Schema::Shapes::MemberShape.new(target: StatusMessage, name: "antipatternReportStatusMessage"))
    ServerDetail.add_member(:server_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "serverType"))
    ServerDetail.add_member(:last_analyzed_timestamp, ::Smithy::Schema::Shapes::MemberShape.new(target: TimeStamp, name: "lastAnalyzedTimestamp"))
    ServerDetail.add_member(:server_error, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerError, name: "serverError"))
    ServerDetail.type = Types::ServerDetail
    ServerDetails.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerDetail, name: "member"))
    ServerError.add_member(:server_error_category, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerErrorCategory, name: "serverErrorCategory"))
    ServerError.type = Types::ServerError
    ServerStatusSummary.add_member(:run_time_assessment_status, ::Smithy::Schema::Shapes::MemberShape.new(target: RunTimeAssessmentStatus, name: "runTimeAssessmentStatus"))
    ServerStatusSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count"))
    ServerStatusSummary.type = Types::ServerStatusSummary
    ServerStrategies.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerStrategy, name: "member"))
    ServerStrategy.add_member(:recommendation, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationSet, name: "recommendation"))
    ServerStrategy.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: StrategyRecommendation, name: "status"))
    ServerStrategy.add_member(:number_of_application_components, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "numberOfApplicationComponents"))
    ServerStrategy.add_member(:is_preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isPreferred"))
    ServerStrategy.type = Types::ServerStrategy
    ServerSummary.add_member(:server_os_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerOsType, name: "ServerOsType"))
    ServerSummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count"))
    ServerSummary.type = Types::ServerSummary
    ServiceLinkedRoleLockClientException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ServiceLinkedRoleLockClientException.type = Types::ServiceLinkedRoleLockClientException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SourceCode.add_member(:version_control, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionControl, name: "versionControl"))
    SourceCode.add_member(:source_version, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceVersion, name: "sourceVersion"))
    SourceCode.add_member(:location, ::Smithy::Schema::Shapes::MemberShape.new(target: Location, name: "location"))
    SourceCode.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: ProjectName, name: "projectName"))
    SourceCode.type = Types::SourceCode
    SourceCodeList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCode, name: "member"))
    SourceCodeRepositories.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeRepository, name: "member"))
    SourceCodeRepository.add_member(:repository, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "repository"))
    SourceCodeRepository.add_member(:branch, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "branch"))
    SourceCodeRepository.add_member(:version_control_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "versionControlType"))
    SourceCodeRepository.add_member(:project_name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "projectName"))
    SourceCodeRepository.type = Types::SourceCodeRepository
    StartAssessmentInput.add_member(:s3bucket_for_analysis_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3bucketForAnalysisData", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"}))
    StartAssessmentInput.add_member(:s3bucket_for_report_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3bucketForReportData", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"}))
    StartAssessmentInput.add_member(:assessment_targets, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentTargets, name: "assessmentTargets"))
    StartAssessmentInput.add_member(:assessment_data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AssessmentDataSourceType, name: "assessmentDataSourceType"))
    StartAssessmentInput.type = Types::StartAssessmentInput
    StartAssessmentOutput.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncTaskId, name: "assessmentId"))
    StartAssessmentOutput.type = Types::StartAssessmentOutput
    StartImportFileTaskInput.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "name", traits: {"smithy.api#length" => {"min" => 1, "max" => 50}, "smithy.api#pattern" => "[a-zA-Z0-9_-]+", "smithy.api#required" => {}}))
    StartImportFileTaskInput.add_member(:s3_bucket, ::Smithy::Schema::Shapes::MemberShape.new(target: ImportS3Bucket, name: "S3Bucket", traits: {"smithy.api#required" => {}}))
    StartImportFileTaskInput.add_member(:s3key, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3key", traits: {"smithy.api#required" => {}}))
    StartImportFileTaskInput.add_member(:data_source_type, ::Smithy::Schema::Shapes::MemberShape.new(target: DataSourceType, name: "dataSourceType"))
    StartImportFileTaskInput.add_member(:group_id, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIds, name: "groupId"))
    StartImportFileTaskInput.add_member(:s3bucket_for_report_data, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "s3bucketForReportData", traits: {"smithy.api#length" => {"min" => 0, "max" => 63}, "smithy.api#pattern" => "[0-9a-z]+[0-9a-z\\.\\-]*[0-9a-z]+"}))
    StartImportFileTaskInput.type = Types::StartImportFileTaskInput
    StartImportFileTaskOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "id"))
    StartImportFileTaskOutput.type = Types::StartImportFileTaskOutput
    StartRecommendationReportGenerationInput.add_member(:output_format, ::Smithy::Schema::Shapes::MemberShape.new(target: OutputFormat, name: "outputFormat"))
    StartRecommendationReportGenerationInput.add_member(:group_id_filter, ::Smithy::Schema::Shapes::MemberShape.new(target: GroupIds, name: "groupIdFilter"))
    StartRecommendationReportGenerationInput.type = Types::StartRecommendationReportGenerationInput
    StartRecommendationReportGenerationOutput.add_member(:id, ::Smithy::Schema::Shapes::MemberShape.new(target: RecommendationTaskId, name: "id"))
    StartRecommendationReportGenerationOutput.type = Types::StartRecommendationReportGenerationOutput
    StopAssessmentInput.add_member(:assessment_id, ::Smithy::Schema::Shapes::MemberShape.new(target: AsyncTaskId, name: "assessmentId", traits: {"smithy.api#required" => {}}))
    StopAssessmentInput.type = Types::StopAssessmentInput
    StopAssessmentOutput.type = Types::StopAssessmentOutput
    StrategyOption.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: Strategy, name: "strategy"))
    StrategyOption.add_member(:tool_name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationToolName, name: "toolName"))
    StrategyOption.add_member(:target_destination, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDestination, name: "targetDestination"))
    StrategyOption.add_member(:is_preferred, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "isPreferred"))
    StrategyOption.type = Types::StrategyOption
    StrategySummary.add_member(:strategy, ::Smithy::Schema::Shapes::MemberShape.new(target: Strategy, name: "strategy"))
    StrategySummary.add_member(:count, ::Smithy::Schema::Shapes::MemberShape.new(target: Integer, name: "count"))
    StrategySummary.type = Types::StrategySummary
    SystemInfo.add_member(:os_info, ::Smithy::Schema::Shapes::MemberShape.new(target: OSInfo, name: "osInfo"))
    SystemInfo.add_member(:file_system_type, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "fileSystemType"))
    SystemInfo.add_member(:network_info_list, ::Smithy::Schema::Shapes::MemberShape.new(target: NetworkInfoList, name: "networkInfoList"))
    SystemInfo.add_member(:cpu_architecture, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "cpuArchitecture"))
    SystemInfo.type = Types::SystemInfo
    TargetDatabaseEngines.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: TargetDatabaseEngine, name: "member"))
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ThrottlingException.type = Types::ThrottlingException
    TransformationTool.add_member(:name, ::Smithy::Schema::Shapes::MemberShape.new(target: TransformationToolName, name: "name"))
    TransformationTool.add_member(:description, ::Smithy::Schema::Shapes::MemberShape.new(target: TranformationToolDescription, name: "description"))
    TransformationTool.add_member(:tranformation_tool_installation_link, ::Smithy::Schema::Shapes::MemberShape.new(target: TranformationToolInstallationLink, name: "tranformationToolInstallationLink"))
    TransformationTool.type = Types::TransformationTool
    UpdateApplicationComponentConfigInput.add_member(:application_component_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ApplicationComponentId, name: "applicationComponentId", traits: {"smithy.api#required" => {}}))
    UpdateApplicationComponentConfigInput.add_member(:inclusion_status, ::Smithy::Schema::Shapes::MemberShape.new(target: InclusionStatus, name: "inclusionStatus"))
    UpdateApplicationComponentConfigInput.add_member(:strategy_option, ::Smithy::Schema::Shapes::MemberShape.new(target: StrategyOption, name: "strategyOption"))
    UpdateApplicationComponentConfigInput.add_member(:source_code_list, ::Smithy::Schema::Shapes::MemberShape.new(target: SourceCodeList, name: "sourceCodeList"))
    UpdateApplicationComponentConfigInput.add_member(:secrets_manager_key, ::Smithy::Schema::Shapes::MemberShape.new(target: SecretsManagerKey, name: "secretsManagerKey"))
    UpdateApplicationComponentConfigInput.add_member(:configure_only, ::Smithy::Schema::Shapes::MemberShape.new(target: Boolean, name: "configureOnly"))
    UpdateApplicationComponentConfigInput.add_member(:app_type, ::Smithy::Schema::Shapes::MemberShape.new(target: AppType, name: "appType"))
    UpdateApplicationComponentConfigInput.type = Types::UpdateApplicationComponentConfigInput
    UpdateApplicationComponentConfigOutput.type = Types::UpdateApplicationComponentConfigOutput
    UpdateServerConfigInput.add_member(:server_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ServerId, name: "serverId", traits: {"smithy.api#required" => {}}))
    UpdateServerConfigInput.add_member(:strategy_option, ::Smithy::Schema::Shapes::MemberShape.new(target: StrategyOption, name: "strategyOption"))
    UpdateServerConfigInput.type = Types::UpdateServerConfigInput
    UpdateServerConfigOutput.type = Types::UpdateServerConfigOutput
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ErrorMessage, name: "message"))
    ValidationException.type = Types::ValidationException
    VcenterBasedRemoteInfo.add_member(:vcenter_configuration_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "vcenterConfigurationTimeStamp"))
    VcenterBasedRemoteInfo.add_member(:os_type, ::Smithy::Schema::Shapes::MemberShape.new(target: OSType, name: "osType"))
    VcenterBasedRemoteInfo.type = Types::VcenterBasedRemoteInfo
    VcenterBasedRemoteInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VcenterBasedRemoteInfo, name: "member"))
    VersionControlInfo.add_member(:version_control_type, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionControlType, name: "versionControlType"))
    VersionControlInfo.add_member(:version_control_configuration_time_stamp, ::Smithy::Schema::Shapes::MemberShape.new(target: String, name: "versionControlConfigurationTimeStamp"))
    VersionControlInfo.type = Types::VersionControlInfo
    VersionControlInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: VersionControlInfo, name: "member"))

    AWSMigrationHubStrategyRecommendation = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.migrationhubstrategy#AWSMigrationHubStrategyRecommendation"
      service.name = "AWSMigrationHubStrategyRecommendation"
      service.version = "2020-02-19"
      service.traits = {"aws.api#service" => {"sdkId" => "MigrationHubStrategy", "endpointPrefix" => "migrationhub-strategy", "cloudTrailEventSource" => "migrationhub-strategy.amazonaws.com"}, "aws.auth#sigv4" => {"name" => "migrationhub-strategy"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Migration Hub Strategy Recommendations"}
      service.add_operation(:get_application_component_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetApplicationComponentDetails"
        operation.name = "GetApplicationComponentDetails"
        operation.input = GetApplicationComponentDetailsInput
        operation.output = GetApplicationComponentDetailsOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-applicationcomponent-details/{applicationComponentId}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_application_component_strategies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetApplicationComponentStrategies"
        operation.name = "GetApplicationComponentStrategies"
        operation.input = GetApplicationComponentStrategiesInput
        operation.output = GetApplicationComponentStrategiesOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/get-applicationcomponent-strategies/{applicationComponentId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetAssessment"
        operation.name = "GetAssessment"
        operation.input = GetAssessmentInput
        operation.output = GetAssessmentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-assessment/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_import_file_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetImportFileTask"
        operation.name = "GetImportFileTask"
        operation.input = GetImportFileTaskInput
        operation.output = GetImportFileTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-import-file-task/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_latest_assessment_id, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetLatestAssessmentId"
        operation.name = "GetLatestAssessmentId"
        operation.input = GetLatestAssessmentIdInput
        operation.output = GetLatestAssessmentIdOutput
        operation.errors << AccessDeniedException
        operation.errors << DependencyException
        operation.errors << InternalServerException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-latest-assessment-id", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portfolio_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetPortfolioPreferences"
        operation.name = "GetPortfolioPreferences"
        operation.input = GetPortfolioPreferencesInput
        operation.output = GetPortfolioPreferencesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-portfolio-preferences", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_portfolio_summary, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetPortfolioSummary"
        operation.name = "GetPortfolioSummary"
        operation.input = GetPortfolioSummaryInput
        operation.output = GetPortfolioSummaryOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-portfolio-summary", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_recommendation_report_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetRecommendationReportDetails"
        operation.name = "GetRecommendationReportDetails"
        operation.input = GetRecommendationReportDetailsInput
        operation.output = GetRecommendationReportDetailsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-recommendation-report-details/{id}", "code" => 200}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:get_server_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetServerDetails"
        operation.name = "GetServerDetails"
        operation.input = GetServerDetailsInput
        operation.output = GetServerDetailsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/get-server-details/{serverId}", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::GetServerDetails.new
      end)
      service.add_operation(:get_server_strategies, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#GetServerStrategies"
        operation.name = "GetServerStrategies"
        operation.input = GetServerStrategiesInput
        operation.output = GetServerStrategiesOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "GET", "uri" => "/get-server-strategies/{serverId}"}, "smithy.api#readonly" => {}}
      end)
      service.add_operation(:list_analyzable_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListAnalyzableServers"
        operation.name = "ListAnalyzableServers"
        operation.input = ListAnalyzableServersRequest
        operation.output = ListAnalyzableServersResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-analyzable-servers", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListAnalyzableServers.new
      end)
      service.add_operation(:list_application_components, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListApplicationComponents"
        operation.name = "ListApplicationComponents"
        operation.input = ListApplicationComponentsInput
        operation.output = ListApplicationComponentsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceLinkedRoleLockClientException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-applicationcomponents", "code" => 200}}
        operation[:paginator] = Paginators::ListApplicationComponents.new
      end)
      service.add_operation(:list_collectors, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListCollectors"
        operation.name = "ListCollectors"
        operation.input = ListCollectorsInput
        operation.output = ListCollectorsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-collectors", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListCollectors.new
      end)
      service.add_operation(:list_import_file_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListImportFileTask"
        operation.name = "ListImportFileTask"
        operation.input = ListImportFileTaskInput
        operation.output = ListImportFileTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/list-import-file-task", "code" => 200}, "smithy.api#readonly" => {}}
        operation[:paginator] = Paginators::ListImportFileTask.new
      end)
      service.add_operation(:list_servers, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#ListServers"
        operation.name = "ListServers"
        operation.input = ListServersInput
        operation.output = ListServersOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/list-servers", "code" => 200}}
        operation[:paginator] = Paginators::ListServers.new
      end)
      service.add_operation(:put_portfolio_preferences, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#PutPortfolioPreferences"
        operation.name = "PutPortfolioPreferences"
        operation.input = PutPortfolioPreferencesInput
        operation.output = PutPortfolioPreferencesOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/put-portfolio-preferences", "code" => 200}}
      end)
      service.add_operation(:start_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StartAssessment"
        operation.name = "StartAssessment"
        operation.input = StartAssessmentInput
        operation.output = StartAssessmentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-assessment", "code" => 200}}
      end)
      service.add_operation(:start_import_file_task, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StartImportFileTask"
        operation.name = "StartImportFileTask"
        operation.input = StartImportFileTaskInput
        operation.output = StartImportFileTaskOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-import-file-task", "code" => 200}}
      end)
      service.add_operation(:start_recommendation_report_generation, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StartRecommendationReportGeneration"
        operation.name = "StartRecommendationReportGeneration"
        operation.input = StartRecommendationReportGenerationInput
        operation.output = StartRecommendationReportGenerationOutput
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/start-recommendation-report-generation", "code" => 200}}
      end)
      service.add_operation(:stop_assessment, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#StopAssessment"
        operation.name = "StopAssessment"
        operation.input = StopAssessmentInput
        operation.output = StopAssessmentOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/stop-assessment", "code" => 200}}
      end)
      service.add_operation(:update_application_component_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#UpdateApplicationComponentConfig"
        operation.name = "UpdateApplicationComponentConfig"
        operation.input = UpdateApplicationComponentConfigInput
        operation.output = UpdateApplicationComponentConfigOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-applicationcomponent-config/"}}
      end)
      service.add_operation(:update_server_config, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.migrationhubstrategy#UpdateServerConfig"
        operation.name = "UpdateServerConfig"
        operation.input = UpdateServerConfigInput
        operation.output = UpdateServerConfigOutput
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/update-server-config/"}}
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
