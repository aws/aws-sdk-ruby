# frozen_string_literal: true

# This is generated code!

module Aws::MigrationHubStrategy
  # This module contains the types returned by client operations.
  module Types

    # <p> The user does not have permission to perform the action. Check the
    #       AWS Identity and Access Management (IAM) policy associated with this user.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>A combination of existing analysis statuses.</p>
    # @!attribute runtime_analysis_status
    #   <p>The status of the analysis.</p>
    #   @return [String]
    # @!attribute src_code_or_db_analysis_status
    #   <p>The status of the source code or database analysis.</p>
    #   @return [String]
    class AnalysisStatusUnion < Struct.new(
      :runtime_analysis_status,
      :src_code_or_db_analysis_status,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class RuntimeAnalysisStatus < AnalysisStatusUnion; end
      class SrcCodeOrDbAnalysisStatus < AnalysisStatusUnion; end
      class Unknown < AnalysisStatusUnion; end
    end

    # Summary information about an analyzable server.
    # @!attribute hostname
    #   The host name of the analyzable server.
    #   @return [String]
    # @!attribute ip_address
    #   The ip address of the analyzable server.
    #   @return [String]
    # @!attribute source
    #   The data source of the analyzable server.
    #   @return [String]
    # @!attribute vm_id
    #   The virtual machine id of the analyzable server.
    #   @return [String]
    class AnalyzableServerSummary < Struct.new(
      :hostname,
      :ip_address,
      :source,
      :vm_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The combination of the existing analyzers.</p>
    # @!attribute binary_analyzer_name
    #   <p>The binary analyzer names.</p>
    #   @return [String]
    # @!attribute run_time_analyzer_name
    #   <p>The assessment analyzer names.</p>
    #   @return [String]
    # @!attribute source_code_analyzer_name
    #   <p>The source code analyzer names.</p>
    #   @return [String]
    class AnalyzerNameUnion < Struct.new(
      :binary_analyzer_name,
      :run_time_analyzer_name,
      :source_code_analyzer_name,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class BinaryAnalyzerName < AnalyzerNameUnion; end
      class RunTimeAnalyzerName < AnalyzerNameUnion; end
      class SourceCodeAnalyzerName < AnalyzerNameUnion; end
      class Unknown < AnalyzerNameUnion; end
    end

    # <p>The anti-pattern report result.</p>
    # @!attribute analyzer_name
    #   <p>The analyzer name.</p>
    #   @return [Types::AnalyzerNameUnion]
    # @!attribute anti_pattern_report_s3_object
    #   <p> Contains the S3 bucket name and the Amazon S3 key name. </p>
    #   @return [Types::S3Object]
    # @!attribute antipattern_report_status
    #   <p>The status of the anti-pattern report generation.</p>
    #   @return [String]
    # @!attribute antipattern_report_status_message
    #   <p>The status message for the anti-pattern.</p>
    #   @return [String]
    class AntipatternReportResult < Struct.new(
      :analyzer_name,
      :anti_pattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains the summary of anti-patterns and their severity. </p>
    # @!attribute severity
    #   <p> Contains the severity of anti-patterns. </p>
    #   @return [String]
    # @!attribute count
    #   <p> Contains the count of anti-patterns. </p>
    #   @return [Integer]
    class AntipatternSeveritySummary < Struct.new(
      :severity,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Error in the analysis of the application unit.</p>
    # @!attribute app_unit_error_category
    #   <p>The category of the error.</p>
    #   @return [String]
    class AppUnitError < Struct.new(
      :app_unit_error_category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains detailed information about an application component. </p>
    # @!attribute id
    #   <p> The ID of the application component. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of application component. </p>
    #   @return [String]
    # @!attribute recommendation_set
    #   <p> The top recommendation set for the application component. </p>
    #   @return [Types::RecommendationSet]
    # @!attribute analysis_status
    #   <p> The status of analysis, if the application component has source code or an associated
    #         database. </p>
    #   @return [String]
    # @!attribute status_message
    #   <p> A detailed description of the analysis status and any failure message. </p>
    #   @return [String]
    # @!attribute list_antipattern_severity_summary
    #   <p> A list of anti-pattern severity summaries. </p>
    #   @return [Array<Types::AntipatternSeveritySummary>]
    # @!attribute database_config_detail
    #   <p> Configuration details for the database associated with the application component. </p>
    #   @return [Types::DatabaseConfigDetail]
    # @!attribute source_code_repositories
    #   <p> Details about the source code repository associated with the application component.
    #       </p>
    #   @return [Array<Types::SourceCodeRepository>]
    # @!attribute app_type
    #   <p> The type of application component. </p>
    #   @return [String]
    # @!attribute resource_sub_type
    #   <p> The application component subtype.</p>
    #   @return [String]
    # @!attribute inclusion_status
    #   <p> Indicates whether the application component has been included for server recommendation
    #         or not. </p>
    #   @return [String]
    # @!attribute antipattern_report_s3_object
    #   <p> The S3 bucket name and the Amazon S3 key name for the anti-pattern report. </p>
    #   @return [Types::S3Object]
    # @!attribute antipattern_report_status
    #   <p> The status of the anti-pattern report generation.</p>
    #   @return [String]
    # @!attribute antipattern_report_status_message
    #   <p> The status message for the anti-pattern. </p>
    #   @return [String]
    # @!attribute os_version
    #   <p> OS version. </p>
    #   @return [String]
    # @!attribute os_driver
    #   <p> OS driver. </p>
    #   @return [String]
    # @!attribute last_analyzed_timestamp
    #   <p> The timestamp of when the application component was assessed. </p>
    #   @return [Time]
    # @!attribute associated_server_id
    #   <p> The ID of the server that the application component is running on. </p>
    #   @return [String]
    # @!attribute more_server_association_exists
    #   <p> Set to true if the application component is running on multiple servers.</p>
    #   @return [Boolean]
    # @!attribute runtime_status
    #   <p>The status of the application unit.</p>
    #   @return [String]
    # @!attribute runtime_status_message
    #   <p>The status message for the application unit.</p>
    #   @return [String]
    # @!attribute app_unit_error
    #   <p>The error in the analysis of the source code or database.</p>
    #   @return [Types::AppUnitError]
    # @!attribute result_list
    #   <p>A list of the analysis results.</p>
    #   @return [Array<Types::Result>]
    class ApplicationComponentDetail < Struct.new(
      :id,
      :name,
      :recommendation_set,
      :analysis_status,
      :status_message,
      :list_antipattern_severity_summary,
      :database_config_detail,
      :source_code_repositories,
      :app_type,
      :resource_sub_type,
      :inclusion_status,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :os_version,
      :os_driver,
      :last_analyzed_timestamp,
      :associated_server_id,
      :more_server_association_exists,
      :runtime_status,
      :runtime_status_message,
      :app_unit_error,
      :result_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of the analysis status of the application component.</p>
    # @!attribute src_code_or_db_analysis_status
    #   <p>The status of database analysis.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of application components successfully analyzed, partially successful or failed
    #         analysis.</p>
    #   @return [Integer]
    class ApplicationComponentStatusSummary < Struct.new(
      :src_code_or_db_analysis_status,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains information about a strategy recommendation for an application component.
    #     </p>
    # @!attribute recommendation
    #   <p> Strategy recommendation for the application component. </p>
    #   @return [Types::RecommendationSet]
    # @!attribute status
    #   <p> The recommendation status of a strategy for an application component. </p>
    #   @return [String]
    # @!attribute is_preferred
    #   <p> Set to true if the recommendation is set as preferred. </p>
    #   @return [Boolean]
    class ApplicationComponentStrategy < Struct.new(
      :recommendation,
      :status,
      :is_preferred,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains the summary of application components. </p>
    # @!attribute app_type
    #   <p> Contains the name of application types. </p>
    #   @return [String]
    # @!attribute count
    #   <p> Contains the count of application type. </p>
    #   @return [Integer]
    class ApplicationComponentSummary < Struct.new(
      :app_type,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Application preferences that you specify. </p>
    # @!attribute management_preference
    #   <p> Application preferences that you specify to prefer managed environment. </p>
    #   @return [Types::ManagementPreference]
    class ApplicationPreferences < Struct.new(
      :management_preference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains the summary of the assessment results. </p>
    # @!attribute list_server_strategy_summary
    #   <p> List of ServerStrategySummary. </p>
    #   @return [Array<Types::StrategySummary>]
    # @!attribute list_application_component_strategy_summary
    #   <p> List of ApplicationComponentStrategySummary. </p>
    #   @return [Array<Types::StrategySummary>]
    # @!attribute list_antipattern_severity_summary
    #   <p> List of AntipatternSeveritySummary. </p>
    #   @return [Array<Types::AntipatternSeveritySummary>]
    # @!attribute list_application_component_summary
    #   <p> List of ApplicationComponentSummary. </p>
    #   @return [Array<Types::ApplicationComponentSummary>]
    # @!attribute list_server_summary
    #   <p> List of ServerSummary. </p>
    #   @return [Array<Types::ServerSummary>]
    # @!attribute antipattern_report_s3_object
    #   <p> The Amazon S3 object containing the anti-pattern report. </p>
    #   @return [Types::S3Object]
    # @!attribute antipattern_report_status
    #   <p> The status of the anti-pattern report. </p>
    #   @return [String]
    # @!attribute antipattern_report_status_message
    #   <p> The status message of the anti-pattern report. </p>
    #   @return [String]
    # @!attribute last_analyzed_timestamp
    #   <p> The time the assessment was performed. </p>
    #   @return [Time]
    # @!attribute list_application_component_status_summary
    #   <p>List of status summaries of the analyzed application components.</p>
    #   @return [Array<Types::ApplicationComponentStatusSummary>]
    # @!attribute list_server_status_summary
    #   <p>List of status summaries of the analyzed servers.</p>
    #   @return [Array<Types::ServerStatusSummary>]
    class AssessmentSummary < Struct.new(
      :list_server_strategy_summary,
      :list_application_component_strategy_summary,
      :list_antipattern_severity_summary,
      :list_application_component_summary,
      :list_server_summary,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :last_analyzed_timestamp,
      :list_application_component_status_summary,
      :list_server_status_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Defines the criteria of assessment.</p>
    # @!attribute condition
    #   <p>Condition of an assessment.</p>
    #   @return [String]
    # @!attribute name
    #   <p>Name of an assessment.</p>
    #   @return [String]
    # @!attribute values
    #   <p>Values of an assessment.</p>
    #   @return [Array<String>]
    class AssessmentTarget < Struct.new(
      :condition,
      :name,
      :values,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing details about applications as defined in Application Discovery Service. </p>
    # @!attribute name
    #   <p> Name of the application as defined in Application Discovery Service. </p>
    #   @return [String]
    # @!attribute id
    #   <p> ID of the application as defined in Application Discovery Service. </p>
    #   @return [String]
    class AssociatedApplication < Struct.new(
      :name,
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing the choice of application destination that you specify. </p>
    # @!attribute target_destination
    #   <p> The choice of application destination that you specify. </p>
    #   @return [Array<String>]
    class AwsManagedResources < Struct.new(
      :target_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Business goals that you specify. </p>
    # @!attribute speed_of_migration
    #   <p> Business goal to achieve migration at a fast pace. </p>
    #   @return [Integer]
    # @!attribute reduce_operational_overhead_with_managed_services
    #   <p> Business goal to reduce the operational overhead on the team by moving into managed
    #         services. </p>
    #   @return [Integer]
    # @!attribute modernize_infrastructure_with_cloud_native_technologies
    #   <p> Business goal to modernize infrastructure by moving to cloud native technologies. </p>
    #   @return [Integer]
    # @!attribute license_cost_reduction
    #   <p> Business goal to reduce license costs. </p>
    #   @return [Integer]
    class BusinessGoals < Struct.new(
      :speed_of_migration,
      :reduce_operational_overhead_with_managed_services,
      :modernize_infrastructure_with_cloud_native_technologies,
      :license_cost_reduction,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Process data collector that runs in the environment that you specify. </p>
    # @!attribute collector_id
    #   <p> The ID of the collector. </p>
    #   @return [String]
    # @!attribute ip_address
    #   <p> IP address of the server that is hosting the collector. </p>
    #   @return [String]
    # @!attribute host_name
    #   <p> Hostname of the server that is hosting the collector. </p>
    #   @return [String]
    # @!attribute collector_health
    #   <p> Indicates the health of a collector. </p>
    #   @return [String]
    # @!attribute collector_version
    #   <p> Current version of the collector that is running in the environment that you specify.
    #       </p>
    #   @return [String]
    # @!attribute registered_time_stamp
    #   <p> Time when the collector registered with the service. </p>
    #   @return [String]
    # @!attribute last_activity_time_stamp
    #   <p> Time when the collector last pinged the service. </p>
    #   @return [String]
    # @!attribute configuration_summary
    #   <p>Summary of the collector configuration.</p>
    #   @return [Types::ConfigurationSummary]
    class Collector < Struct.new(
      :collector_id,
      :ip_address,
      :host_name,
      :collector_health,
      :collector_version,
      :registered_time_stamp,
      :last_activity_time_stamp,
      :configuration_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Summary of the collector configuration.</p>
    # @!attribute vcenter_based_remote_info_list
    #   <p>The list of vCenter configurations.</p>
    #   @return [Array<Types::VcenterBasedRemoteInfo>]
    # @!attribute ip_address_based_remote_info_list
    #   <p>IP address based configurations.</p>
    #   @return [Array<Types::IPAddressBasedRemoteInfo>]
    # @!attribute version_control_info_list
    #   <p>The list of the version control configurations.</p>
    #   @return [Array<Types::VersionControlInfo>]
    # @!attribute pipeline_info_list
    #   <p>The list of pipeline info configurations.</p>
    #   @return [Array<Types::PipelineInfo>]
    # @!attribute remote_source_code_analysis_server_info
    #   <p>Info about the remote server source code configuration.</p>
    #   @return [Types::RemoteSourceCodeAnalysisServerInfo]
    class ConfigurationSummary < Struct.new(
      :vcenter_based_remote_info_list,
      :ip_address_based_remote_info_list,
      :version_control_info_list,
      :pipeline_info_list,
      :remote_source_code_analysis_server_info,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Exception to indicate that there is an ongoing task when a new task is created. Return
    #       when once the existing tasks are complete. </p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Detailed information about an assessment. </p>
    # @!attribute status
    #   <p> The status of the assessment. </p>
    #   @return [String]
    # @!attribute servers
    #   <p> The total number of servers in the assessment. </p>
    #   @return [Integer]
    # @!attribute failed
    #   <p> The number of failed servers in the assessment. </p>
    #   @return [Integer]
    # @!attribute success
    #   <p> The number of successful servers in the assessment. </p>
    #   @return [Integer]
    # @!attribute in_progress
    #   <p> The number of servers with the assessment status <code>IN_PROGESS</code>. </p>
    #   @return [Integer]
    # @!attribute start_time
    #   <p> The start time of assessment. </p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p> The time the assessment completes. </p>
    #   @return [Time]
    # @!attribute status_message
    #   <p>The status message of the assessment.</p>
    #   @return [String]
    class DataCollectionDetails < Struct.new(
      :status,
      :servers,
      :failed,
      :success,
      :in_progress,
      :start_time,
      :completion_time,
      :status_message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Configuration information used for assessing databases. </p>
    # @!attribute secret_name
    #   <p> AWS Secrets Manager key that holds the credentials that you use to connect to a database.
    #       </p>
    #   @return [String]
    class DatabaseConfigDetail < Struct.new(
      :secret_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Preferences for migrating a database to AWS. </p>
    # @!attribute heterogeneous
    #   <p> Indicates whether you are interested in moving from one type of database to another. For
    #         example, from SQL Server to Amazon Aurora MySQL-Compatible Edition. </p>
    #   @return [Types::Heterogeneous]
    # @!attribute homogeneous
    #   <p> Indicates whether you are interested in moving to the same type of database into AWS.
    #         For example, from SQL Server in your environment to SQL Server on AWS. </p>
    #   @return [Types::Homogeneous]
    # @!attribute no_preference
    #   <p> Indicated that you do not prefer heterogeneous or homogeneous. </p>
    #   @return [Types::NoDatabaseMigrationPreference]
    class DatabaseMigrationPreference < Struct.new(
      :heterogeneous,
      :homogeneous,
      :no_preference,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class Heterogeneous < DatabaseMigrationPreference; end
      class Homogeneous < DatabaseMigrationPreference; end
      class NoPreference < DatabaseMigrationPreference; end
      class Unknown < DatabaseMigrationPreference; end
    end

    # <p> Preferences on managing your databases on AWS. </p>
    # @!attribute database_management_preference
    #   <p> Specifies whether you're interested in self-managed databases or databases managed by
    #         AWS. </p>
    #   @return [String]
    # @!attribute database_migration_preference
    #   <p> Specifies your preferred migration path. </p>
    #   @return [Types::DatabaseMigrationPreference]
    class DatabasePreferences < Struct.new(
      :database_management_preference,
      :database_migration_preference,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Dependency encountered an error.</p>
    # @!attribute message
    #   @return [String]
    class DependencyException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    #   @return [String]
    class GetApplicationComponentDetailsInput < Struct.new(
      :application_component_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_detail
    #   <p> Detailed information about an application component. </p>
    #   @return [Types::ApplicationComponentDetail]
    # @!attribute associated_applications
    #   <p> The associated application group as defined in AWS Application Discovery Service. </p>
    #   @return [Array<Types::AssociatedApplication>]
    # @!attribute more_application_resource
    #   <p> Set to true if the application component belongs to more than one application group.
    #       </p>
    #   @return [Boolean]
    # @!attribute associated_server_ids
    #   <p> A list of the IDs of the servers on which the application component is running. </p>
    #   @return [Array<String>]
    class GetApplicationComponentDetailsOutput < Struct.new(
      :application_component_detail,
      :associated_applications,
      :more_application_resource,
      :associated_server_ids,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account.</p>
    #   @return [String]
    class GetApplicationComponentStrategiesInput < Struct.new(
      :application_component_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_strategies
    #   <p> A list of application component strategy recommendations. </p>
    #   @return [Array<Types::ApplicationComponentStrategy>]
    class GetApplicationComponentStrategiesOutput < Struct.new(
      :application_component_strategies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The <code>assessmentid</code> returned by <a>StartAssessment</a>.</p>
    #   @return [String]
    class GetAssessmentInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID for the specific assessment task. </p>
    #   @return [String]
    # @!attribute data_collection_details
    #   <p> Detailed information about the assessment. </p>
    #   @return [Types::DataCollectionDetails]
    # @!attribute assessment_targets
    #   <p>List of criteria for assessment.</p>
    #   @return [Array<Types::AssessmentTarget>]
    class GetAssessmentOutput < Struct.new(
      :id,
      :data_collection_details,
      :assessment_targets,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the import file task. This ID is returned in the response of <a>StartImportFileTask</a>. </p>
    #   @return [String]
    class GetImportFileTaskInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The import file task <code>id</code> returned in the response of <a>StartImportFileTask</a>. </p>
    #   @return [String]
    # @!attribute status
    #   <p> Status of import file task. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> Start time of the import task. </p>
    #   @return [Time]
    # @!attribute input_s3_bucket
    #   <p> The S3 bucket where import file is located. </p>
    #   @return [String]
    # @!attribute input_s3_key
    #   <p> The Amazon S3 key name of the import file. </p>
    #   @return [String]
    # @!attribute status_report_s3_bucket
    #   <p> The S3 bucket name for status report of import task. </p>
    #   @return [String]
    # @!attribute status_report_s3_key
    #   <p> The Amazon S3 key name for status report of import task. The report contains details about
    #         whether each record imported successfully or why it did not.</p>
    #   @return [String]
    # @!attribute completion_time
    #   <p> The time that the import task completed. </p>
    #   @return [Time]
    # @!attribute number_of_records_success
    #   <p> The number of records successfully imported. </p>
    #   @return [Integer]
    # @!attribute number_of_records_failed
    #   <p> The number of records that failed to be imported. </p>
    #   @return [Integer]
    # @!attribute import_name
    #   <p> The name of the import task given in <a>StartImportFileTask</a>. </p>
    #   @return [String]
    class GetImportFileTaskOutput < Struct.new(
      :id,
      :status,
      :start_time,
      :input_s3_bucket,
      :input_s3_key,
      :status_report_s3_bucket,
      :status_report_s3_key,
      :completion_time,
      :number_of_records_success,
      :number_of_records_failed,
      :import_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetLatestAssessmentIdInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p>The latest ID for the specific assessment task.</p>
    #   @return [String]
    class GetLatestAssessmentIdOutput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetPortfolioPreferencesInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prioritize_business_goals
    #   <p> The rank of business goals based on priority. </p>
    #   @return [Types::PrioritizeBusinessGoals]
    # @!attribute application_preferences
    #   <p> The transformation preferences for non-database applications. </p>
    #   @return [Types::ApplicationPreferences]
    # @!attribute database_preferences
    #   <p> The transformation preferences for database applications. </p>
    #   @return [Types::DatabasePreferences]
    # @!attribute application_mode
    #   <p>The classification for application component types.</p>
    #   @return [String]
    class GetPortfolioPreferencesOutput < Struct.new(
      :prioritize_business_goals,
      :application_preferences,
      :database_preferences,
      :application_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class GetPortfolioSummaryInput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_summary
    #   <p> An assessment summary for the portfolio including the number of servers to rehost and the
    #         overall number of anti-patterns. </p>
    #   @return [Types::AssessmentSummary]
    class GetPortfolioSummaryOutput < Struct.new(
      :assessment_summary,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The recommendation report generation task <code>id</code> returned by <a>StartRecommendationReportGeneration</a>. </p>
    #   @return [String]
    class GetRecommendationReportDetailsInput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the recommendation report generation task. See the response of <a>StartRecommendationReportGeneration</a>. </p>
    #   @return [String]
    # @!attribute recommendation_report_details
    #   <p> Detailed information about the recommendation report. </p>
    #   @return [Types::RecommendationReportDetails]
    class GetRecommendationReportDetailsOutput < Struct.new(
      :id,
      :recommendation_report_details,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p> The ID of the server. </p>
    #   @return [String]
    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #   @return [Integer]
    class GetServerDetailsInput < Struct.new(
      :server_id,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #   @return [String]
    # @!attribute server_detail
    #   <p> Detailed information about the server. </p>
    #   @return [Types::ServerDetail]
    # @!attribute associated_applications
    #   <p> The associated application group the server belongs to, as defined in AWS Application Discovery Service.
    #       </p>
    #   @return [Array<Types::AssociatedApplication>]
    class GetServerDetailsOutput < Struct.new(
      :next_token,
      :server_detail,
      :associated_applications,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p> The ID of the server. </p>
    #   @return [String]
    class GetServerStrategiesInput < Struct.new(
      :server_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_strategies
    #   <p> A list of strategy recommendations for the server. </p>
    #   @return [Array<Types::ServerStrategy>]
    class GetServerStrategiesOutput < Struct.new(
      :server_strategies,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The object containing information about distinct imports or groups for Strategy Recommendations. </p>
    # @!attribute name
    #   <p> The key of the specific import group. </p>
    #   @return [String]
    # @!attribute value
    #   <p> The value of the specific import group. </p>
    #   @return [String]
    class Group < Struct.new(
      :name,
      :value,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The object containing details about heterogeneous database preferences. </p>
    # @!attribute target_database_engine
    #   <p> The target database engine for heterogeneous database migration preference. </p>
    #   @return [Array<String>]
    class Heterogeneous < Struct.new(
      :target_database_engine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The object containing details about homogeneous database preferences. </p>
    # @!attribute target_database_engine
    #   <p> The target database engine for homogeneous database migration preferences. </p>
    #   @return [Array<String>]
    class Homogeneous < Struct.new(
      :target_database_engine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>IP address based configurations.</p>
    # @!attribute ip_address_configuration_time_stamp
    #   <p>The time stamp of the configuration.</p>
    #   @return [String]
    # @!attribute auth_type
    #   <p>The type of authorization.</p>
    #   @return [String]
    # @!attribute os_type
    #   <p>The type of the operating system.</p>
    #   @return [String]
    class IPAddressBasedRemoteInfo < Struct.new(
      :ip_address_configuration_time_stamp,
      :auth_type,
      :os_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the import file tasks you request. </p>
    # @!attribute id
    #   <p> The ID of the import file task. </p>
    #   @return [String]
    # @!attribute status
    #   <p> Status of import file task. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> Start time of the import task. </p>
    #   @return [Time]
    # @!attribute input_s3_bucket
    #   <p> The S3 bucket where the import file is located. </p>
    #   @return [String]
    # @!attribute input_s3_key
    #   <p> The Amazon S3 key name of the import file. </p>
    #   @return [String]
    # @!attribute status_report_s3_bucket
    #   <p> The S3 bucket name for status report of import task. </p>
    #   @return [String]
    # @!attribute status_report_s3_key
    #   <p> The Amazon S3 key name for status report of import task. The report contains details about
    #         whether each record imported successfully or why it did not. </p>
    #   @return [String]
    # @!attribute completion_time
    #   <p> The time that the import task completes. </p>
    #   @return [Time]
    # @!attribute number_of_records_success
    #   <p> The number of records successfully imported. </p>
    #   @return [Integer]
    # @!attribute number_of_records_failed
    #   <p> The number of records that failed to be imported. </p>
    #   @return [Integer]
    # @!attribute import_name
    #   <p> The name of the import task given in <code>StartImportFileTask</code>. </p>
    #   @return [String]
    class ImportFileTaskInformation < Struct.new(
      :id,
      :status,
      :start_time,
      :input_s3_bucket,
      :input_s3_key,
      :status_report_s3_bucket,
      :status_report_s3_key,
      :completion_time,
      :number_of_records_success,
      :number_of_records_failed,
      :import_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The server experienced an internal error. Try again. </p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Represents input for ListAnalyzableServers operation.
    # @!attribute sort
    #   Specifies whether to sort by ascending (ASC) or descending (DESC) order.
    #   @return [String]
    # @!attribute next_token
    #   The token from a previous call that you use to retrieve the next set of results. For example, if a previous call to this action returned 100 items, but you set maxResults to 10. You'll receive a set of 10 results along with a token. You then use the returned token to retrieve the next set of 10.
    #   @return [String]
    # @!attribute max_results
    #   The maximum number of items to include in the response. The maximum value is 100.
    #   @return [Integer]
    class ListAnalyzableServersRequest < Struct.new(
      :sort,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # Represents output for ListAnalyzableServers operation.
    # @!attribute analyzable_servers
    #   The list of analyzable servers with summary information about each server.
    #   @return [Array<Types::AnalyzableServerSummary>]
    # @!attribute next_token
    #   The token you use to retrieve the next set of results, or null if there are no more results.
    #   @return [String]
    class ListAnalyzableServersResponse < Struct.new(
      :analyzable_servers,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_criteria
    #   <p> Criteria for filtering the list of application components. </p>
    #   @return [String]
    # @!attribute filter_value
    #   <p> Specify the value based on the application component criteria type. For example, if
    #           <code>applicationComponentCriteria</code> is set to <code>SERVER_ID</code> and
    #           <code>filterValue</code> is set to <code>server1</code>, then <a>ListApplicationComponents</a> returns all the application components running on
    #         server1. </p>
    #   @return [String]
    # @!attribute sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #           (<code>DESC</code>) order. </p>
    #   @return [String]
    # @!attribute group_id_filter
    #   <p> The group ID specified in to filter on. </p>
    #   @return [Array<Types::Group>]
    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #   @return [Integer]
    class ListApplicationComponentsInput < Struct.new(
      :application_component_criteria,
      :filter_value,
      :sort,
      :group_id_filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_infos
    #   <p> The list of application components with detailed information about each component.
    #       </p>
    #   @return [Array<Types::ApplicationComponentDetail>]
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #   @return [String]
    class ListApplicationComponentsOutput < Struct.new(
      :application_component_infos,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #   @return [Integer]
    class ListCollectorsInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute collectors
    #   <p> The list of all the installed collectors. </p>
    #   @return [Array<Types::Collector>]
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #   @return [String]
    class ListCollectorsOutput < Struct.new(
      :collectors,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The total number of items to return. The maximum value is 100. </p>
    #   @return [Integer]
    class ListImportFileTaskInput < Struct.new(
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute task_infos
    #   <p> Lists information about the files you import.</p>
    #   @return [Array<Types::ImportFileTaskInformation>]
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #   @return [String]
    class ListImportFileTaskOutput < Struct.new(
      :task_infos,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_criteria
    #   <p> Criteria for filtering servers. </p>
    #   @return [String]
    # @!attribute filter_value
    #   <p> Specifies the filter value, which is based on the type of server criteria. For example,
    #         if <code>serverCriteria</code> is <code>OS_NAME</code>, and the <code>filterValue</code> is
    #         equal to <code>WindowsServer</code>, then <code>ListServers</code> returns all of the servers
    #         matching the OS name <code>WindowsServer</code>. </p>
    #   @return [String]
    # @!attribute sort
    #   <p> Specifies whether to sort by ascending (<code>ASC</code>) or descending
    #           (<code>DESC</code>) order. </p>
    #   @return [String]
    # @!attribute group_id_filter
    #   <p> Specifies the group ID to filter on. </p>
    #   @return [Array<Types::Group>]
    # @!attribute next_token
    #   <p> The token from a previous call that you use to retrieve the next set of results. For example, 
    #   if a previous call to this action returned 100 items, but you set <code>maxResults</code> to 10. You'll receive a set of 10 results along
    #         with a token. You then use the returned token to retrieve the next set of 10. </p>
    #   @return [String]
    # @!attribute max_results
    #   <p> The maximum number of items to include in the response. The maximum value is 100. </p>
    #   @return [Integer]
    class ListServersInput < Struct.new(
      :server_criteria,
      :filter_value,
      :sort,
      :group_id_filter,
      :next_token,
      :max_results,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_infos
    #   <p> The list of servers with detailed information about each server. </p>
    #   @return [Array<Types::ServerDetail>]
    # @!attribute next_token
    #   <p> The token you use to retrieve the next set of results, or null if there are no more results. </p>
    #   @return [String]
    class ListServersOutput < Struct.new(
      :server_infos,
      :next_token,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Preferences for migrating an application to AWS. </p>
    # @!attribute aws_managed_resources
    #   <p> Indicates interest in solutions that are managed by AWS. </p>
    #   @return [Types::AwsManagedResources]
    # @!attribute self_manage_resources
    #   <p> Indicates interest in managing your own resources on AWS. </p>
    #   @return [Types::SelfManageResources]
    # @!attribute no_preference
    #   <p> No specific preference. </p>
    #   @return [Types::NoManagementPreference]
    class ManagementPreference < Struct.new(
      :aws_managed_resources,
      :self_manage_resources,
      :no_preference,
      :unknown,
      keyword_init: true)
      include Smithy::Schema::Union

      class AwsManagedResources < ManagementPreference; end
      class SelfManageResources < ManagementPreference; end
      class NoPreference < ManagementPreference; end
      class Unknown < ManagementPreference; end
    end

    # <p> Information about the server's network for which the assessment was run. </p>
    # @!attribute interface_name
    #   <p> Information about the name of the interface of the server for which the assessment was
    #         run. </p>
    #   @return [String]
    # @!attribute ip_address
    #   <p> Information about the IP address of the server for which the assessment was run. </p>
    #   @return [String]
    # @!attribute mac_address
    #   <p> Information about the MAC address of the server for which the assessment was run. </p>
    #   @return [String]
    # @!attribute net_mask
    #   <p> Information about the subnet mask of the server for which the assessment was run. </p>
    #   @return [String]
    class NetworkInfo < Struct.new(
      :interface_name,
      :ip_address,
      :mac_address,
      :net_mask,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The object containing details about database migration preferences, when you have no
    #       particular preference. </p>
    # @!attribute target_database_engine
    #   <p> The target database engine for database migration preference that you specify. </p>
    #   @return [Array<String>]
    class NoDatabaseMigrationPreference < Struct.new(
      :target_database_engine,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing the choice of application destination that you specify. </p>
    # @!attribute target_destination
    #   <p> The choice of application destination that you specify. </p>
    #   @return [Array<String>]
    class NoManagementPreference < Struct.new(
      :target_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the operating system. </p>
    # @!attribute type
    #   <p> Information about the type of operating system. </p>
    #   @return [String]
    # @!attribute version
    #   <p> Information about the version of operating system. </p>
    #   @return [String]
    class OSInfo < Struct.new(
      :type,
      :version,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Detailed information of the pipeline.</p>
    # @!attribute pipeline_type
    #   <p>The type of pipeline.</p>
    #   @return [String]
    # @!attribute pipeline_configuration_time_stamp
    #   <p>The time when the pipeline info was configured.</p>
    #   @return [String]
    class PipelineInfo < Struct.new(
      :pipeline_type,
      :pipeline_configuration_time_stamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Rank of business goals based on priority. </p>
    # @!attribute business_goals
    #   <p> Rank of business goals based on priority. </p>
    #   @return [Types::BusinessGoals]
    class PrioritizeBusinessGoals < Struct.new(
      :business_goals,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute prioritize_business_goals
    #   <p> The rank of the business goals based on priority. </p>
    #   @return [Types::PrioritizeBusinessGoals]
    # @!attribute application_preferences
    #   <p> The transformation preferences for non-database applications. </p>
    #   @return [Types::ApplicationPreferences]
    # @!attribute database_preferences
    #   <p> The transformation preferences for database applications. </p>
    #   @return [Types::DatabasePreferences]
    # @!attribute application_mode
    #   <p>The classification for application component types.</p>
    #   @return [String]
    class PutPortfolioPreferencesInput < Struct.new(
      :prioritize_business_goals,
      :application_preferences,
      :database_preferences,
      :application_mode,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class PutPortfolioPreferencesOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains detailed information about a recommendation report. </p>
    # @!attribute status
    #   <p> The status of the recommendation report generation task. </p>
    #   @return [String]
    # @!attribute status_message
    #   <p> The status message for recommendation report generation. </p>
    #   @return [String]
    # @!attribute start_time
    #   <p> The time that the recommendation report generation task starts. </p>
    #   @return [Time]
    # @!attribute completion_time
    #   <p> The time that the recommendation report generation task completes. </p>
    #   @return [Time]
    # @!attribute s3_bucket
    #   <p> The S3 bucket where the report file is located. </p>
    #   @return [String]
    # @!attribute s3_keys
    #   <p> The Amazon S3 key name of the report file. </p>
    #   @return [Array<String>]
    class RecommendationReportDetails < Struct.new(
      :status,
      :status_message,
      :start_time,
      :completion_time,
      :s3_bucket,
      :s3_keys,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains a recommendation set. </p>
    # @!attribute transformation_tool
    #   <p> The target destination for the recommendation set. </p>
    #   @return [Types::TransformationTool]
    # @!attribute target_destination
    #   <p> The recommended target destination. </p>
    #   @return [String]
    # @!attribute strategy
    #   <p> The recommended strategy. </p>
    #   @return [String]
    class RecommendationSet < Struct.new(
      :transformation_tool,
      :target_destination,
      :strategy,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Information about the server configured for source code analysis.</p>
    # @!attribute remote_source_code_analysis_server_configuration_timestamp
    #   <p>The time when the remote source code server was configured.</p>
    #   @return [String]
    class RemoteSourceCodeAnalysisServerInfo < Struct.new(
      :remote_source_code_analysis_server_configuration_timestamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The specified ID in the request is not found. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The error in server analysis.</p>
    # @!attribute analysis_type
    #   <p>The error in server analysis.</p>
    #   @return [String]
    # @!attribute analysis_status
    #   <p>The error in server analysis.</p>
    #   @return [Types::AnalysisStatusUnion]
    # @!attribute status_message
    #   <p>The error in server analysis.</p>
    #   @return [String]
    # @!attribute antipattern_report_result_list
    #   <p>The error in server analysis.</p>
    #   @return [Array<Types::AntipatternReportResult>]
    class Result < Struct.new(
      :analysis_type,
      :analysis_status,
      :status_message,
      :antipattern_report_result_list,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains the S3 bucket name and the Amazon S3 key name. </p>
    # @!attribute s3_bucket
    #   <p> The S3 bucket name. </p>
    #   @return [String]
    # @!attribute s3key
    #   <p> The Amazon S3 key name. </p>
    #   @return [String]
    class S3Object < Struct.new(
      :s3_bucket,
      :s3key,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Self-managed resources. </p>
    # @!attribute target_destination
    #   <p> Self-managed resources target destination. </p>
    #   @return [Array<String>]
    class SelfManageResources < Struct.new(
      :target_destination,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Detailed information about a server. </p>
    # @!attribute id
    #   <p> The server ID. </p>
    #   @return [String]
    # @!attribute name
    #   <p> The name of the server. </p>
    #   @return [String]
    # @!attribute recommendation_set
    #   <p> A set of recommendations. </p>
    #   @return [Types::RecommendationSet]
    # @!attribute data_collection_status
    #   <p> The status of assessment for the server. </p>
    #   @return [String]
    # @!attribute status_message
    #   <p> A message about the status of data collection, which contains detailed descriptions of
    #         any error messages. </p>
    #   @return [String]
    # @!attribute list_antipattern_severity_summary
    #   <p> A list of anti-pattern severity summaries. </p>
    #   @return [Array<Types::AntipatternSeveritySummary>]
    # @!attribute system_info
    #   <p> System information about the server. </p>
    #   @return [Types::SystemInfo]
    # @!attribute application_component_strategy_summary
    #   <p> A list of strategy summaries. </p>
    #   @return [Array<Types::StrategySummary>]
    # @!attribute antipattern_report_s3_object
    #   <p> The S3 bucket name and Amazon S3 key name for anti-pattern report. </p>
    #   @return [Types::S3Object]
    # @!attribute antipattern_report_status
    #   <p> The status of the anti-pattern report generation. </p>
    #   @return [String]
    # @!attribute antipattern_report_status_message
    #   <p> A message about the status of the anti-pattern report generation. </p>
    #   @return [String]
    # @!attribute server_type
    #   <p> The type of server. </p>
    #   @return [String]
    # @!attribute last_analyzed_timestamp
    #   <p> The timestamp of when the server was assessed. </p>
    #   @return [Time]
    # @!attribute server_error
    #   <p>The error in server analysis.</p>
    #   @return [Types::ServerError]
    class ServerDetail < Struct.new(
      :id,
      :name,
      :recommendation_set,
      :data_collection_status,
      :status_message,
      :list_antipattern_severity_summary,
      :system_info,
      :application_component_strategy_summary,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :server_type,
      :last_analyzed_timestamp,
      :server_error,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The error in server analysis.</p>
    # @!attribute server_error_category
    #   <p>The error category of server analysis.</p>
    #   @return [String]
    class ServerError < Struct.new(
      :server_error_category,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>The status summary of the server analysis.</p>
    # @!attribute run_time_assessment_status
    #   <p>The status of the run time.</p>
    #   @return [String]
    # @!attribute count
    #   <p>The number of servers successfully analyzed, partially successful or failed
    #         analysis.</p>
    #   @return [Integer]
    class ServerStatusSummary < Struct.new(
      :run_time_assessment_status,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Contains information about a strategy recommendation for a server. </p>
    # @!attribute recommendation
    #   <p> Strategy recommendation for the server. </p>
    #   @return [Types::RecommendationSet]
    # @!attribute status
    #   <p> The recommendation status of the strategy for the server. </p>
    #   @return [String]
    # @!attribute number_of_application_components
    #   <p> The number of application components with this strategy recommendation running on the
    #         server. </p>
    #   @return [Integer]
    # @!attribute is_preferred
    #   <p> Set to true if the recommendation is set as preferred. </p>
    #   @return [Boolean]
    class ServerStrategy < Struct.new(
      :recommendation,
      :status,
      :number_of_application_components,
      :is_preferred,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing details about the servers imported by Application Discovery Service </p>
    # @!attribute server_os_type
    #   <p> Type of operating system for the servers. </p>
    #   @return [String]
    # @!attribute count
    #   <p> Number of servers. </p>
    #   @return [Integer]
    class ServerSummary < Struct.new(
      :server_os_type,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Exception to indicate that the service-linked role (SLR) is locked. </p>
    # @!attribute message
    #   @return [String]
    class ServiceLinkedRoleLockClientException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The AWS account has reached its quota of imports. Contact AWS Support to increase the
    #       quota for this account. </p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing source code information that is linked to an application component.
    #     </p>
    # @!attribute version_control
    #   <p> The type of repository to use for the source code. </p>
    #   @return [String]
    # @!attribute source_version
    #   <p> The branch of the source code. </p>
    #   @return [String]
    # @!attribute location
    #   <p> The repository name for the source code. </p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    class SourceCode < Struct.new(
      :version_control,
      :source_version,
      :location,
      :project_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing source code information that is linked to an application component.
    #     </p>
    # @!attribute repository
    #   <p> The repository name for the source code. </p>
    #   @return [String]
    # @!attribute branch
    #   <p> The branch of the source code. </p>
    #   @return [String]
    # @!attribute version_control_type
    #   <p> The type of repository to use for the source code. </p>
    #   @return [String]
    # @!attribute project_name
    #   <p>The name of the project.</p>
    #   @return [String]
    class SourceCodeRepository < Struct.new(
      :repository,
      :branch,
      :version_control_type,
      :project_name,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute s3bucket_for_analysis_data
    #   <p> The S3 bucket used by the collectors to send analysis data to the service. The bucket
    #         name must begin with <code>migrationhub-strategy-</code>. </p>
    #   @return [String]
    # @!attribute s3bucket_for_report_data
    #   <p> The S3 bucket where all the reports generated by the service are stored. The bucket name
    #         must begin with <code>migrationhub-strategy-</code>. </p>
    #   @return [String]
    # @!attribute assessment_targets
    #   <p>List of criteria for assessment.</p>
    #   @return [Array<Types::AssessmentTarget>]
    # @!attribute assessment_data_source_type
    #   The data source type of an assessment to be started.
    #   @return [String]
    class StartAssessmentInput < Struct.new(
      :s3bucket_for_analysis_data,
      :s3bucket_for_report_data,
      :assessment_targets,
      :assessment_data_source_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The ID of the assessment. </p>
    #   @return [String]
    class StartAssessmentOutput < Struct.new(
      :assessment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p> A descriptive name for the request. </p>
    #   @return [String]
    # @!attribute s3_bucket
    #   <p> The S3 bucket where the import file is located. The bucket name is required to begin with
    #           <code>migrationhub-strategy-</code>.</p>
    #   @return [String]
    # @!attribute s3key
    #   <p> The Amazon S3 key name of the import file. </p>
    #   @return [String]
    # @!attribute data_source_type
    #   <p>Specifies the source that the servers are coming from. By default, Strategy Recommendations assumes that
    #         the servers specified in the import file are available in AWS Application Discovery Service. </p>
    #   @return [String]
    # @!attribute group_id
    #   <p>Groups the resources in the import file together with a unique name. This ID can be as
    #         filter in <code>ListApplicationComponents</code> and <code>ListServers</code>. </p>
    #   @return [Array<Types::Group>]
    # @!attribute s3bucket_for_report_data
    #   <p> The S3 bucket where Strategy Recommendations uploads import results. The bucket name is required to
    #         begin with migrationhub-strategy-. </p>
    #   @return [String]
    class StartImportFileTaskInput < Struct.new(
      :name,
      :s3_bucket,
      :s3key,
      :data_source_type,
      :group_id,
      :s3bucket_for_report_data,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID for a specific import task. The ID is unique within an AWS account. </p>
    #   @return [String]
    class StartImportFileTaskOutput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute output_format
    #   <p> The output format for the recommendation report file. The default format is Microsoft
    #         Excel. </p>
    #   @return [String]
    # @!attribute group_id_filter
    #   <p> Groups the resources in the recommendation report with a unique name. </p>
    #   @return [Array<Types::Group>]
    class StartRecommendationReportGenerationInput < Struct.new(
      :output_format,
      :group_id_filter,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute id
    #   <p> The ID of the recommendation report generation task. </p>
    #   @return [String]
    class StartRecommendationReportGenerationOutput < Struct.new(
      :id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute assessment_id
    #   <p> The <code>assessmentId</code> returned by <a>StartAssessment</a>. </p>
    #   @return [String]
    class StopAssessmentInput < Struct.new(
      :assessment_id,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class StopAssessmentOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about all the available strategy options for migrating and modernizing an
    #       application component. </p>
    # @!attribute strategy
    #   <p> Type of transformation. For example, Rehost, Replatform, and so on. </p>
    #   @return [String]
    # @!attribute tool_name
    #   <p> The name of the tool that can be used to transform an application component using this
    #         strategy. </p>
    #   @return [String]
    # @!attribute target_destination
    #   <p> Destination information about where the application component can migrate to. For
    #         example, <code>EC2</code>, <code>ECS</code>, and so on. </p>
    #   @return [String]
    # @!attribute is_preferred
    #   <p> Indicates if a specific strategy is preferred for the application component. </p>
    #   @return [Boolean]
    class StrategyOption < Struct.new(
      :strategy,
      :tool_name,
      :target_destination,
      :is_preferred,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Object containing the summary of the strategy recommendations. </p>
    # @!attribute strategy
    #   <p> The name of recommended strategy. </p>
    #   @return [String]
    # @!attribute count
    #   <p> The count of recommendations per strategy. </p>
    #   @return [Integer]
    class StrategySummary < Struct.new(
      :strategy,
      :count,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information about the server that hosts application components. </p>
    # @!attribute os_info
    #   <p> Operating system corresponding to a server. </p>
    #   @return [Types::OSInfo]
    # @!attribute file_system_type
    #   <p> File system type for the server. </p>
    #   @return [String]
    # @!attribute network_info_list
    #   <p> Networking information related to a server. </p>
    #   @return [Array<Types::NetworkInfo>]
    # @!attribute cpu_architecture
    #   <p> CPU architecture type for the server. </p>
    #   @return [String]
    class SystemInfo < Struct.new(
      :os_info,
      :file_system_type,
      :network_info_list,
      :cpu_architecture,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request was denied due to request throttling. </p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> Information of the transformation tool that can be used to migrate and modernize the
    #       application. </p>
    # @!attribute name
    #   <p> Name of the tool. </p>
    #   @return [String]
    # @!attribute description
    #   <p> Description of the tool. </p>
    #   @return [String]
    # @!attribute tranformation_tool_installation_link
    #   <p> URL for installing the tool. </p>
    #   @return [String]
    class TransformationTool < Struct.new(
      :name,
      :description,
      :tranformation_tool_installation_link,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute application_component_id
    #   <p> The ID of the application component. The ID is unique within an AWS account. </p>
    #   @return [String]
    # @!attribute inclusion_status
    #   <p> Indicates whether the application component has been included for server recommendation
    #         or not. </p>
    #   @return [String]
    # @!attribute strategy_option
    #   <p> The preferred strategy options for the application component. Use values from the <a>GetApplicationComponentStrategies</a> response. </p>
    #   @return [Types::StrategyOption]
    # @!attribute source_code_list
    #   <p> The list of source code configurations to update for the application component. </p>
    #   @return [Array<Types::SourceCode>]
    # @!attribute secrets_manager_key
    #   <p> Database credentials. </p>
    #   @return [String]
    # @!attribute configure_only
    #   <p>Update the configuration request of an application component. If it is set to true, the
    #         source code and/or database credentials are updated. If it is set to false, the source code
    #         and/or database credentials are updated and an analysis is initiated.</p>
    #   @return [Boolean]
    # @!attribute app_type
    #   <p>The type of known component.</p>
    #   @return [String]
    class UpdateApplicationComponentConfigInput < Struct.new(
      :application_component_id,
      :inclusion_status,
      :strategy_option,
      :source_code_list,
      :secrets_manager_key,
      :configure_only,
      :app_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateApplicationComponentConfigOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # @!attribute server_id
    #   <p> The ID of the server. </p>
    #   @return [String]
    # @!attribute strategy_option
    #   <p> The preferred strategy options for the application component. See the response from <a>GetServerStrategies</a>.</p>
    #   @return [Types::StrategyOption]
    class UpdateServerConfigInput < Struct.new(
      :server_id,
      :strategy_option,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    class UpdateServerConfigOutput < Struct.new(
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p> The request body isn't valid. </p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the server in vCenter.</p>
    # @!attribute vcenter_configuration_time_stamp
    #   <p>The time when the remote server based on vCenter was last configured.</p>
    #   @return [String]
    # @!attribute os_type
    #   <p>The type of the operating system.</p>
    #   @return [String]
    class VcenterBasedRemoteInfo < Struct.new(
      :vcenter_configuration_time_stamp,
      :os_type,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

    # <p>Details about the version control configuration.</p>
    # @!attribute version_control_type
    #   <p>The type of version control.</p>
    #   @return [String]
    # @!attribute version_control_configuration_time_stamp
    #   <p>The time when the version control system was last configured.</p>
    #   @return [String]
    class VersionControlInfo < Struct.new(
      :version_control_type,
      :version_control_configuration_time_stamp,
      keyword_init: true)
      include Smithy::Schema::Structure
    end

  end
end
