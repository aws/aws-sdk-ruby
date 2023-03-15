# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MigrationHubStrategyRecommendations
  module Types

    # The user does not have permission to perform the action. Check the AWS
    # Identity and Access Management (IAM) policy associated with this user.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # A combination of existing analysis statuses.
    #
    # @note AnalysisStatusUnion is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalysisStatusUnion corresponding to the set member.
    #
    # @!attribute [rw] runtime_analysis_status
    #   The status of the analysis.
    #   @return [String]
    #
    # @!attribute [rw] src_code_or_db_analysis_status
    #   The status of the source code or database analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AnalysisStatusUnion AWS API Documentation
    #
    class AnalysisStatusUnion < Struct.new(
      :runtime_analysis_status,
      :src_code_or_db_analysis_status,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class RuntimeAnalysisStatus < AnalysisStatusUnion; end
      class SrcCodeOrDbAnalysisStatus < AnalysisStatusUnion; end
      class Unknown < AnalysisStatusUnion; end
    end

    # The combination of the existing analyzers.
    #
    # @note AnalyzerNameUnion is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of AnalyzerNameUnion corresponding to the set member.
    #
    # @!attribute [rw] binary_analyzer_name
    #   The binary analyzer names.
    #   @return [String]
    #
    # @!attribute [rw] run_time_analyzer_name
    #   The assessment analyzer names.
    #   @return [String]
    #
    # @!attribute [rw] source_code_analyzer_name
    #   The source code analyzer names.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AnalyzerNameUnion AWS API Documentation
    #
    class AnalyzerNameUnion < Struct.new(
      :binary_analyzer_name,
      :run_time_analyzer_name,
      :source_code_analyzer_name,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class BinaryAnalyzerName < AnalyzerNameUnion; end
      class RunTimeAnalyzerName < AnalyzerNameUnion; end
      class SourceCodeAnalyzerName < AnalyzerNameUnion; end
      class Unknown < AnalyzerNameUnion; end
    end

    # The anti-pattern report result.
    #
    # @!attribute [rw] analyzer_name
    #   The analyzer name.
    #   @return [Types::AnalyzerNameUnion]
    #
    # @!attribute [rw] anti_pattern_report_s3_object
    #   Contains the S3 bucket name and the Amazon S3 key name.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] antipattern_report_status
    #   The status of the anti-pattern report generation.
    #   @return [String]
    #
    # @!attribute [rw] antipattern_report_status_message
    #   The status message for the anti-pattern.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AntipatternReportResult AWS API Documentation
    #
    class AntipatternReportResult < Struct.new(
      :analyzer_name,
      :anti_pattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the summary of anti-patterns and their severity.
    #
    # @!attribute [rw] count
    #   Contains the count of anti-patterns.
    #   @return [Integer]
    #
    # @!attribute [rw] severity
    #   Contains the severity of anti-patterns.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AntipatternSeveritySummary AWS API Documentation
    #
    class AntipatternSeveritySummary < Struct.new(
      :count,
      :severity)
      SENSITIVE = []
      include Aws::Structure
    end

    # Error in the analysis of the application unit.
    #
    # @!attribute [rw] app_unit_error_category
    #   The category of the error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AppUnitError AWS API Documentation
    #
    class AppUnitError < Struct.new(
      :app_unit_error_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains detailed information about an application component.
    #
    # @!attribute [rw] analysis_status
    #   The status of analysis, if the application component has source code
    #   or an associated database.
    #   @return [String]
    #
    # @!attribute [rw] antipattern_report_s3_object
    #   The S3 bucket name and the Amazon S3 key name for the anti-pattern
    #   report.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] antipattern_report_status
    #   The status of the anti-pattern report generation.
    #   @return [String]
    #
    # @!attribute [rw] antipattern_report_status_message
    #   The status message for the anti-pattern.
    #   @return [String]
    #
    # @!attribute [rw] app_type
    #   The type of application component.
    #   @return [String]
    #
    # @!attribute [rw] app_unit_error
    #   The error in the analysis of the source code or database.
    #   @return [Types::AppUnitError]
    #
    # @!attribute [rw] associated_server_id
    #   The ID of the server that the application component is running on.
    #   @return [String]
    #
    # @!attribute [rw] database_config_detail
    #   Configuration details for the database associated with the
    #   application component.
    #   @return [Types::DatabaseConfigDetail]
    #
    # @!attribute [rw] id
    #   The ID of the application component.
    #   @return [String]
    #
    # @!attribute [rw] inclusion_status
    #   Indicates whether the application component has been included for
    #   server recommendation or not.
    #   @return [String]
    #
    # @!attribute [rw] last_analyzed_timestamp
    #   The timestamp of when the application component was assessed.
    #   @return [Time]
    #
    # @!attribute [rw] list_antipattern_severity_summary
    #   A list of anti-pattern severity summaries.
    #   @return [Array<Types::AntipatternSeveritySummary>]
    #
    # @!attribute [rw] more_server_association_exists
    #   Set to true if the application component is running on multiple
    #   servers.
    #   @return [Boolean]
    #
    # @!attribute [rw] name
    #   The name of application component.
    #   @return [String]
    #
    # @!attribute [rw] os_driver
    #   OS driver.
    #   @return [String]
    #
    # @!attribute [rw] os_version
    #   OS version.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_set
    #   The top recommendation set for the application component.
    #   @return [Types::RecommendationSet]
    #
    # @!attribute [rw] resource_sub_type
    #   The application component subtype.
    #   @return [String]
    #
    # @!attribute [rw] result_list
    #   A list of the analysis results.
    #   @return [Array<Types::Result>]
    #
    # @!attribute [rw] runtime_status
    #   The status of the application unit.
    #   @return [String]
    #
    # @!attribute [rw] runtime_status_message
    #   The status message for the application unit.
    #   @return [String]
    #
    # @!attribute [rw] source_code_repositories
    #   Details about the source code repository associated with the
    #   application component.
    #   @return [Array<Types::SourceCodeRepository>]
    #
    # @!attribute [rw] status_message
    #   A detailed description of the analysis status and any failure
    #   message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ApplicationComponentDetail AWS API Documentation
    #
    class ApplicationComponentDetail < Struct.new(
      :analysis_status,
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :app_type,
      :app_unit_error,
      :associated_server_id,
      :database_config_detail,
      :id,
      :inclusion_status,
      :last_analyzed_timestamp,
      :list_antipattern_severity_summary,
      :more_server_association_exists,
      :name,
      :os_driver,
      :os_version,
      :recommendation_set,
      :resource_sub_type,
      :result_list,
      :runtime_status,
      :runtime_status_message,
      :source_code_repositories,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the analysis status of the application component.
    #
    # @!attribute [rw] count
    #   The number of application components successfully analyzed,
    #   partially successful or failed analysis.
    #   @return [Integer]
    #
    # @!attribute [rw] src_code_or_db_analysis_status
    #   The status of database analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ApplicationComponentStatusSummary AWS API Documentation
    #
    class ApplicationComponentStatusSummary < Struct.new(
      :count,
      :src_code_or_db_analysis_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a strategy recommendation for an
    # application component.
    #
    # @!attribute [rw] is_preferred
    #   Set to true if the recommendation is set as preferred.
    #   @return [Boolean]
    #
    # @!attribute [rw] recommendation
    #   Strategy recommendation for the application component.
    #   @return [Types::RecommendationSet]
    #
    # @!attribute [rw] status
    #   The recommendation status of a strategy for an application
    #   component.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ApplicationComponentStrategy AWS API Documentation
    #
    class ApplicationComponentStrategy < Struct.new(
      :is_preferred,
      :recommendation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the summary of application components.
    #
    # @!attribute [rw] app_type
    #   Contains the name of application types.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   Contains the count of application type.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ApplicationComponentSummary AWS API Documentation
    #
    class ApplicationComponentSummary < Struct.new(
      :app_type,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Application preferences that you specify.
    #
    # @!attribute [rw] management_preference
    #   Application preferences that you specify to prefer managed
    #   environment.
    #   @return [Types::ManagementPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ApplicationPreferences AWS API Documentation
    #
    class ApplicationPreferences < Struct.new(
      :management_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the summary of the assessment results.
    #
    # @!attribute [rw] antipattern_report_s3_object
    #   The Amazon S3 object containing the anti-pattern report.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] antipattern_report_status
    #   The status of the anti-pattern report.
    #   @return [String]
    #
    # @!attribute [rw] antipattern_report_status_message
    #   The status message of the anti-pattern report.
    #   @return [String]
    #
    # @!attribute [rw] last_analyzed_timestamp
    #   The time the assessment was performed.
    #   @return [Time]
    #
    # @!attribute [rw] list_antipattern_severity_summary
    #   List of AntipatternSeveritySummary.
    #   @return [Array<Types::AntipatternSeveritySummary>]
    #
    # @!attribute [rw] list_application_component_status_summary
    #   List of status summaries of the analyzed application components.
    #   @return [Array<Types::ApplicationComponentStatusSummary>]
    #
    # @!attribute [rw] list_application_component_strategy_summary
    #   List of ApplicationComponentStrategySummary.
    #   @return [Array<Types::StrategySummary>]
    #
    # @!attribute [rw] list_application_component_summary
    #   List of ApplicationComponentSummary.
    #   @return [Array<Types::ApplicationComponentSummary>]
    #
    # @!attribute [rw] list_server_status_summary
    #   List of status summaries of the analyzed servers.
    #   @return [Array<Types::ServerStatusSummary>]
    #
    # @!attribute [rw] list_server_strategy_summary
    #   List of ServerStrategySummary.
    #   @return [Array<Types::StrategySummary>]
    #
    # @!attribute [rw] list_server_summary
    #   List of ServerSummary.
    #   @return [Array<Types::ServerSummary>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AssessmentSummary AWS API Documentation
    #
    class AssessmentSummary < Struct.new(
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :last_analyzed_timestamp,
      :list_antipattern_severity_summary,
      :list_application_component_status_summary,
      :list_application_component_strategy_summary,
      :list_application_component_summary,
      :list_server_status_summary,
      :list_server_strategy_summary,
      :list_server_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the criteria of assessment.
    #
    # @!attribute [rw] condition
    #   Condition of an assessment.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of an assessment.
    #   @return [String]
    #
    # @!attribute [rw] values
    #   Values of an assessment.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AssessmentTarget AWS API Documentation
    #
    class AssessmentTarget < Struct.new(
      :condition,
      :name,
      :values)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing details about applications as defined in Application
    # Discovery Service.
    #
    # @!attribute [rw] id
    #   ID of the application as defined in Application Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the application as defined in Application Discovery Service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AssociatedApplication AWS API Documentation
    #
    class AssociatedApplication < Struct.new(
      :id,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing the choice of application destination that you
    # specify.
    #
    # @!attribute [rw] target_destination
    #   The choice of application destination that you specify.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/AwsManagedResources AWS API Documentation
    #
    class AwsManagedResources < Struct.new(
      :target_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Business goals that you specify.
    #
    # @!attribute [rw] license_cost_reduction
    #   Business goal to reduce license costs.
    #   @return [Integer]
    #
    # @!attribute [rw] modernize_infrastructure_with_cloud_native_technologies
    #   Business goal to modernize infrastructure by moving to cloud native
    #   technologies.
    #   @return [Integer]
    #
    # @!attribute [rw] reduce_operational_overhead_with_managed_services
    #   Business goal to reduce the operational overhead on the team by
    #   moving into managed services.
    #   @return [Integer]
    #
    # @!attribute [rw] speed_of_migration
    #   Business goal to achieve migration at a fast pace.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/BusinessGoals AWS API Documentation
    #
    class BusinessGoals < Struct.new(
      :license_cost_reduction,
      :modernize_infrastructure_with_cloud_native_technologies,
      :reduce_operational_overhead_with_managed_services,
      :speed_of_migration)
      SENSITIVE = []
      include Aws::Structure
    end

    # Process data collector that runs in the environment that you specify.
    #
    # @!attribute [rw] collector_health
    #   Indicates the health of a collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_id
    #   The ID of the collector.
    #   @return [String]
    #
    # @!attribute [rw] collector_version
    #   Current version of the collector that is running in the environment
    #   that you specify.
    #   @return [String]
    #
    # @!attribute [rw] configuration_summary
    #   Summary of the collector configuration.
    #   @return [Types::ConfigurationSummary]
    #
    # @!attribute [rw] host_name
    #   Hostname of the server that is hosting the collector.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   IP address of the server that is hosting the collector.
    #   @return [String]
    #
    # @!attribute [rw] last_activity_time_stamp
    #   Time when the collector last pinged the service.
    #   @return [String]
    #
    # @!attribute [rw] registered_time_stamp
    #   Time when the collector registered with the service.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/Collector AWS API Documentation
    #
    class Collector < Struct.new(
      :collector_health,
      :collector_id,
      :collector_version,
      :configuration_summary,
      :host_name,
      :ip_address,
      :last_activity_time_stamp,
      :registered_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary of the collector configuration.
    #
    # @!attribute [rw] ip_address_based_remote_info_list
    #   IP address based configurations.
    #   @return [Array<Types::IPAddressBasedRemoteInfo>]
    #
    # @!attribute [rw] pipeline_info_list
    #   The list of pipeline info configurations.
    #   @return [Array<Types::PipelineInfo>]
    #
    # @!attribute [rw] remote_source_code_analysis_server_info
    #   Info about the remote server source code configuration.
    #   @return [Types::RemoteSourceCodeAnalysisServerInfo]
    #
    # @!attribute [rw] vcenter_based_remote_info_list
    #   The list of vCenter configurations.
    #   @return [Array<Types::VcenterBasedRemoteInfo>]
    #
    # @!attribute [rw] version_control_info_list
    #   The list of the version control configurations.
    #   @return [Array<Types::VersionControlInfo>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ConfigurationSummary AWS API Documentation
    #
    class ConfigurationSummary < Struct.new(
      :ip_address_based_remote_info_list,
      :pipeline_info_list,
      :remote_source_code_analysis_server_info,
      :vcenter_based_remote_info_list,
      :version_control_info_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception to indicate that there is an ongoing task when a new task is
    # created. Return when once the existing tasks are complete.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about an assessment.
    #
    # @!attribute [rw] completion_time
    #   The time the assessment completes.
    #   @return [Time]
    #
    # @!attribute [rw] failed
    #   The number of failed servers in the assessment.
    #   @return [Integer]
    #
    # @!attribute [rw] in_progress
    #   The number of servers with the assessment status `IN_PROGESS`.
    #   @return [Integer]
    #
    # @!attribute [rw] servers
    #   The total number of servers in the assessment.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   The start time of assessment.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message of the assessment.
    #   @return [String]
    #
    # @!attribute [rw] success
    #   The number of successful servers in the assessment.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/DataCollectionDetails AWS API Documentation
    #
    class DataCollectionDetails < Struct.new(
      :completion_time,
      :failed,
      :in_progress,
      :servers,
      :start_time,
      :status,
      :status_message,
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # Configuration information used for assessing databases.
    #
    # @!attribute [rw] secret_name
    #   AWS Secrets Manager key that holds the credentials that you use to
    #   connect to a database.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/DatabaseConfigDetail AWS API Documentation
    #
    class DatabaseConfigDetail < Struct.new(
      :secret_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Preferences for migrating a database to AWS.
    #
    # @note DatabaseMigrationPreference is a union - when making an API calls you must set exactly one of the members.
    #
    # @note DatabaseMigrationPreference is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of DatabaseMigrationPreference corresponding to the set member.
    #
    # @!attribute [rw] heterogeneous
    #   Indicates whether you are interested in moving from one type of
    #   database to another. For example, from SQL Server to Amazon Aurora
    #   MySQL-Compatible Edition.
    #   @return [Types::Heterogeneous]
    #
    # @!attribute [rw] homogeneous
    #   Indicates whether you are interested in moving to the same type of
    #   database into AWS. For example, from SQL Server in your environment
    #   to SQL Server on AWS.
    #   @return [Types::Homogeneous]
    #
    # @!attribute [rw] no_preference
    #   Indicated that you do not prefer heterogeneous or homogeneous.
    #   @return [Types::NoDatabaseMigrationPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/DatabaseMigrationPreference AWS API Documentation
    #
    class DatabaseMigrationPreference < Struct.new(
      :heterogeneous,
      :homogeneous,
      :no_preference,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Heterogeneous < DatabaseMigrationPreference; end
      class Homogeneous < DatabaseMigrationPreference; end
      class NoPreference < DatabaseMigrationPreference; end
      class Unknown < DatabaseMigrationPreference; end
    end

    # Preferences on managing your databases on AWS.
    #
    # @!attribute [rw] database_management_preference
    #   Specifies whether you're interested in self-managed databases or
    #   databases managed by AWS.
    #   @return [String]
    #
    # @!attribute [rw] database_migration_preference
    #   Specifies your preferred migration path.
    #   @return [Types::DatabaseMigrationPreference]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/DatabasePreferences AWS API Documentation
    #
    class DatabasePreferences < Struct.new(
      :database_management_preference,
      :database_migration_preference)
      SENSITIVE = []
      include Aws::Structure
    end

    # Dependency encountered an error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/DependencyException AWS API Documentation
    #
    class DependencyException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_id
    #   The ID of the application component. The ID is unique within an AWS
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetApplicationComponentDetailsRequest AWS API Documentation
    #
    class GetApplicationComponentDetailsRequest < Struct.new(
      :application_component_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_detail
    #   Detailed information about an application component.
    #   @return [Types::ApplicationComponentDetail]
    #
    # @!attribute [rw] associated_applications
    #   The associated application group as defined in AWS Application
    #   Discovery Service.
    #   @return [Array<Types::AssociatedApplication>]
    #
    # @!attribute [rw] associated_server_ids
    #   A list of the IDs of the servers on which the application component
    #   is running.
    #   @return [Array<String>]
    #
    # @!attribute [rw] more_application_resource
    #   Set to true if the application component belongs to more than one
    #   application group.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetApplicationComponentDetailsResponse AWS API Documentation
    #
    class GetApplicationComponentDetailsResponse < Struct.new(
      :application_component_detail,
      :associated_applications,
      :associated_server_ids,
      :more_application_resource)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_id
    #   The ID of the application component. The ID is unique within an AWS
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetApplicationComponentStrategiesRequest AWS API Documentation
    #
    class GetApplicationComponentStrategiesRequest < Struct.new(
      :application_component_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_strategies
    #   A list of application component strategy recommendations.
    #   @return [Array<Types::ApplicationComponentStrategy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetApplicationComponentStrategiesResponse AWS API Documentation
    #
    class GetApplicationComponentStrategiesResponse < Struct.new(
      :application_component_strategies)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The `assessmentid` returned by StartAssessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetAssessmentRequest AWS API Documentation
    #
    class GetAssessmentRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_targets
    #   List of criteria for assessment.
    #   @return [Array<Types::AssessmentTarget>]
    #
    # @!attribute [rw] data_collection_details
    #   Detailed information about the assessment.
    #   @return [Types::DataCollectionDetails]
    #
    # @!attribute [rw] id
    #   The ID for the specific assessment task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetAssessmentResponse AWS API Documentation
    #
    class GetAssessmentResponse < Struct.new(
      :assessment_targets,
      :data_collection_details,
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the import file task. This ID is returned in the response
    #   of StartImportFileTask.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetImportFileTaskRequest AWS API Documentation
    #
    class GetImportFileTaskRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] completion_time
    #   The time that the import task completed.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The import file task `id` returned in the response of
    #   StartImportFileTask.
    #   @return [String]
    #
    # @!attribute [rw] import_name
    #   The name of the import task given in StartImportFileTask.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_bucket
    #   The S3 bucket where import file is located.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_key
    #   The Amazon S3 key name of the import file.
    #   @return [String]
    #
    # @!attribute [rw] number_of_records_failed
    #   The number of records that failed to be imported.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_records_success
    #   The number of records successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   Start time of the import task.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of import file task.
    #   @return [String]
    #
    # @!attribute [rw] status_report_s3_bucket
    #   The S3 bucket name for status report of import task.
    #   @return [String]
    #
    # @!attribute [rw] status_report_s3_key
    #   The Amazon S3 key name for status report of import task. The report
    #   contains details about whether each record imported successfully or
    #   why it did not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetImportFileTaskResponse AWS API Documentation
    #
    class GetImportFileTaskResponse < Struct.new(
      :completion_time,
      :id,
      :import_name,
      :input_s3_bucket,
      :input_s3_key,
      :number_of_records_failed,
      :number_of_records_success,
      :start_time,
      :status,
      :status_report_s3_bucket,
      :status_report_s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetLatestAssessmentIdRequest AWS API Documentation
    #
    class GetLatestAssessmentIdRequest < Aws::EmptyStructure; end

    # @!attribute [rw] id
    #   The latest ID for the specific assessment task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetLatestAssessmentIdResponse AWS API Documentation
    #
    class GetLatestAssessmentIdResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetPortfolioPreferencesRequest AWS API Documentation
    #
    class GetPortfolioPreferencesRequest < Aws::EmptyStructure; end

    # @!attribute [rw] application_mode
    #   The classification for application component types.
    #   @return [String]
    #
    # @!attribute [rw] application_preferences
    #   The transformation preferences for non-database applications.
    #   @return [Types::ApplicationPreferences]
    #
    # @!attribute [rw] database_preferences
    #   The transformation preferences for database applications.
    #   @return [Types::DatabasePreferences]
    #
    # @!attribute [rw] prioritize_business_goals
    #   The rank of business goals based on priority.
    #   @return [Types::PrioritizeBusinessGoals]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetPortfolioPreferencesResponse AWS API Documentation
    #
    class GetPortfolioPreferencesResponse < Struct.new(
      :application_mode,
      :application_preferences,
      :database_preferences,
      :prioritize_business_goals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetPortfolioSummaryRequest AWS API Documentation
    #
    class GetPortfolioSummaryRequest < Aws::EmptyStructure; end

    # @!attribute [rw] assessment_summary
    #   An assessment summary for the portfolio including the number of
    #   servers to rehost and the overall number of anti-patterns.
    #   @return [Types::AssessmentSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetPortfolioSummaryResponse AWS API Documentation
    #
    class GetPortfolioSummaryResponse < Struct.new(
      :assessment_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The recommendation report generation task `id` returned by
    #   StartRecommendationReportGeneration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetRecommendationReportDetailsRequest AWS API Documentation
    #
    class GetRecommendationReportDetailsRequest < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the recommendation report generation task. See the
    #   response of StartRecommendationReportGeneration.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_report_details
    #   Detailed information about the recommendation report.
    #   @return [Types::RecommendationReportDetails]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetRecommendationReportDetailsResponse AWS API Documentation
    #
    class GetRecommendationReportDetailsResponse < Struct.new(
      :id,
      :recommendation_report_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of
    #   10 results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #   @return [String]
    #
    # @!attribute [rw] server_id
    #   The ID of the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetServerDetailsRequest AWS API Documentation
    #
    class GetServerDetailsRequest < Struct.new(
      :max_results,
      :next_token,
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] associated_applications
    #   The associated application group the server belongs to, as defined
    #   in AWS Application Discovery Service.
    #   @return [Array<Types::AssociatedApplication>]
    #
    # @!attribute [rw] next_token
    #   The token you use to retrieve the next set of results, or null if
    #   there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] server_detail
    #   Detailed information about the server.
    #   @return [Types::ServerDetail]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetServerDetailsResponse AWS API Documentation
    #
    class GetServerDetailsResponse < Struct.new(
      :associated_applications,
      :next_token,
      :server_detail)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_id
    #   The ID of the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetServerStrategiesRequest AWS API Documentation
    #
    class GetServerStrategiesRequest < Struct.new(
      :server_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] server_strategies
    #   A list of strategy recommendations for the server.
    #   @return [Array<Types::ServerStrategy>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/GetServerStrategiesResponse AWS API Documentation
    #
    class GetServerStrategiesResponse < Struct.new(
      :server_strategies)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object containing information about distinct imports or groups for
    # Strategy Recommendations.
    #
    # @!attribute [rw] name
    #   The key of the specific import group.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   The value of the specific import group.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/Group AWS API Documentation
    #
    class Group < Struct.new(
      :name,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object containing details about heterogeneous database
    # preferences.
    #
    # @!attribute [rw] target_database_engine
    #   The target database engine for heterogeneous database migration
    #   preference.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/Heterogeneous AWS API Documentation
    #
    class Heterogeneous < Struct.new(
      :target_database_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object containing details about homogeneous database preferences.
    #
    # @!attribute [rw] target_database_engine
    #   The target database engine for homogeneous database migration
    #   preferences.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/Homogeneous AWS API Documentation
    #
    class Homogeneous < Struct.new(
      :target_database_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # IP address based configurations.
    #
    # @!attribute [rw] auth_type
    #   The type of authorization.
    #   @return [String]
    #
    # @!attribute [rw] ip_address_configuration_time_stamp
    #   The time stamp of the configuration.
    #   @return [String]
    #
    # @!attribute [rw] os_type
    #   The type of the operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/IPAddressBasedRemoteInfo AWS API Documentation
    #
    class IPAddressBasedRemoteInfo < Struct.new(
      :auth_type,
      :ip_address_configuration_time_stamp,
      :os_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the import file tasks you request.
    #
    # @!attribute [rw] completion_time
    #   The time that the import task completes.
    #   @return [Time]
    #
    # @!attribute [rw] id
    #   The ID of the import file task.
    #   @return [String]
    #
    # @!attribute [rw] import_name
    #   The name of the import task given in `StartImportFileTask`.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_bucket
    #   The S3 bucket where the import file is located.
    #   @return [String]
    #
    # @!attribute [rw] input_s3_key
    #   The Amazon S3 key name of the import file.
    #   @return [String]
    #
    # @!attribute [rw] number_of_records_failed
    #   The number of records that failed to be imported.
    #   @return [Integer]
    #
    # @!attribute [rw] number_of_records_success
    #   The number of records successfully imported.
    #   @return [Integer]
    #
    # @!attribute [rw] start_time
    #   Start time of the import task.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of import file task.
    #   @return [String]
    #
    # @!attribute [rw] status_report_s3_bucket
    #   The S3 bucket name for status report of import task.
    #   @return [String]
    #
    # @!attribute [rw] status_report_s3_key
    #   The Amazon S3 key name for status report of import task. The report
    #   contains details about whether each record imported successfully or
    #   why it did not.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ImportFileTaskInformation AWS API Documentation
    #
    class ImportFileTaskInformation < Struct.new(
      :completion_time,
      :id,
      :import_name,
      :input_s3_bucket,
      :input_s3_key,
      :number_of_records_failed,
      :number_of_records_success,
      :start_time,
      :status,
      :status_report_s3_bucket,
      :status_report_s3_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # The server experienced an internal error. Try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_criteria
    #   Criteria for filtering the list of application components.
    #   @return [String]
    #
    # @!attribute [rw] filter_value
    #   Specify the value based on the application component criteria type.
    #   For example, if `applicationComponentCriteria` is set to `SERVER_ID`
    #   and `filterValue` is set to `server1`, then
    #   ListApplicationComponents returns all the application components
    #   running on server1.
    #   @return [String]
    #
    # @!attribute [rw] group_id_filter
    #   The group ID specified in to filter on.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of
    #   10 results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Specifies whether to sort by ascending (`ASC`) or descending
    #   (`DESC`) order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListApplicationComponentsRequest AWS API Documentation
    #
    class ListApplicationComponentsRequest < Struct.new(
      :application_component_criteria,
      :filter_value,
      :group_id_filter,
      :max_results,
      :next_token,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_component_infos
    #   The list of application components with detailed information about
    #   each component.
    #   @return [Array<Types::ApplicationComponentDetail>]
    #
    # @!attribute [rw] next_token
    #   The token you use to retrieve the next set of results, or null if
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListApplicationComponentsResponse AWS API Documentation
    #
    class ListApplicationComponentsResponse < Struct.new(
      :application_component_infos,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of
    #   10 results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListCollectorsRequest AWS API Documentation
    #
    class ListCollectorsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] collectors
    #   The list of all the installed collectors.
    #   @return [Array<Types::Collector>]
    #
    # @!attribute [rw] next_token
    #   The token you use to retrieve the next set of results, or null if
    #   there are no more results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListCollectorsResponse AWS API Documentation
    #
    class ListCollectorsResponse < Struct.new(
      :collectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] max_results
    #   The total number of items to return. The maximum value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of
    #   10 results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListImportFileTaskRequest AWS API Documentation
    #
    class ListImportFileTaskRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token you use to retrieve the next set of results, or null if
    #   there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] task_infos
    #   Lists information about the files you import.
    #   @return [Array<Types::ImportFileTaskInformation>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListImportFileTaskResponse AWS API Documentation
    #
    class ListImportFileTaskResponse < Struct.new(
      :next_token,
      :task_infos)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] filter_value
    #   Specifies the filter value, which is based on the type of server
    #   criteria. For example, if `serverCriteria` is `OS_NAME`, and the
    #   `filterValue` is equal to `WindowsServer`, then `ListServers`
    #   returns all of the servers matching the OS name `WindowsServer`.
    #   @return [String]
    #
    # @!attribute [rw] group_id_filter
    #   Specifies the group ID to filter on.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] max_results
    #   The maximum number of items to include in the response. The maximum
    #   value is 100.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   The token from a previous call that you use to retrieve the next set
    #   of results. For example, if a previous call to this action returned
    #   100 items, but you set `maxResults` to 10. You'll receive a set of
    #   10 results along with a token. You then use the returned token to
    #   retrieve the next set of 10.
    #   @return [String]
    #
    # @!attribute [rw] server_criteria
    #   Criteria for filtering servers.
    #   @return [String]
    #
    # @!attribute [rw] sort
    #   Specifies whether to sort by ascending (`ASC`) or descending
    #   (`DESC`) order.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListServersRequest AWS API Documentation
    #
    class ListServersRequest < Struct.new(
      :filter_value,
      :group_id_filter,
      :max_results,
      :next_token,
      :server_criteria,
      :sort)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The token you use to retrieve the next set of results, or null if
    #   there are no more results.
    #   @return [String]
    #
    # @!attribute [rw] server_infos
    #   The list of servers with detailed information about each server.
    #   @return [Array<Types::ServerDetail>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ListServersResponse AWS API Documentation
    #
    class ListServersResponse < Struct.new(
      :next_token,
      :server_infos)
      SENSITIVE = []
      include Aws::Structure
    end

    # Preferences for migrating an application to AWS.
    #
    # @note ManagementPreference is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ManagementPreference is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ManagementPreference corresponding to the set member.
    #
    # @!attribute [rw] aws_managed_resources
    #   Indicates interest in solutions that are managed by AWS.
    #   @return [Types::AwsManagedResources]
    #
    # @!attribute [rw] no_preference
    #   No specific preference.
    #   @return [Types::NoManagementPreference]
    #
    # @!attribute [rw] self_manage_resources
    #   Indicates interest in managing your own resources on AWS.
    #   @return [Types::SelfManageResources]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ManagementPreference AWS API Documentation
    #
    class ManagementPreference < Struct.new(
      :aws_managed_resources,
      :no_preference,
      :self_manage_resources,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class AwsManagedResources < ManagementPreference; end
      class NoPreference < ManagementPreference; end
      class SelfManageResources < ManagementPreference; end
      class Unknown < ManagementPreference; end
    end

    # Information about the server's network for which the assessment was
    # run.
    #
    # @!attribute [rw] interface_name
    #   Information about the name of the interface of the server for which
    #   the assessment was run.
    #   @return [String]
    #
    # @!attribute [rw] ip_address
    #   Information about the IP address of the server for which the
    #   assessment was run.
    #   @return [String]
    #
    # @!attribute [rw] mac_address
    #   Information about the MAC address of the server for which the
    #   assessment was run.
    #   @return [String]
    #
    # @!attribute [rw] net_mask
    #   Information about the subnet mask of the server for which the
    #   assessment was run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/NetworkInfo AWS API Documentation
    #
    class NetworkInfo < Struct.new(
      :interface_name,
      :ip_address,
      :mac_address,
      :net_mask)
      SENSITIVE = []
      include Aws::Structure
    end

    # The object containing details about database migration preferences,
    # when you have no particular preference.
    #
    # @!attribute [rw] target_database_engine
    #   The target database engine for database migration preference that
    #   you specify.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/NoDatabaseMigrationPreference AWS API Documentation
    #
    class NoDatabaseMigrationPreference < Struct.new(
      :target_database_engine)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing the choice of application destination that you
    # specify.
    #
    # @!attribute [rw] target_destination
    #   The choice of application destination that you specify.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/NoManagementPreference AWS API Documentation
    #
    class NoManagementPreference < Struct.new(
      :target_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the operating system.
    #
    # @!attribute [rw] type
    #   Information about the type of operating system.
    #   @return [String]
    #
    # @!attribute [rw] version
    #   Information about the version of operating system.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/OSInfo AWS API Documentation
    #
    class OSInfo < Struct.new(
      :type,
      :version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information of the pipeline.
    #
    # @!attribute [rw] pipeline_configuration_time_stamp
    #   The time when the pipeline info was configured.
    #   @return [String]
    #
    # @!attribute [rw] pipeline_type
    #   The type of pipeline.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/PipelineInfo AWS API Documentation
    #
    class PipelineInfo < Struct.new(
      :pipeline_configuration_time_stamp,
      :pipeline_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Rank of business goals based on priority.
    #
    # @!attribute [rw] business_goals
    #   Rank of business goals based on priority.
    #   @return [Types::BusinessGoals]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/PrioritizeBusinessGoals AWS API Documentation
    #
    class PrioritizeBusinessGoals < Struct.new(
      :business_goals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] application_mode
    #   The classification for application component types.
    #   @return [String]
    #
    # @!attribute [rw] application_preferences
    #   The transformation preferences for non-database applications.
    #   @return [Types::ApplicationPreferences]
    #
    # @!attribute [rw] database_preferences
    #   The transformation preferences for database applications.
    #   @return [Types::DatabasePreferences]
    #
    # @!attribute [rw] prioritize_business_goals
    #   The rank of the business goals based on priority.
    #   @return [Types::PrioritizeBusinessGoals]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/PutPortfolioPreferencesRequest AWS API Documentation
    #
    class PutPortfolioPreferencesRequest < Struct.new(
      :application_mode,
      :application_preferences,
      :database_preferences,
      :prioritize_business_goals)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/PutPortfolioPreferencesResponse AWS API Documentation
    #
    class PutPortfolioPreferencesResponse < Aws::EmptyStructure; end

    # Contains detailed information about a recommendation report.
    #
    # @!attribute [rw] completion_time
    #   The time that the recommendation report generation task completes.
    #   @return [Time]
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket where the report file is located.
    #   @return [String]
    #
    # @!attribute [rw] s3_keys
    #   The Amazon S3 key name of the report file.
    #   @return [Array<String>]
    #
    # @!attribute [rw] start_time
    #   The time that the recommendation report generation task starts.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   The status of the recommendation report generation task.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   The status message for recommendation report generation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/RecommendationReportDetails AWS API Documentation
    #
    class RecommendationReportDetails < Struct.new(
      :completion_time,
      :s3_bucket,
      :s3_keys,
      :start_time,
      :status,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains a recommendation set.
    #
    # @!attribute [rw] strategy
    #   The recommended strategy.
    #   @return [String]
    #
    # @!attribute [rw] target_destination
    #   The recommended target destination.
    #   @return [String]
    #
    # @!attribute [rw] transformation_tool
    #   The target destination for the recommendation set.
    #   @return [Types::TransformationTool]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/RecommendationSet AWS API Documentation
    #
    class RecommendationSet < Struct.new(
      :strategy,
      :target_destination,
      :transformation_tool)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the server configured for source code analysis.
    #
    # @!attribute [rw] remote_source_code_analysis_server_configuration_timestamp
    #   The time when the remote source code server was configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/RemoteSourceCodeAnalysisServerInfo AWS API Documentation
    #
    class RemoteSourceCodeAnalysisServerInfo < Struct.new(
      :remote_source_code_analysis_server_configuration_timestamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified ID in the request is not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error in server analysis.
    #
    # @!attribute [rw] analysis_status
    #   The error in server analysis.
    #   @return [Types::AnalysisStatusUnion]
    #
    # @!attribute [rw] analysis_type
    #   The error in server analysis.
    #   @return [String]
    #
    # @!attribute [rw] antipattern_report_result_list
    #   The error in server analysis.
    #   @return [Array<Types::AntipatternReportResult>]
    #
    # @!attribute [rw] status_message
    #   The error in server analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/Result AWS API Documentation
    #
    class Result < Struct.new(
      :analysis_status,
      :analysis_type,
      :antipattern_report_result_list,
      :status_message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains the S3 bucket name and the Amazon S3 key name.
    #
    # @!attribute [rw] s3_bucket
    #   The S3 bucket name.
    #   @return [String]
    #
    # @!attribute [rw] s3key
    #   The Amazon S3 key name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/S3Object AWS API Documentation
    #
    class S3Object < Struct.new(
      :s3_bucket,
      :s3key)
      SENSITIVE = []
      include Aws::Structure
    end

    # Self-managed resources.
    #
    # @!attribute [rw] target_destination
    #   Self-managed resources target destination.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/SelfManageResources AWS API Documentation
    #
    class SelfManageResources < Struct.new(
      :target_destination)
      SENSITIVE = []
      include Aws::Structure
    end

    # Detailed information about a server.
    #
    # @!attribute [rw] antipattern_report_s3_object
    #   The S3 bucket name and Amazon S3 key name for anti-pattern report.
    #   @return [Types::S3Object]
    #
    # @!attribute [rw] antipattern_report_status
    #   The status of the anti-pattern report generation.
    #   @return [String]
    #
    # @!attribute [rw] antipattern_report_status_message
    #   A message about the status of the anti-pattern report generation.
    #   @return [String]
    #
    # @!attribute [rw] application_component_strategy_summary
    #   A list of strategy summaries.
    #   @return [Array<Types::StrategySummary>]
    #
    # @!attribute [rw] data_collection_status
    #   The status of assessment for the server.
    #   @return [String]
    #
    # @!attribute [rw] id
    #   The server ID.
    #   @return [String]
    #
    # @!attribute [rw] last_analyzed_timestamp
    #   The timestamp of when the server was assessed.
    #   @return [Time]
    #
    # @!attribute [rw] list_antipattern_severity_summary
    #   A list of anti-pattern severity summaries.
    #   @return [Array<Types::AntipatternSeveritySummary>]
    #
    # @!attribute [rw] name
    #   The name of the server.
    #   @return [String]
    #
    # @!attribute [rw] recommendation_set
    #   A set of recommendations.
    #   @return [Types::RecommendationSet]
    #
    # @!attribute [rw] server_error
    #   The error in server analysis.
    #   @return [Types::ServerError]
    #
    # @!attribute [rw] server_type
    #   The type of server.
    #   @return [String]
    #
    # @!attribute [rw] status_message
    #   A message about the status of data collection, which contains
    #   detailed descriptions of any error messages.
    #   @return [String]
    #
    # @!attribute [rw] system_info
    #   System information about the server.
    #   @return [Types::SystemInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServerDetail AWS API Documentation
    #
    class ServerDetail < Struct.new(
      :antipattern_report_s3_object,
      :antipattern_report_status,
      :antipattern_report_status_message,
      :application_component_strategy_summary,
      :data_collection_status,
      :id,
      :last_analyzed_timestamp,
      :list_antipattern_severity_summary,
      :name,
      :recommendation_set,
      :server_error,
      :server_type,
      :status_message,
      :system_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The error in server analysis.
    #
    # @!attribute [rw] server_error_category
    #   The error category of server analysis.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServerError AWS API Documentation
    #
    class ServerError < Struct.new(
      :server_error_category)
      SENSITIVE = []
      include Aws::Structure
    end

    # The status summary of the server analysis.
    #
    # @!attribute [rw] count
    #   The number of servers successfully analyzed, partially successful or
    #   failed analysis.
    #   @return [Integer]
    #
    # @!attribute [rw] run_time_assessment_status
    #   The status of the run time.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServerStatusSummary AWS API Documentation
    #
    class ServerStatusSummary < Struct.new(
      :count,
      :run_time_assessment_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains information about a strategy recommendation for a server.
    #
    # @!attribute [rw] is_preferred
    #   Set to true if the recommendation is set as preferred.
    #   @return [Boolean]
    #
    # @!attribute [rw] number_of_application_components
    #   The number of application components with this strategy
    #   recommendation running on the server.
    #   @return [Integer]
    #
    # @!attribute [rw] recommendation
    #   Strategy recommendation for the server.
    #   @return [Types::RecommendationSet]
    #
    # @!attribute [rw] status
    #   The recommendation status of the strategy for the server.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServerStrategy AWS API Documentation
    #
    class ServerStrategy < Struct.new(
      :is_preferred,
      :number_of_application_components,
      :recommendation,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing details about the servers imported by Application
    # Discovery Service
    #
    # @!attribute [rw] server_os_type
    #   Type of operating system for the servers.
    #   @return [String]
    #
    # @!attribute [rw] count
    #   Number of servers.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServerSummary AWS API Documentation
    #
    class ServerSummary < Struct.new(
      :server_os_type,
      :count)
      SENSITIVE = []
      include Aws::Structure
    end

    # Exception to indicate that the service-linked role (SLR) is locked.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServiceLinkedRoleLockClientException AWS API Documentation
    #
    class ServiceLinkedRoleLockClientException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The AWS account has reached its quota of imports. Contact AWS Support
    # to increase the quota for this account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing source code information that is linked to an
    # application component.
    #
    # @!attribute [rw] location
    #   The repository name for the source code.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] source_version
    #   The branch of the source code.
    #   @return [String]
    #
    # @!attribute [rw] version_control
    #   The type of repository to use for the source code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/SourceCode AWS API Documentation
    #
    class SourceCode < Struct.new(
      :location,
      :project_name,
      :source_version,
      :version_control)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing source code information that is linked to an
    # application component.
    #
    # @!attribute [rw] branch
    #   The branch of the source code.
    #   @return [String]
    #
    # @!attribute [rw] project_name
    #   The name of the project.
    #   @return [String]
    #
    # @!attribute [rw] repository
    #   The repository name for the source code.
    #   @return [String]
    #
    # @!attribute [rw] version_control_type
    #   The type of repository to use for the source code.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/SourceCodeRepository AWS API Documentation
    #
    class SourceCodeRepository < Struct.new(
      :branch,
      :project_name,
      :repository,
      :version_control_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_targets
    #   List of criteria for assessment.
    #   @return [Array<Types::AssessmentTarget>]
    #
    # @!attribute [rw] s3bucket_for_analysis_data
    #   The S3 bucket used by the collectors to send analysis data to the
    #   service. The bucket name must begin with `migrationhub-strategy-`.
    #   @return [String]
    #
    # @!attribute [rw] s3bucket_for_report_data
    #   The S3 bucket where all the reports generated by the service are
    #   stored. The bucket name must begin with `migrationhub-strategy-`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartAssessmentRequest AWS API Documentation
    #
    class StartAssessmentRequest < Struct.new(
      :assessment_targets,
      :s3bucket_for_analysis_data,
      :s3bucket_for_report_data)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_id
    #   The ID of the assessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartAssessmentResponse AWS API Documentation
    #
    class StartAssessmentResponse < Struct.new(
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] s3_bucket
    #   The S3 bucket where the import file is located. The bucket name is
    #   required to begin with `migrationhub-strategy-`.
    #   @return [String]
    #
    # @!attribute [rw] data_source_type
    #   Specifies the source that the servers are coming from. By default,
    #   Strategy Recommendations assumes that the servers specified in the
    #   import file are available in AWS Application Discovery Service.
    #   @return [String]
    #
    # @!attribute [rw] group_id
    #   Groups the resources in the import file together with a unique name.
    #   This ID can be as filter in `ListApplicationComponents` and
    #   `ListServers`.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] name
    #   A descriptive name for the request.
    #   @return [String]
    #
    # @!attribute [rw] s3bucket_for_report_data
    #   The S3 bucket where Strategy Recommendations uploads import results.
    #   The bucket name is required to begin with migrationhub-strategy-.
    #   @return [String]
    #
    # @!attribute [rw] s3key
    #   The Amazon S3 key name of the import file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartImportFileTaskRequest AWS API Documentation
    #
    class StartImportFileTaskRequest < Struct.new(
      :s3_bucket,
      :data_source_type,
      :group_id,
      :name,
      :s3bucket_for_report_data,
      :s3key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID for a specific import task. The ID is unique within an AWS
    #   account.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartImportFileTaskResponse AWS API Documentation
    #
    class StartImportFileTaskResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] group_id_filter
    #   Groups the resources in the recommendation report with a unique
    #   name.
    #   @return [Array<Types::Group>]
    #
    # @!attribute [rw] output_format
    #   The output format for the recommendation report file. The default
    #   format is Microsoft Excel.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartRecommendationReportGenerationRequest AWS API Documentation
    #
    class StartRecommendationReportGenerationRequest < Struct.new(
      :group_id_filter,
      :output_format)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] id
    #   The ID of the recommendation report generation task.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StartRecommendationReportGenerationResponse AWS API Documentation
    #
    class StartRecommendationReportGenerationResponse < Struct.new(
      :id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] assessment_id
    #   The `assessmentId` returned by StartAssessment.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StopAssessmentRequest AWS API Documentation
    #
    class StopAssessmentRequest < Struct.new(
      :assessment_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StopAssessmentResponse AWS API Documentation
    #
    class StopAssessmentResponse < Aws::EmptyStructure; end

    # Information about all the available strategy options for migrating and
    # modernizing an application component.
    #
    # @!attribute [rw] is_preferred
    #   Indicates if a specific strategy is preferred for the application
    #   component.
    #   @return [Boolean]
    #
    # @!attribute [rw] strategy
    #   Type of transformation. For example, Rehost, Replatform, and so on.
    #   @return [String]
    #
    # @!attribute [rw] target_destination
    #   Destination information about where the application component can
    #   migrate to. For example, `EC2`, `ECS`, and so on.
    #   @return [String]
    #
    # @!attribute [rw] tool_name
    #   The name of the tool that can be used to transform an application
    #   component using this strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StrategyOption AWS API Documentation
    #
    class StrategyOption < Struct.new(
      :is_preferred,
      :strategy,
      :target_destination,
      :tool_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Object containing the summary of the strategy recommendations.
    #
    # @!attribute [rw] count
    #   The count of recommendations per strategy.
    #   @return [Integer]
    #
    # @!attribute [rw] strategy
    #   The name of recommended strategy.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/StrategySummary AWS API Documentation
    #
    class StrategySummary < Struct.new(
      :count,
      :strategy)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the server that hosts application components.
    #
    # @!attribute [rw] cpu_architecture
    #   CPU architecture type for the server.
    #   @return [String]
    #
    # @!attribute [rw] file_system_type
    #   File system type for the server.
    #   @return [String]
    #
    # @!attribute [rw] network_info_list
    #   Networking information related to a server.
    #   @return [Array<Types::NetworkInfo>]
    #
    # @!attribute [rw] os_info
    #   Operating system corresponding to a server.
    #   @return [Types::OSInfo]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/SystemInfo AWS API Documentation
    #
    class SystemInfo < Struct.new(
      :cpu_architecture,
      :file_system_type,
      :network_info_list,
      :os_info)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was denied due to request throttling.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information of the transformation tool that can be used to migrate and
    # modernize the application.
    #
    # @!attribute [rw] description
    #   Description of the tool.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   Name of the tool.
    #   @return [String]
    #
    # @!attribute [rw] tranformation_tool_installation_link
    #   URL for installing the tool.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/TransformationTool AWS API Documentation
    #
    class TransformationTool < Struct.new(
      :description,
      :name,
      :tranformation_tool_installation_link)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] app_type
    #   The type of known component.
    #   @return [String]
    #
    # @!attribute [rw] application_component_id
    #   The ID of the application component. The ID is unique within an AWS
    #   account.
    #   @return [String]
    #
    # @!attribute [rw] configure_only
    #   Update the configuration request of an application component. If it
    #   is set to true, the source code and/or database credentials are
    #   updated. If it is set to false, the source code and/or database
    #   credentials are updated and an analysis is initiated.
    #   @return [Boolean]
    #
    # @!attribute [rw] inclusion_status
    #   Indicates whether the application component has been included for
    #   server recommendation or not.
    #   @return [String]
    #
    # @!attribute [rw] secrets_manager_key
    #   Database credentials.
    #   @return [String]
    #
    # @!attribute [rw] source_code_list
    #   The list of source code configurations to update for the application
    #   component.
    #   @return [Array<Types::SourceCode>]
    #
    # @!attribute [rw] strategy_option
    #   The preferred strategy options for the application component. Use
    #   values from the GetApplicationComponentStrategies response.
    #   @return [Types::StrategyOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/UpdateApplicationComponentConfigRequest AWS API Documentation
    #
    class UpdateApplicationComponentConfigRequest < Struct.new(
      :app_type,
      :application_component_id,
      :configure_only,
      :inclusion_status,
      :secrets_manager_key,
      :source_code_list,
      :strategy_option)
      SENSITIVE = [:secrets_manager_key]
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/UpdateApplicationComponentConfigResponse AWS API Documentation
    #
    class UpdateApplicationComponentConfigResponse < Aws::EmptyStructure; end

    # @!attribute [rw] server_id
    #   The ID of the server.
    #   @return [String]
    #
    # @!attribute [rw] strategy_option
    #   The preferred strategy options for the application component. See
    #   the response from GetServerStrategies.
    #   @return [Types::StrategyOption]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/UpdateServerConfigRequest AWS API Documentation
    #
    class UpdateServerConfigRequest < Struct.new(
      :server_id,
      :strategy_option)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/UpdateServerConfigResponse AWS API Documentation
    #
    class UpdateServerConfigResponse < Aws::EmptyStructure; end

    # The request body isn't valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the server in vCenter.
    #
    # @!attribute [rw] os_type
    #   The type of the operating system.
    #   @return [String]
    #
    # @!attribute [rw] vcenter_configuration_time_stamp
    #   The time when the remote server based on vCenter was last
    #   configured.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/VcenterBasedRemoteInfo AWS API Documentation
    #
    class VcenterBasedRemoteInfo < Struct.new(
      :os_type,
      :vcenter_configuration_time_stamp)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details about the version control configuration.
    #
    # @!attribute [rw] version_control_configuration_time_stamp
    #   The time when the version control system was last configured.
    #   @return [String]
    #
    # @!attribute [rw] version_control_type
    #   The type of version control.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/migrationhubstrategy-2020-02-19/VersionControlInfo AWS API Documentation
    #
    class VersionControlInfo < Struct.new(
      :version_control_configuration_time_stamp,
      :version_control_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
