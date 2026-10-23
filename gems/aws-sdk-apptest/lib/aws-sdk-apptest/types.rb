# frozen_string_literal: true

# This is generated code!

module Aws::AppTest
  # This module contains the types returned by client operations.
  module Types

    # <p>The account or role doesn't have the right permissions to make the request.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a batch.</p>
    # @!attribute batch_job_name
    #   <p>The job name of the batch.</p>
    #   @return [String]
    # @!attribute batch_job_parameters
    #   <p>The batch job parameters of the batch.</p>
    #   @return [Hash<String, String>]
    # @!attribute export_data_set_names
    #   <p>The export data set names of the batch.</p>
    #   @return [Array<String>]
    class Batch < Struct.new(
      nil,
      :batch_job_name,
      :batch_job_parameters,
      :export_data_set_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a batch step input.</p>
    # @!attribute resource
    #   <p>The resource of the batch step input.</p>
    #   @return [Types::MainframeResourceSummary]
    # @!attribute batch_job_name
    #   <p>The batch job name of the batch step input.</p>
    #   @return [String]
    # @!attribute batch_job_parameters
    #   <p>The batch job parameters of the batch step input.</p>
    #   @return [Hash<String, String>]
    # @!attribute export_data_set_names
    #   <p>The export data set names of the batch step input.</p>
    #   @return [Array<String>]
    # @!attribute properties
    #   <p>The properties of the batch step input.</p>
    #   @return [Types::MainframeActionProperties]
    class BatchStepInput < Struct.new(
      nil,
      :resource,
      :batch_job_name,
      :batch_job_parameters,
      :export_data_set_names,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a batch step output.</p>
    # @!attribute data_set_export_location
    #   <p>The data set export location of the batch step output.</p>
    #   @return [String]
    # @!attribute dms_output_location
    #   <p>The Database Migration Service (DMS) output location of the batch step output.</p>
    #   @return [String]
    # @!attribute data_set_details
    #   <p>The data set details of the batch step output.</p>
    #   @return [Array<Types::DataSet>]
    class BatchStepOutput < Struct.new(
      nil,
      :data_set_export_location,
      :dms_output_location,
      :data_set_details,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summarizes a batch job.</p>
    # @!attribute step_input
    #   <p>The step input of the batch summary.</p>
    #   @return [Types::BatchStepInput]
    # @!attribute step_output
    #   <p>The step output of the batch summary.</p>
    #   @return [Types::BatchStepOutput]
    class BatchSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the CloudFormation template and its parameters.</p>
    # @!attribute template_location
    #   <p>The template location of the CloudFormation template.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The CloudFormation properties in the CloudFormation template.</p>
    #   @return [Hash<String, String>]
    class CloudFormation < Struct.new(
      nil,
      :template_location,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the CloudFormation action.</p>
    # @!attribute resource
    #   <p>The resource of the CloudFormation action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The action type of the CloudFormation action.</p>
    #   @return [String]
    class CloudFormationAction < Struct.new(
      nil,
      :resource,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the CloudFormation step summary.</p>
    # @!attribute create_cloudformation
    #   <p>Creates the CloudFormation summary of the step.</p>
    #   @return [Types::CreateCloudFormationSummary]
    # @!attribute delete_cloudformation
    #   <p>Deletes the CloudFormation summary of the CloudFormation step summary.</p>
    #   @return [Types::DeleteCloudFormationSummary]
    class CloudFormationStepSummary < Struct.new(
      :create_cloudformation,
      :delete_cloudformation,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CreateCloudformation < CloudFormationStepSummary; end
      class DeleteCloudformation < CloudFormationStepSummary; end
      class Unknown < CloudFormationStepSummary; end
    end

    # <p>Compares the action.</p>
    # @!attribute input
    #   <p>The input of the compare action.</p>
    #   @return [Types::Input]
    # @!attribute output
    #   <p>The output of the compare action.</p>
    #   @return [Types::Output]
    class CompareAction < Struct.new(
      nil,
      :input,
      :output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the compare action summary.</p>
    # @!attribute type
    #   <p>The type of the compare action summary.</p>
    #   @return [Types::File]
    class CompareActionSummary < Struct.new(
      nil,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the compare data sets step input.</p>
    # @!attribute source_location
    #   <p>The source location of the compare data sets step input location.</p>
    #   @return [String]
    # @!attribute target_location
    #   <p>The target location of the compare data sets step input location.</p>
    #   @return [String]
    # @!attribute source_data_sets
    #   <p>The source data sets of the compare data sets step input location.</p>
    #   @return [Array<Types::DataSet>]
    # @!attribute target_data_sets
    #   <p>The target data sets of the compare data sets step input location.</p>
    #   @return [Array<Types::DataSet>]
    class CompareDataSetsStepInput < Struct.new(
      nil,
      :source_location,
      :target_location,
      :source_data_sets,
      :target_data_sets,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the compare data sets step output.</p>
    # @!attribute comparison_output_location
    #   <p>The comparison output location of the compare data sets step output.</p>
    #   @return [String]
    # @!attribute comparison_status
    #   <p>The comparison status of the compare data sets step output.</p>
    #   @return [String]
    class CompareDataSetsStepOutput < Struct.new(
      nil,
      :comparison_output_location,
      :comparison_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Compares data sets summary.</p>
    # @!attribute step_input
    #   <p>The step input of the compare data sets summary.</p>
    #   @return [Types::CompareDataSetsStepInput]
    # @!attribute step_output
    #   <p>The step output of the compare data sets summary.</p>
    #   @return [Types::CompareDataSetsStepOutput]
    class CompareDataSetsSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Compares the database Change Data Capture (CDC) step input.</p>
    # @!attribute source_location
    #   <p>The source location of the compare database CDC step input.</p>
    #   @return [String]
    # @!attribute target_location
    #   <p>The target location of the compare database CDC step input.</p>
    #   @return [String]
    # @!attribute output_location
    #   <p>The output location of the compare database CDC step input.</p>
    #   @return [String]
    # @!attribute source_metadata
    #   <p>The source metadata of the compare database CDC step input.</p>
    #   @return [Types::SourceDatabaseMetadata]
    # @!attribute target_metadata
    #   <p>The target metadata location of the compare database CDC step input.</p>
    #   @return [Types::TargetDatabaseMetadata]
    class CompareDatabaseCDCStepInput < Struct.new(
      nil,
      :source_location,
      :target_location,
      :output_location,
      :source_metadata,
      :target_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Compares the database CDC step output.</p>
    # @!attribute comparison_output_location
    #   <p>The comparison output of the compare database CDC step output.</p>
    #   @return [String]
    # @!attribute comparison_status
    #   <p>The comparison status of the compare database CDC step output.</p>
    #   @return [String]
    class CompareDatabaseCDCStepOutput < Struct.new(
      nil,
      :comparison_output_location,
      :comparison_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Compares the database CDC summary.</p>
    # @!attribute step_input
    #   <p>The step input of the compare database CDC summary.</p>
    #   @return [Types::CompareDatabaseCDCStepInput]
    # @!attribute step_output
    #   <p>The step output of the compare database CDC summary.</p>
    #   @return [Types::CompareDatabaseCDCStepOutput]
    class CompareDatabaseCDCSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Compares the file type.</p>
    # @!attribute datasets
    #   <p>The data sets in the compare file type.</p>
    #   @return [Types::CompareDataSetsSummary]
    # @!attribute database_cdc
    #   <p>The database CDC of the compare file type.</p>
    #   @return [Types::CompareDatabaseCDCSummary]
    class CompareFileType < Struct.new(
      :datasets,
      :database_cdc,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Datasets < CompareFileType; end
      class DatabaseCDC < CompareFileType; end
      class Unknown < CompareFileType; end
    end

    # <p>The parameters provided in the request conflict with existing resources.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the conflicts with existing resources.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the conflicts with existing resources.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates the CloudFormation step input.</p>
    # @!attribute template_location
    #   <p>The template location of the CloudFormation step input.</p>
    #   @return [String]
    # @!attribute parameters
    #   <p>The CloudFormation properties of the CloudFormation step input.</p>
    #   @return [Hash<String, String>]
    class CreateCloudFormationStepInput < Struct.new(
      nil,
      :template_location,
      :parameters,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a CloudFormation step output.</p>
    # @!attribute stack_id
    #   <p>The stack ID of the CloudFormation step output.</p>
    #   @return [String]
    # @!attribute exports
    #   <p>The exports of the CloudFormation step output.</p>
    #   @return [Hash<String, String>]
    class CreateCloudFormationStepOutput < Struct.new(
      nil,
      :stack_id,
      :exports,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Creates a CloudFormation summary.</p>
    # @!attribute step_input
    #   <p>The step input of the CloudFormation summary.</p>
    #   @return [Types::CreateCloudFormationStepInput]
    # @!attribute step_output
    #   <p>The step output of the CloudFormation summary.</p>
    #   @return [Types::CreateCloudFormationStepOutput]
    class CreateCloudFormationSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the test case.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test case.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>The steps in the test case.</p>
    #   @return [Array<Types::Step>]
    # @!attribute client_token
    #   <p>The client token of the test case.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The specified tags of the test case.</p>
    #   @return [Hash<String, String>]
    class CreateTestCaseRequest < Struct.new(
      nil,
      :name,
      :description,
      :steps,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_case_id
    #   <p>The test case ID of the test case.</p>
    #   @return [String]
    # @!attribute test_case_version
    #   <p>The test case version of the test case.</p>
    #   @return [Integer]
    class CreateTestCaseResponse < Struct.new(
      nil,
      :test_case_id,
      :test_case_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the test configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test configuration.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The defined resources of the test configuration.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute properties
    #   <p>The properties of the test configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>The client token of the test configuration.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the test configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_settings
    #   <p>The service settings of the test configuration.</p>
    #   @return [Types::ServiceSettings]
    class CreateTestConfigurationRequest < Struct.new(
      nil,
      :name,
      :description,
      :resources,
      :properties,
      :client_token,
      :tags,
      :service_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_id
    #   <p>The test configuration ID.</p>
    #   @return [String]
    # @!attribute test_configuration_version
    #   <p>The test configuration version.</p>
    #   @return [Integer]
    class CreateTestConfigurationResponse < Struct.new(
      nil,
      :test_configuration_id,
      :test_configuration_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute name
    #   <p>The name of the test suite.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test suite.</p>
    #   @return [String]
    # @!attribute before_steps
    #   <p>The before steps of the test suite.</p>
    #   @return [Array<Types::Step>]
    # @!attribute after_steps
    #   <p>The after steps of the test suite.</p>
    #   @return [Array<Types::Step>]
    # @!attribute test_cases
    #   <p>The test cases in the test suite.</p>
    #   @return [Types::TestCases]
    # @!attribute client_token
    #   <p>The client token of the test suite.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the test suite.</p>
    #   @return [Hash<String, String>]
    class CreateTestSuiteRequest < Struct.new(
      nil,
      :name,
      :description,
      :before_steps,
      :after_steps,
      :test_cases,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The suite ID of the test suite.</p>
    #   @return [String]
    # @!attribute test_suite_version
    #   <p>The suite version of the test suite.</p>
    #   @return [Integer]
    class CreateTestSuiteResponse < Struct.new(
      nil,
      :test_suite_id,
      :test_suite_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a data set.</p>
    # @!attribute type
    #   <p>The type of the data set.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the data set.</p>
    #   @return [String]
    # @!attribute ccsid
    #   <p>The CCSID of the data set.</p>
    #   @return [String]
    # @!attribute format
    #   <p>The format of the data set.</p>
    #   @return [String]
    # @!attribute length
    #   <p>The length of the data set.</p>
    #   @return [Integer]
    class DataSet < Struct.new(
      nil,
      :type,
      :name,
      :ccsid,
      :format,
      :length,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines the Change Data Capture (CDC) of the database.</p>
    # @!attribute source_metadata
    #   <p>The source metadata of the database CDC.</p>
    #   @return [Types::SourceDatabaseMetadata]
    # @!attribute target_metadata
    #   <p>The target metadata of the database CDC.</p>
    #   @return [Types::TargetDatabaseMetadata]
    class DatabaseCDC < Struct.new(
      nil,
      :source_metadata,
      :target_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes the CloudFormation step input.</p>
    # @!attribute stack_id
    #   <p>The stack ID of the deleted CloudFormation step input.</p>
    #   @return [String]
    class DeleteCloudFormationStepInput < Struct.new(
      nil,
      :stack_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes the CloudFormation summary step output.</p>
    class DeleteCloudFormationStepOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Deletes the CloudFormation summary.</p>
    # @!attribute step_input
    #   <p>The step input of the deleted CloudFormation summary.</p>
    #   @return [Types::DeleteCloudFormationStepInput]
    # @!attribute step_output
    #   <p>The step output of the deleted CloudFormation summary.</p>
    #   @return [Types::DeleteCloudFormationStepOutput]
    class DeleteCloudFormationSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_case_id
    #   <p>The test case ID of the test case.</p>
    #   @return [String]
    class DeleteTestCaseRequest < Struct.new(
      nil,
      :test_case_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTestCaseResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_id
    #   <p>The test ID of the test configuration.</p>
    #   @return [String]
    class DeleteTestConfigurationRequest < Struct.new(
      nil,
      :test_configuration_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTestConfigurationResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The run ID of the test run.</p>
    #   @return [String]
    class DeleteTestRunRequest < Struct.new(
      nil,
      :test_run_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTestRunResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The test ID of the test suite.</p>
    #   @return [String]
    class DeleteTestSuiteRequest < Struct.new(
      nil,
      :test_suite_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteTestSuiteResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a file.</p>
    # @!attribute file_type
    #   <p>The file type of the file.</p>
    #   @return [Types::CompareFileType]
    class File < Struct.new(
      :file_type,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class FileType < File; end
      class Unknown < File; end
    end

    # <p>Specifies a file metadata.</p>
    # @!attribute data_sets
    #   <p>The data sets of the file metadata.</p>
    #   @return [Array<Types::DataSet>]
    # @!attribute database_cdc
    #   <p>The database CDC of the file metadata.</p>
    #   @return [Types::DatabaseCDC]
    class FileMetadata < Struct.new(
      :data_sets,
      :database_cdc,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class DataSets < FileMetadata; end
      class DatabaseCDC < FileMetadata; end
      class Unknown < FileMetadata; end
    end

    # @!attribute test_case_id
    #   <p>The request test ID of the test case.</p>
    #   @return [String]
    # @!attribute test_case_version
    #   <p>The test case version of the test case.</p>
    #   @return [Integer]
    class GetTestCaseRequest < Struct.new(
      nil,
      :test_case_id,
      :test_case_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_case_id
    #   <p>The response test ID of the test case.</p>
    #   @return [String]
    # @!attribute test_case_arn
    #   <p>The Amazon Resource Name (ARN) of the test case.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test case.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test case.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the test case.</p>
    #   @return [Types::TestCaseLatestVersion]
    # @!attribute test_case_version
    #   <p>The case version of the test case.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test case.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test case.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the test case.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the test case.</p>
    #   @return [Time]
    # @!attribute steps
    #   <p>The steps of the test case.</p>
    #   @return [Array<Types::Step>]
    # @!attribute tags
    #   <p>The tags of the test case.</p>
    #   @return [Hash<String, String>]
    class GetTestCaseResponse < Struct.new(
      nil,
      :test_case_id,
      :test_case_arn,
      :name,
      :description,
      :latest_version,
      :test_case_version,
      :status,
      :status_reason,
      :creation_time,
      :last_update_time,
      :steps,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_id
    #   <p>The request test configuration ID.</p>
    #   @return [String]
    # @!attribute test_configuration_version
    #   <p>The test configuration version.</p>
    #   @return [Integer]
    class GetTestConfigurationRequest < Struct.new(
      nil,
      :test_configuration_id,
      :test_configuration_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_id
    #   <p>The response test configuration ID.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The test configuration name</p>
    #   @return [String]
    # @!attribute test_configuration_arn
    #   <p>The test configuration Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the test configuration.</p>
    #   @return [Types::TestConfigurationLatestVersion]
    # @!attribute test_configuration_version
    #   <p>The test configuration version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test configuration.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test configuration.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the test configuration.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the test configuration.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the test configuration.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources of the test configuration.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute properties
    #   <p>The properties of the test configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute tags
    #   <p>The tags of the test configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_settings
    #   <p>The service settings of the test configuration.</p>
    #   @return [Types::ServiceSettings]
    class GetTestConfigurationResponse < Struct.new(
      nil,
      :test_configuration_id,
      :name,
      :test_configuration_arn,
      :latest_version,
      :test_configuration_version,
      :status,
      :status_reason,
      :creation_time,
      :last_update_time,
      :description,
      :resources,
      :properties,
      :tags,
      :service_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The test run ID of the test run step.</p>
    #   @return [String]
    # @!attribute step_name
    #   <p>The step name of the test run step.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The test case ID of a test run step.</p>
    #   @return [String]
    # @!attribute test_suite_id
    #   <p>The test suite ID of a test run step.</p>
    #   @return [String]
    class GetTestRunStepRequest < Struct.new(
      nil,
      :test_run_id,
      :step_name,
      :test_case_id,
      :test_suite_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute step_name
    #   <p>The step name of the test run step.</p>
    #   @return [String]
    # @!attribute test_run_id
    #   <p>The test run ID of the test run step.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The test case ID of the test run step.</p>
    #   @return [String]
    # @!attribute test_case_version
    #   <p>The test case version of the test run step.</p>
    #   @return [Integer]
    # @!attribute test_suite_id
    #   <p>The test suite ID of the test run step.</p>
    #   @return [String]
    # @!attribute test_suite_version
    #   <p>The test suite version of the test run step.</p>
    #   @return [Integer]
    # @!attribute before_step
    #   <p>The before steps of the test run step.</p>
    #   @return [Boolean]
    # @!attribute after_step
    #   <p>The after steps of the test run step.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the test run step.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test run step.</p>
    #   @return [String]
    # @!attribute run_start_time
    #   <p>The run start time of the test run step.</p>
    #   @return [Time]
    # @!attribute run_end_time
    #   <p>The run end time of the test run step.</p>
    #   @return [Time]
    # @!attribute step_run_summary
    #   <p>The step run summary of the test run step.</p>
    #   @return [Types::StepRunSummary]
    class GetTestRunStepResponse < Struct.new(
      nil,
      :step_name,
      :test_run_id,
      :test_case_id,
      :test_case_version,
      :test_suite_id,
      :test_suite_version,
      :before_step,
      :after_step,
      :status,
      :status_reason,
      :run_start_time,
      :run_end_time,
      :step_run_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The ID of the test suite.</p>
    #   @return [String]
    # @!attribute test_suite_version
    #   <p>The version of the test suite.</p>
    #   @return [Integer]
    class GetTestSuiteRequest < Struct.new(
      nil,
      :test_suite_id,
      :test_suite_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The response ID of the test suite.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test suite.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the test suite.</p>
    #   @return [Types::TestSuiteLatestVersion]
    # @!attribute test_suite_version
    #   <p>The version of the test suite.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test suite.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test suite.</p>
    #   @return [String]
    # @!attribute test_suite_arn
    #   <p>The test suite Amazon Resource Name (ARN).</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the test suite.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the test suite.</p>
    #   @return [Time]
    # @!attribute description
    #   <p>The description of the test suite.</p>
    #   @return [String]
    # @!attribute before_steps
    #   <p>The before steps of the test suite.</p>
    #   @return [Array<Types::Step>]
    # @!attribute after_steps
    #   <p>The after steps of the test suite.  </p>
    #   @return [Array<Types::Step>]
    # @!attribute test_cases
    #   <p>The test cases of the test suite.</p>
    #   @return [Types::TestCases]
    # @!attribute tags
    #   <p>The tags of the test suite.</p>
    #   @return [Hash<String, String>]
    class GetTestSuiteResponse < Struct.new(
      nil,
      :test_suite_id,
      :name,
      :latest_version,
      :test_suite_version,
      :status,
      :status_reason,
      :test_suite_arn,
      :creation_time,
      :last_update_time,
      :description,
      :before_steps,
      :after_steps,
      :test_cases,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the input.</p>
    # @!attribute file
    #   <p>The file in the input.</p>
    #   @return [Types::InputFile]
    class Input < Struct.new(
      :file,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class File < Input; end
      class Unknown < Input; end
    end

    # <p>Specifies the input file.</p>
    # @!attribute source_location
    #   <p>The source location of the input file.</p>
    #   @return [String]
    # @!attribute target_location
    #   <p>The target location of the input file.</p>
    #   @return [String]
    # @!attribute file_metadata
    #   <p>The file metadata of the input file.</p>
    #   @return [Types::FileMetadata]
    class InputFile < Struct.new(
      nil,
      :source_location,
      :target_location,
      :file_metadata,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An unexpected error occurred during the processing of the request.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to retry the query.</p>
    #   @return [Integer]
    class InternalServerException < Struct.new(
      nil,
      :message,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      nil,
      :resource_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags of the resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      nil,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_case_ids
    #   <p>The IDs of the test cases.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The next token of the test cases.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum results of the test case.</p>
    #   @return [Integer]
    class ListTestCasesRequest < Struct.new(
      nil,
      :test_case_ids,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_cases
    #   <p>The test cases in an application.</p>
    #   @return [Array<Types::TestCaseSummary>]
    # @!attribute next_token
    #   <p>The next token in test cases.</p>
    #   @return [String]
    class ListTestCasesResponse < Struct.new(
      nil,
      :test_cases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_ids
    #   <p>The configuration IDs of the test configurations.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The next token for the test configurations.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum results of the test configuration.</p>
    #   @return [Integer]
    class ListTestConfigurationsRequest < Struct.new(
      nil,
      :test_configuration_ids,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configurations
    #   <p>The test configurations.</p>
    #   @return [Array<Types::TestConfigurationSummary>]
    # @!attribute next_token
    #   <p>The next token in the test configurations.</p>
    #   @return [String]
    class ListTestConfigurationsResponse < Struct.new(
      nil,
      :test_configurations,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The test run ID of the test run steps.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The test case ID of the test run steps.</p>
    #   @return [String]
    # @!attribute test_suite_id
    #   <p>The test suite ID of the test run steps.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token from a previous step to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of test run steps to return in one page of results.</p>
    #   @return [Integer]
    class ListTestRunStepsRequest < Struct.new(
      nil,
      :test_run_id,
      :test_case_id,
      :test_suite_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_steps
    #   <p>The test run steps of the response query.</p>
    #   @return [Array<Types::TestRunStepSummary>]
    # @!attribute next_token
    #   <p>The token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListTestRunStepsResponse < Struct.new(
      nil,
      :test_run_steps,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The test run ID of the test cases.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>The token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of test run test cases to return in one page of results.</p>
    #   @return [Integer]
    class ListTestRunTestCasesRequest < Struct.new(
      nil,
      :test_run_id,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_test_cases
    #   <p>The test run of the test cases.</p>
    #   @return [Array<Types::TestCaseRunSummary>]
    # @!attribute next_token
    #   <p>The token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListTestRunTestCasesResponse < Struct.new(
      nil,
      :test_run_test_cases,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The test suite ID of the test runs.</p>
    #   @return [String]
    # @!attribute test_run_ids
    #   <p>The test run IDs of the test runs.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token from the previous request to retrieve the next page of test run results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of test runs to return in one page of results.</p>
    #   @return [Integer]
    class ListTestRunsRequest < Struct.new(
      nil,
      :test_suite_id,
      :test_run_ids,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_runs
    #   <p>The test runs of the response query.</p>
    #   @return [Array<Types::TestRunSummary>]
    # @!attribute next_token
    #   <p>The token from the previous request to retrieve the next page of results.</p>
    #   @return [String]
    class ListTestRunsResponse < Struct.new(
      nil,
      :test_runs,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_ids
    #   <p>The suite ID of the test suites.</p>
    #   @return [Array<String>]
    # @!attribute next_token
    #   <p>The token from a previous request to retrieve the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of test suites to return in one page of results.</p>
    #   @return [Integer]
    class ListTestSuitesRequest < Struct.new(
      nil,
      :test_suite_ids,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suites
    #   <p>The test suites returned with the response query.</p>
    #   @return [Array<Types::TestSuiteSummary>]
    # @!attribute next_token
    #   <p>The token from a previous request to retrieve the next page of test suites results.</p>
    #   @return [String]
    class ListTestSuitesResponse < Struct.new(
      nil,
      :test_suites,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed action properties.</p>
    # @!attribute force_stop
    #   <p>Force stops the AWS Mainframe Modernization managed action properties.</p>
    #   @return [Boolean]
    # @!attribute import_data_set_location
    #   <p>The import data set location of the AWS Mainframe Modernization managed action properties.</p>
    #   @return [String]
    class M2ManagedActionProperties < Struct.new(
      nil,
      :force_stop,
      :import_data_set_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed application.</p>
    # @!attribute application_id
    #   <p>The application ID of the AWS Mainframe Modernization managed application.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime of the AWS Mainframe Modernization managed application.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_service_name
    #   <p>The VPC endpoint service name of the AWS Mainframe Modernization managed application.</p>
    #   @return [String]
    # @!attribute listener_port
    #   <p>The listener port of the AWS Mainframe Modernization managed application.</p>
    #   @return [String]
    class M2ManagedApplication < Struct.new(
      nil,
      :application_id,
      :runtime,
      :vpc_endpoint_service_name,
      :listener_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed application action.</p>
    # @!attribute resource
    #   <p>The resource of the AWS Mainframe Modernization managed application action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The action type of the AWS Mainframe Modernization managed application action.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties of the AWS Mainframe Modernization managed application action.</p>
    #   @return [Types::M2ManagedActionProperties]
    class M2ManagedApplicationAction < Struct.new(
      nil,
      :resource,
      :action_type,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed application step input.</p>
    # @!attribute application_id
    #   <p>The application ID of the AWS Mainframe Modernization managed application step input.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime of the AWS Mainframe Modernization managed application step input.</p>
    #   @return [String]
    # @!attribute vpc_endpoint_service_name
    #   <p>The VPC endpoint service name of the AWS Mainframe Modernization managed application step input.</p>
    #   @return [String]
    # @!attribute listener_port
    #   <p>The listener port of the AWS Mainframe Modernization managed application step input.</p>
    #   @return [Integer]
    # @!attribute action_type
    #   <p>The action type of the AWS Mainframe Modernization managed application step input.</p>
    #   @return [String]
    # @!attribute properties
    #   <p>The properties of the AWS Mainframe Modernization managed application step input.</p>
    #   @return [Types::M2ManagedActionProperties]
    class M2ManagedApplicationStepInput < Struct.new(
      nil,
      :application_id,
      :runtime,
      :vpc_endpoint_service_name,
      :listener_port,
      :action_type,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed application step output.</p>
    # @!attribute import_data_set_summary
    #   <p>The import data set summary of the AWS Mainframe Modernization managed application step output.</p>
    #   @return [Hash<String, String>]
    class M2ManagedApplicationStepOutput < Struct.new(
      nil,
      :import_data_set_summary,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed application step summary.</p>
    # @!attribute step_input
    #   <p>The step input of the AWS Mainframe Modernization managed application step summary.</p>
    #   @return [Types::M2ManagedApplicationStepInput]
    # @!attribute step_output
    #   <p>The step output of the AWS Mainframe Modernization managed application step summary.</p>
    #   @return [Types::M2ManagedApplicationStepOutput]
    class M2ManagedApplicationStepSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization managed application summary.</p>
    # @!attribute application_id
    #   <p>The application ID of the AWS Mainframe Modernization managed application summary.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime of the AWS Mainframe Modernization managed application summary.</p>
    #   @return [String]
    # @!attribute listener_port
    #   <p>The listener port of the AWS Mainframe Modernization managed application summary.</p>
    #   @return [Integer]
    class M2ManagedApplicationSummary < Struct.new(
      nil,
      :application_id,
      :runtime,
      :listener_port,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization non-managed application.</p>
    # @!attribute vpc_endpoint_service_name
    #   <p>The VPC endpoint service name of the AWS Mainframe Modernization non-managed application.</p>
    #   @return [String]
    # @!attribute listener_port
    #   <p>The listener port of the AWS Mainframe Modernization non-managed application.</p>
    #   @return [String]
    # @!attribute runtime
    #   <p>The runtime of the AWS Mainframe Modernization non-managed application.</p>
    #   @return [String]
    # @!attribute web_app_name
    #   <p>The web application name of the AWS Mainframe Modernization non-managed application.</p>
    #   @return [String]
    class M2NonManagedApplication < Struct.new(
      nil,
      :vpc_endpoint_service_name,
      :listener_port,
      :runtime,
      :web_app_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization non-managed application action.</p>
    # @!attribute resource
    #   <p>The resource of the AWS Mainframe Modernization non-managed application action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The action type of the AWS Mainframe Modernization non-managed application action.</p>
    #   @return [String]
    class M2NonManagedApplicationAction < Struct.new(
      nil,
      :resource,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization non-managed application step input.</p>
    # @!attribute vpc_endpoint_service_name
    #   <p>The VPC endpoint service name of the AWS Mainframe Modernization non-managed application step input.</p>
    #   @return [String]
    # @!attribute listener_port
    #   <p>The listener port of the AWS Mainframe Modernization non-managed application step input.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>The runtime of the AWS Mainframe Modernization non-managed application step input.</p>
    #   @return [String]
    # @!attribute web_app_name
    #   <p>The web app name of the AWS Mainframe Modernization non-managed application step input.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The action type of the AWS Mainframe Modernization non-managed application step input.</p>
    #   @return [String]
    class M2NonManagedApplicationStepInput < Struct.new(
      nil,
      :vpc_endpoint_service_name,
      :listener_port,
      :runtime,
      :web_app_name,
      :action_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization non-managed application step output.</p>
    class M2NonManagedApplicationStepOutput < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization non-managed application step summary.</p>
    # @!attribute step_input
    #   <p>The step input of the AWS Mainframe Modernization non-managed application step summary.</p>
    #   @return [Types::M2NonManagedApplicationStepInput]
    # @!attribute step_output
    #   <p>The step output of the AWS Mainframe Modernization non-managed application step summary.</p>
    #   @return [Types::M2NonManagedApplicationStepOutput]
    class M2NonManagedApplicationStepSummary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the AWS Mainframe Modernization non-managed application summary.</p>
    # @!attribute vpc_endpoint_service_name
    #   <p>The VPC endpoint service name of the AWS Mainframe Modernization non-managed application summary.</p>
    #   @return [String]
    # @!attribute listener_port
    #   <p>The listener port of the AWS Mainframe Modernization non-managed application summary.</p>
    #   @return [Integer]
    # @!attribute runtime
    #   <p>The runtime of the AWS Mainframe Modernization non-managed application summary.</p>
    #   @return [String]
    # @!attribute web_app_name
    #   <p>The web application name of the AWS Mainframe Modernization non-managed application summary.</p>
    #   @return [String]
    class M2NonManagedApplicationSummary < Struct.new(
      nil,
      :vpc_endpoint_service_name,
      :listener_port,
      :runtime,
      :web_app_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the mainframe action.</p>
    # @!attribute resource
    #   <p>The resource of the mainframe action.</p>
    #   @return [String]
    # @!attribute action_type
    #   <p>The action type of the mainframe action.</p>
    #   @return [Types::MainframeActionType]
    # @!attribute properties
    #   <p>The properties of the mainframe action.</p>
    #   @return [Types::MainframeActionProperties]
    class MainframeAction < Struct.new(
      nil,
      :resource,
      :action_type,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the mainframe action properties.</p>
    # @!attribute dms_task_arn
    #   <p>The DMS task ARN of the mainframe action properties.</p>
    #   @return [String]
    class MainframeActionProperties < Struct.new(
      nil,
      :dms_task_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the mainframe action summary.</p>
    # @!attribute batch
    #   <p>The batch of the mainframe action summary.</p>
    #   @return [Types::BatchSummary]
    # @!attribute tn3270
    #   <p>The tn3270 port of the mainframe action summary.</p>
    #   @return [Types::TN3270Summary]
    class MainframeActionSummary < Struct.new(
      :batch,
      :tn3270,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Batch < MainframeActionSummary; end
      class Tn3270 < MainframeActionSummary; end
      class Unknown < MainframeActionSummary; end
    end

    # <p>Specifies the mainframe action type.</p>
    # @!attribute batch
    #   <p>The batch of the mainframe action type.</p>
    #   @return [Types::Batch]
    # @!attribute tn3270
    #   <p>The tn3270 port of the mainframe action type.</p>
    #   @return [Types::TN3270]
    class MainframeActionType < Struct.new(
      :batch,
      :tn3270,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Batch < MainframeActionType; end
      class Tn3270 < MainframeActionType; end
      class Unknown < MainframeActionType; end
    end

    # <p>Specifies the mainframe resource summary.</p>
    # @!attribute m2_managed_application
    #   <p>The AWS Mainframe Modernization managed application in the mainframe resource summary.</p>
    #   @return [Types::M2ManagedApplicationSummary]
    # @!attribute m2_non_managed_application
    #   <p>The AWS Mainframe Modernization non-managed application in the mainframe resource summary.</p>
    #   @return [Types::M2NonManagedApplicationSummary]
    class MainframeResourceSummary < Struct.new(
      :m2_managed_application,
      :m2_non_managed_application,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class M2ManagedApplication < MainframeResourceSummary; end
      class M2NonManagedApplication < MainframeResourceSummary; end
      class Unknown < MainframeResourceSummary; end
    end

    # <p>Specifies an output.</p>
    # @!attribute file
    #   <p>The file of the output.</p>
    #   @return [Types::OutputFile]
    class Output < Struct.new(
      :file,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class File < Output; end
      class Unknown < Output; end
    end

    # <p>Specifies an output file.</p>
    # @!attribute file_location
    #   <p>The file location of the output file.</p>
    #   @return [String]
    class OutputFile < Struct.new(
      nil,
      :file_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a resource.</p>
    # @!attribute name
    #   <p>The name of the resource.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the resource.</p>
    #   @return [Types::ResourceType]
    class Resource < Struct.new(
      nil,
      :name,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a resource action.</p>
    # @!attribute m2_managed_application_action
    #   <p>The AWS Mainframe Modernization managed application action of the resource action.</p>
    #   @return [Types::M2ManagedApplicationAction]
    # @!attribute m2_non_managed_application_action
    #   <p>The AWS Mainframe Modernization non-managed application action of the resource action.</p>
    #   @return [Types::M2NonManagedApplicationAction]
    # @!attribute cloud_formation_action
    #   <p>The CloudFormation action of the resource action.</p>
    #   @return [Types::CloudFormationAction]
    class ResourceAction < Struct.new(
      :m2_managed_application_action,
      :m2_non_managed_application_action,
      :cloud_formation_action,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class M2ManagedApplicationAction < ResourceAction; end
      class M2NonManagedApplicationAction < ResourceAction; end
      class CloudFormationAction < ResourceAction; end
      class Unknown < ResourceAction; end
    end

    # <p>Specifies the resource action summary.</p>
    # @!attribute cloud_formation
    #   <p>The CloudFormation template of the resource action summary.</p>
    #   @return [Types::CloudFormationStepSummary]
    # @!attribute m2_managed_application
    #   <p>The AWS Mainframe Modernization managed application of the resource action summary.</p>
    #   @return [Types::M2ManagedApplicationStepSummary]
    # @!attribute m2_non_managed_application
    #   <p>The AWS Mainframe Modernization non-managed application of the resource action summary.</p>
    #   @return [Types::M2NonManagedApplicationStepSummary]
    class ResourceActionSummary < Struct.new(
      :cloud_formation,
      :m2_managed_application,
      :m2_non_managed_application,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudFormation < ResourceActionSummary; end
      class M2ManagedApplication < ResourceActionSummary; end
      class M2NonManagedApplication < ResourceActionSummary; end
      class Unknown < ResourceActionSummary; end
    end

    # <p>The specified resource was not found.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of the resource not found.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of the resource not found.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the resource type.</p>
    # @!attribute cloud_formation
    #   <p>The CloudFormation template of the resource type.</p>
    #   @return [Types::CloudFormation]
    # @!attribute m2_managed_application
    #   <p>The AWS Mainframe Modernization managed application of the resource type.</p>
    #   @return [Types::M2ManagedApplication]
    # @!attribute m2_non_managed_application
    #   <p>The AWS Mainframe Modernization non-managed application of the resource type.</p>
    #   @return [Types::M2NonManagedApplication]
    class ResourceType < Struct.new(
      :cloud_formation,
      :m2_managed_application,
      :m2_non_managed_application,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class CloudFormation < ResourceType; end
      class M2ManagedApplication < ResourceType; end
      class M2NonManagedApplication < ResourceType; end
      class Unknown < ResourceType; end
    end

    # <p>Specifies the script.</p>
    # @!attribute script_location
    #   <p>The script location of the scripts.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the scripts.</p>
    #   @return [String]
    class Script < Struct.new(
      nil,
      :script_location,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the scripts summary.</p>
    # @!attribute script_location
    #   <p>The script location of the script summary.</p>
    #   @return [String]
    # @!attribute type
    #   <p>The type of the script summary.</p>
    #   @return [String]
    class ScriptSummary < Struct.new(
      nil,
      :script_location,
      :type,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more quotas for AWS Application Testing exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute resource_id
    #   <p>The resource ID of AWS Application Testing that exceeded the limit.</p>
    #   @return [String]
    # @!attribute resource_type
    #   <p>The resource type of AWS Application Testing that exceeded the limit.</p>
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of AWS Application Testing that exceeded the limit.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quote codes of AWS Application Testing that exceeded the limit.</p>
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      nil,
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the service settings.</p>
    # @!attribute kms_key_id
    #   <p>The KMS key ID of the service settings.</p>
    #   @return [String]
    class ServiceSettings < Struct.new(
      nil,
      :kms_key_id,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the source database metadata.</p>
    # @!attribute type
    #   <p>The type of the source database metadata.</p>
    #   @return [String]
    # @!attribute capture_tool
    #   <p>The capture tool of the source database metadata.</p>
    #   @return [String]
    class SourceDatabaseMetadata < Struct.new(
      nil,
      :type,
      :capture_tool,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The test suite ID of the test run.</p>
    #   @return [String]
    # @!attribute test_configuration_id
    #   <p>The configuration ID of the test run.</p>
    #   @return [String]
    # @!attribute client_token
    #   <p>The client token of the test run.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the test run.</p>
    #   @return [Hash<String, String>]
    class StartTestRunRequest < Struct.new(
      nil,
      :test_suite_id,
      :test_configuration_id,
      :client_token,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_run_id
    #   <p>The test run ID of the test run.</p>
    #   @return [String]
    # @!attribute test_run_status
    #   <p>The test run status of the test run.</p>
    #   @return [String]
    class StartTestRunResponse < Struct.new(
      nil,
      :test_run_id,
      :test_run_status,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Defines a step.</p>
    # @!attribute name
    #   <p>The name of the step.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the step.</p>
    #   @return [String]
    # @!attribute action
    #   <p>The action of the step.</p>
    #   @return [Types::StepAction]
    class Step < Struct.new(
      nil,
      :name,
      :description,
      :action,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a step action.</p>
    # @!attribute resource_action
    #   <p>The resource action of the step action.</p>
    #   @return [Types::ResourceAction]
    # @!attribute mainframe_action
    #   <p>The mainframe action of the step action.</p>
    #   @return [Types::MainframeAction]
    # @!attribute compare_action
    #   <p>The compare action of the step action.</p>
    #   @return [Types::CompareAction]
    class StepAction < Struct.new(
      :resource_action,
      :mainframe_action,
      :compare_action,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class ResourceAction < StepAction; end
      class MainframeAction < StepAction; end
      class CompareAction < StepAction; end
      class Unknown < StepAction; end
    end

    # <p>Defines the step run summary.</p>
    # @!attribute mainframe_action
    #   <p>The mainframe action of the step run summary.</p>
    #   @return [Types::MainframeActionSummary]
    # @!attribute compare_action
    #   <p>The compare action of the step run summary.</p>
    #   @return [Types::CompareActionSummary]
    # @!attribute resource_action
    #   <p>The resource action of the step run summary.</p>
    #   @return [Types::ResourceActionSummary]
    class StepRunSummary < Struct.new(
      :mainframe_action,
      :compare_action,
      :resource_action,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class MainframeAction < StepRunSummary; end
      class CompareAction < StepRunSummary; end
      class ResourceAction < StepRunSummary; end
      class Unknown < StepRunSummary; end
    end

    # <p>Specifies the TN3270 protocol.</p>
    # @!attribute script
    #   <p>The script of the TN3270 protocol.</p>
    #   @return [Types::Script]
    # @!attribute export_data_set_names
    #   <p>The data set names of the TN3270 protocol.</p>
    #   @return [Array<String>]
    class TN3270 < Struct.new(
      nil,
      :script,
      :export_data_set_names,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a TN3270 step input.</p>
    # @!attribute resource
    #   <p>The resource of the TN3270 step input.</p>
    #   @return [Types::MainframeResourceSummary]
    # @!attribute script
    #   <p>The script of the TN3270 step input.</p>
    #   @return [Types::ScriptSummary]
    # @!attribute export_data_set_names
    #   <p>The export data set names of the TN3270 step input.</p>
    #   @return [Array<String>]
    # @!attribute properties
    #   <p>The properties of the TN3270 step input.</p>
    #   @return [Types::MainframeActionProperties]
    class TN3270StepInput < Struct.new(
      nil,
      :resource,
      :script,
      :export_data_set_names,
      :properties,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a TN3270 step output.</p>
    # @!attribute data_set_export_location
    #   <p>The data set export location of the TN3270 step output.</p>
    #   @return [String]
    # @!attribute dms_output_location
    #   <p>The output location of the TN3270 step output.</p>
    #   @return [String]
    # @!attribute data_set_details
    #   <p>The data set details of the TN3270 step output.</p>
    #   @return [Array<Types::DataSet>]
    # @!attribute script_output_location
    #   <p>The script output location of the TN3270 step output.</p>
    #   @return [String]
    class TN3270StepOutput < Struct.new(
      nil,
      :data_set_export_location,
      :dms_output_location,
      :data_set_details,
      :script_output_location,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a TN3270 summary.</p>
    # @!attribute step_input
    #   <p>The step input of the TN3270 summary.</p>
    #   @return [Types::TN3270StepInput]
    # @!attribute step_output
    #   <p>The step output of the TN3270 summary.</p>
    #   @return [Types::TN3270StepOutput]
    class TN3270Summary < Struct.new(
      nil,
      :step_input,
      :step_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the tag resource.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags of the resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tags,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a target database metadata.</p>
    # @!attribute type
    #   <p>The type of the target database metadata.</p>
    #   @return [String]
    # @!attribute capture_tool
    #   <p>The capture tool of the target database metadata.</p>
    #   @return [String]
    class TargetDatabaseMetadata < Struct.new(
      nil,
      :type,
      :capture_tool,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the latest version of a test case.</p>
    # @!attribute version
    #   <p>The version of the test case latest version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test case latest version.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test case latest version.</p>
    #   @return [String]
    class TestCaseLatestVersion < Struct.new(
      nil,
      :version,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the test case run summary.</p>
    # @!attribute test_case_id
    #   <p>The test case id of the test case run summary.</p>
    #   @return [String]
    # @!attribute test_case_version
    #   <p>The test case version of the test case run summary.</p>
    #   @return [Integer]
    # @!attribute test_run_id
    #   <p>The test run id of the test case run summary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the test case run summary.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test case run summary.</p>
    #   @return [String]
    # @!attribute run_start_time
    #   <p>The run start time of the test case run summary.</p>
    #   @return [Time]
    # @!attribute run_end_time
    #   <p>The run end time of the test case run summary.</p>
    #   @return [Time]
    class TestCaseRunSummary < Struct.new(
      nil,
      :test_case_id,
      :test_case_version,
      :test_run_id,
      :status,
      :status_reason,
      :run_start_time,
      :run_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a test case summary.</p>
    # @!attribute test_case_id
    #   <p>The test case ID of the test case summary.</p>
    #   @return [String]
    # @!attribute test_case_arn
    #   <p>The test case Amazon Resource Name (ARN) of the test case summary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test case summary.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test case summary.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the test case summary.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test case summary.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the test case summary.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the test case summary.</p>
    #   @return [Time]
    class TestCaseSummary < Struct.new(
      nil,
      :test_case_id,
      :test_case_arn,
      :name,
      :status_reason,
      :latest_version,
      :status,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies test cases.</p>
    # @!attribute sequential
    #   <p>The sequential of the test case.</p>
    #   @return [Array<String>]
    class TestCases < Struct.new(
      :sequential,
      :unknown,
      keyword_init: true
    )
      include ::Smithy::Schema::Union

      class Sequential < TestCases; end
      class Unknown < TestCases; end
    end

    # <p>Specifies the latest version of the test configuration.</p>
    # @!attribute version
    #   <p>The version of the test configuration latest version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test configuration latest version.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test configuration latest version.</p>
    #   @return [String]
    class TestConfigurationLatestVersion < Struct.new(
      nil,
      :version,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a test configuration summary.</p>
    # @!attribute test_configuration_id
    #   <p>The test configuration ID of the test configuration summary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test configuration summary.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test configuration summary.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the test configuration summary.</p>
    #   @return [Integer]
    # @!attribute test_configuration_arn
    #   <p>The test configuration ARN of the test configuration summary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the test configuration summary.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the test configuration summary.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the test configuration summary.</p>
    #   @return [Time]
    class TestConfigurationSummary < Struct.new(
      nil,
      :test_configuration_id,
      :name,
      :status_reason,
      :latest_version,
      :test_configuration_arn,
      :status,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a test run step summary.</p>
    # @!attribute step_name
    #   <p>The step name of the test run step summary.</p>
    #   @return [String]
    # @!attribute test_run_id
    #   <p>The test run ID of the test run step summary.</p>
    #   @return [String]
    # @!attribute test_case_id
    #   <p>The test case ID of the test run step summary.</p>
    #   @return [String]
    # @!attribute test_case_version
    #   <p>The test case version of the test run step summary.</p>
    #   @return [Integer]
    # @!attribute test_suite_id
    #   <p>The test suite ID of the test run step summary.</p>
    #   @return [String]
    # @!attribute test_suite_version
    #   <p>The test suite version of the test run step summary.</p>
    #   @return [Integer]
    # @!attribute before_step
    #   <p>The before step of the test run step summary.</p>
    #   @return [Boolean]
    # @!attribute after_step
    #   <p>The after step of the test run step summary.</p>
    #   @return [Boolean]
    # @!attribute status
    #   <p>The status of the test run step summary.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test run step summary.</p>
    #   @return [String]
    # @!attribute run_start_time
    #   <p>The run start time of the test run step summary.</p>
    #   @return [Time]
    # @!attribute run_end_time
    #   <p>The run end time of the test run step summary.</p>
    #   @return [Time]
    class TestRunStepSummary < Struct.new(
      nil,
      :step_name,
      :test_run_id,
      :test_case_id,
      :test_case_version,
      :test_suite_id,
      :test_suite_version,
      :before_step,
      :after_step,
      :status,
      :status_reason,
      :run_start_time,
      :run_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a test run summary.</p>
    # @!attribute test_run_id
    #   <p>The test run ID of the test run summary.</p>
    #   @return [String]
    # @!attribute test_run_arn
    #   <p>The test run ARN of the test run summary.</p>
    #   @return [String]
    # @!attribute test_suite_id
    #   <p>The test suite ID of the test run summary.</p>
    #   @return [String]
    # @!attribute test_suite_version
    #   <p>The test suite version of the test run summary.</p>
    #   @return [Integer]
    # @!attribute test_configuration_id
    #   <p>The test configuration ID of the test run summary.</p>
    #   @return [String]
    # @!attribute test_configuration_version
    #   <p>The test configuration version of the test run summary.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test run summary.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test run summary.</p>
    #   @return [String]
    # @!attribute run_start_time
    #   <p>The run start time of the test run summary.</p>
    #   @return [Time]
    # @!attribute run_end_time
    #   <p>The run end time of the test run summary.</p>
    #   @return [Time]
    class TestRunSummary < Struct.new(
      nil,
      :test_run_id,
      :test_run_arn,
      :test_suite_id,
      :test_suite_version,
      :test_configuration_id,
      :test_configuration_version,
      :status,
      :status_reason,
      :run_start_time,
      :run_end_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the latest version of a test suite.</p>
    # @!attribute version
    #   <p>The version of the test suite latest version.</p>
    #   @return [Integer]
    # @!attribute status
    #   <p>The status of the test suite latest version.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test suite latest version.</p>
    #   @return [String]
    class TestSuiteLatestVersion < Struct.new(
      nil,
      :version,
      :status,
      :status_reason,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies the test suite summary.</p>
    # @!attribute test_suite_id
    #   <p>The test suite ID of the test suite summary.</p>
    #   @return [String]
    # @!attribute name
    #   <p>The name of the test suite summary.</p>
    #   @return [String]
    # @!attribute status_reason
    #   <p>The status reason of the test suite summary.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>The latest version of the test suite summary.</p>
    #   @return [Integer]
    # @!attribute test_suite_arn
    #   <p>The test suite Amazon Resource Name (ARN) of the test suite summary.</p>
    #   @return [String]
    # @!attribute status
    #   <p>The status of the test suite summary.</p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>The creation time of the test suite summary.</p>
    #   @return [Time]
    # @!attribute last_update_time
    #   <p>The last update time of the test suite summary.</p>
    #   @return [Time]
    class TestSuiteSummary < Struct.new(
      nil,
      :test_suite_id,
      :name,
      :status_reason,
      :latest_version,
      :test_suite_arn,
      :status,
      :creation_time,
      :last_update_time,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The number of requests made exceeds the limit.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute service_code
    #   <p>The service code of requests that exceed the limit.</p>
    #   @return [String]
    # @!attribute quota_code
    #   <p>The quota code of requests that exceed the limit.</p>
    #   @return [String]
    # @!attribute retry_after_seconds
    #   <p>The number of seconds to retry after for requests that exceed the limit.</p>
    #   @return [Integer]
    class ThrottlingException < Struct.new(
      nil,
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The Amazon Resource Name (ARN) of the resource.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>The tag keys of the resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      nil,
      :resource_arn,
      :tag_keys,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      nil,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_case_id
    #   <p>The test case ID of the test case.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test case.</p>
    #   @return [String]
    # @!attribute steps
    #   <p>The steps of the test case.</p>
    #   @return [Array<Types::Step>]
    class UpdateTestCaseRequest < Struct.new(
      nil,
      :test_case_id,
      :description,
      :steps,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_case_id
    #   <p>The test case ID of the test case.</p>
    #   @return [String]
    # @!attribute test_case_version
    #   <p>The test case version of the test case.</p>
    #   @return [Integer]
    class UpdateTestCaseResponse < Struct.new(
      nil,
      :test_case_id,
      :test_case_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_id
    #   <p>The test configuration ID of the test configuration.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test configuration.</p>
    #   @return [String]
    # @!attribute resources
    #   <p>The resources of the test configuration.</p>
    #   @return [Array<Types::Resource>]
    # @!attribute properties
    #   <p>The properties of the test configuration.</p>
    #   @return [Hash<String, String>]
    # @!attribute service_settings
    #   <p>The service settings of the test configuration.</p>
    #   @return [Types::ServiceSettings]
    class UpdateTestConfigurationRequest < Struct.new(
      nil,
      :test_configuration_id,
      :description,
      :resources,
      :properties,
      :service_settings,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_configuration_id
    #   <p>The configuration ID of the test configuration.</p>
    #   @return [String]
    # @!attribute test_configuration_version
    #   <p>The configuration version of the test configuration.</p>
    #   @return [Integer]
    class UpdateTestConfigurationResponse < Struct.new(
      nil,
      :test_configuration_id,
      :test_configuration_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The test suite ID of the test suite.</p>
    #   @return [String]
    # @!attribute description
    #   <p>The description of the test suite.</p>
    #   @return [String]
    # @!attribute before_steps
    #   <p>The before steps for the test suite.</p>
    #   @return [Array<Types::Step>]
    # @!attribute after_steps
    #   <p>The after steps of the test suite.</p>
    #   @return [Array<Types::Step>]
    # @!attribute test_cases
    #   <p>The test cases in the test suite.</p>
    #   @return [Types::TestCases]
    class UpdateTestSuiteRequest < Struct.new(
      nil,
      :test_suite_id,
      :description,
      :before_steps,
      :after_steps,
      :test_cases,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute test_suite_id
    #   <p>The test suite ID of the test suite.</p>
    #   @return [String]
    # @!attribute test_suite_version
    #   <p>The test suite version of the test suite.</p>
    #   @return [Integer]
    class UpdateTestSuiteResponse < Struct.new(
      nil,
      :test_suite_id,
      :test_suite_version,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>One or more parameter provided in the request is not valid.</p>
    # @!attribute message
    #   @return [String]
    # @!attribute reason
    #   <p>The reason for the validation exception.</p>
    #   @return [String]
    # @!attribute field_list
    #   <p>The field list of the validation exception.</p>
    #   @return [Array<Types::ValidationExceptionField>]
    class ValidationException < Struct.new(
      nil,
      :message,
      :reason,
      :field_list,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Specifies a validation exception field.</p>
    # @!attribute name
    #   <p>The name of the validation exception field.</p>
    #   @return [String]
    # @!attribute message
    #   <p>The message stating reason for why service validation failed.</p>
    #   @return [String]
    class ValidationExceptionField < Struct.new(
      nil,
      :name,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
