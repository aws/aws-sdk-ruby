# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AppTest
  module Types

    # The account or role doesn't have the right permissions to make the
    # request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a batch.
    #
    # @!attribute [rw] batch_job_name
    #   The job name of the batch.
    #   @return [String]
    #
    # @!attribute [rw] batch_job_parameters
    #   The batch job parameters of the batch.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] export_data_set_names
    #   The export data set names of the batch.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/Batch AWS API Documentation
    #
    class Batch < Struct.new(
      :batch_job_name,
      :batch_job_parameters,
      :export_data_set_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a batch step input.
    #
    # @!attribute [rw] resource
    #   The resource of the batch step input.
    #   @return [Types::MainframeResourceSummary]
    #
    # @!attribute [rw] batch_job_name
    #   The batch job name of the batch step input.
    #   @return [String]
    #
    # @!attribute [rw] batch_job_parameters
    #   The batch job parameters of the batch step input.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] export_data_set_names
    #   The export data set names of the batch step input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] properties
    #   The properties of the batch step input.
    #   @return [Types::MainframeActionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/BatchStepInput AWS API Documentation
    #
    class BatchStepInput < Struct.new(
      :resource,
      :batch_job_name,
      :batch_job_parameters,
      :export_data_set_names,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a batch step output.
    #
    # @!attribute [rw] data_set_export_location
    #   The data set export location of the batch step output.
    #   @return [String]
    #
    # @!attribute [rw] dms_output_location
    #   The Database Migration Service (DMS) output location of the batch
    #   step output.
    #   @return [String]
    #
    # @!attribute [rw] data_set_details
    #   The data set details of the batch step output.
    #   @return [Array<Types::DataSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/BatchStepOutput AWS API Documentation
    #
    class BatchStepOutput < Struct.new(
      :data_set_export_location,
      :dms_output_location,
      :data_set_details)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summarizes a batch job.
    #
    # @!attribute [rw] step_input
    #   The step input of the batch summary.
    #   @return [Types::BatchStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the batch summary.
    #   @return [Types::BatchStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/BatchSummary AWS API Documentation
    #
    class BatchSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the CloudFormation template and its parameters.
    #
    # @!attribute [rw] template_location
    #   The template location of the CloudFormation template.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The CloudFormation properties in the CloudFormation template.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CloudFormation AWS API Documentation
    #
    class CloudFormation < Struct.new(
      :template_location,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the CloudFormation action.
    #
    # @!attribute [rw] resource
    #   The resource of the CloudFormation action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The action type of the CloudFormation action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CloudFormationAction AWS API Documentation
    #
    class CloudFormationAction < Struct.new(
      :resource,
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the CloudFormation step summary.
    #
    # @note CloudFormationStepSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CloudFormationStepSummary corresponding to the set member.
    #
    # @!attribute [rw] create_cloudformation
    #   Creates the CloudFormation summary of the step.
    #   @return [Types::CreateCloudFormationSummary]
    #
    # @!attribute [rw] delete_cloudformation
    #   Deletes the CloudFormation summary of the CloudFormation step
    #   summary.
    #   @return [Types::DeleteCloudFormationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CloudFormationStepSummary AWS API Documentation
    #
    class CloudFormationStepSummary < Struct.new(
      :create_cloudformation,
      :delete_cloudformation,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CreateCloudformation < CloudFormationStepSummary; end
      class DeleteCloudformation < CloudFormationStepSummary; end
      class Unknown < CloudFormationStepSummary; end
    end

    # Compares the action.
    #
    # @!attribute [rw] input
    #   The input of the compare action.
    #   @return [Types::Input]
    #
    # @!attribute [rw] output
    #   The output of the compare action.
    #   @return [Types::Output]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareAction AWS API Documentation
    #
    class CompareAction < Struct.new(
      :input,
      :output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the compare action summary.
    #
    # @!attribute [rw] type
    #   The type of the compare action summary.
    #   @return [Types::File]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareActionSummary AWS API Documentation
    #
    class CompareActionSummary < Struct.new(
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the compare data sets step input.
    #
    # @!attribute [rw] source_location
    #   The source location of the compare data sets step input location.
    #   @return [String]
    #
    # @!attribute [rw] target_location
    #   The target location of the compare data sets step input location.
    #   @return [String]
    #
    # @!attribute [rw] source_data_sets
    #   The source data sets of the compare data sets step input location.
    #   @return [Array<Types::DataSet>]
    #
    # @!attribute [rw] target_data_sets
    #   The target data sets of the compare data sets step input location.
    #   @return [Array<Types::DataSet>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareDataSetsStepInput AWS API Documentation
    #
    class CompareDataSetsStepInput < Struct.new(
      :source_location,
      :target_location,
      :source_data_sets,
      :target_data_sets)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the compare data sets step output.
    #
    # @!attribute [rw] comparison_output_location
    #   The comparison output location of the compare data sets step output.
    #   @return [String]
    #
    # @!attribute [rw] comparison_status
    #   The comparison status of the compare data sets step output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareDataSetsStepOutput AWS API Documentation
    #
    class CompareDataSetsStepOutput < Struct.new(
      :comparison_output_location,
      :comparison_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compares data sets summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the compare data sets summary.
    #   @return [Types::CompareDataSetsStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the compare data sets summary.
    #   @return [Types::CompareDataSetsStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareDataSetsSummary AWS API Documentation
    #
    class CompareDataSetsSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compares the database Change Data Capture (CDC) step input.
    #
    # @!attribute [rw] source_location
    #   The source location of the compare database CDC step input.
    #   @return [String]
    #
    # @!attribute [rw] target_location
    #   The target location of the compare database CDC step input.
    #   @return [String]
    #
    # @!attribute [rw] output_location
    #   The output location of the compare database CDC step input.
    #   @return [String]
    #
    # @!attribute [rw] source_metadata
    #   The source metadata of the compare database CDC step input.
    #   @return [Types::SourceDatabaseMetadata]
    #
    # @!attribute [rw] target_metadata
    #   The target metadata location of the compare database CDC step input.
    #   @return [Types::TargetDatabaseMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareDatabaseCDCStepInput AWS API Documentation
    #
    class CompareDatabaseCDCStepInput < Struct.new(
      :source_location,
      :target_location,
      :output_location,
      :source_metadata,
      :target_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compares the database CDC step output.
    #
    # @!attribute [rw] comparison_output_location
    #   The comparison output of the compare database CDC step output.
    #   @return [String]
    #
    # @!attribute [rw] comparison_status
    #   The comparison status of the compare database CDC step output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareDatabaseCDCStepOutput AWS API Documentation
    #
    class CompareDatabaseCDCStepOutput < Struct.new(
      :comparison_output_location,
      :comparison_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compares the database CDC summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the compare database CDC summary.
    #   @return [Types::CompareDatabaseCDCStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the compare database CDC summary.
    #   @return [Types::CompareDatabaseCDCStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareDatabaseCDCSummary AWS API Documentation
    #
    class CompareDatabaseCDCSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Compares the file type.
    #
    # @note CompareFileType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of CompareFileType corresponding to the set member.
    #
    # @!attribute [rw] datasets
    #   The data sets in the compare file type.
    #   @return [Types::CompareDataSetsSummary]
    #
    # @!attribute [rw] database_cdc
    #   The database CDC of the compare file type.
    #   @return [Types::CompareDatabaseCDCSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CompareFileType AWS API Documentation
    #
    class CompareFileType < Struct.new(
      :datasets,
      :database_cdc,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Datasets < CompareFileType; end
      class DatabaseCdc < CompareFileType; end
      class Unknown < CompareFileType; end
    end

    # The parameters provided in the request conflict with existing
    # resources.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the conflicts with existing resources.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the conflicts with existing resources.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates the CloudFormation step input.
    #
    # @!attribute [rw] template_location
    #   The template location of the CloudFormation step input.
    #   @return [String]
    #
    # @!attribute [rw] parameters
    #   The CloudFormation properties of the CloudFormation step input.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateCloudFormationStepInput AWS API Documentation
    #
    class CreateCloudFormationStepInput < Struct.new(
      :template_location,
      :parameters)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a CloudFormation step output.
    #
    # @!attribute [rw] stack_id
    #   The stack ID of the CloudFormation step output.
    #   @return [String]
    #
    # @!attribute [rw] exports
    #   The exports of the CloudFormation step output.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateCloudFormationStepOutput AWS API Documentation
    #
    class CreateCloudFormationStepOutput < Struct.new(
      :stack_id,
      :exports)
      SENSITIVE = []
      include Aws::Structure
    end

    # Creates a CloudFormation summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the CloudFormation summary.
    #   @return [Types::CreateCloudFormationStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the CloudFormation summary.
    #   @return [Types::CreateCloudFormationStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateCloudFormationSummary AWS API Documentation
    #
    class CreateCloudFormationSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the test case.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test case.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   The steps in the test case.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] client_token
    #   The client token of the test case.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The specified tags of the test case.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestCaseRequest AWS API Documentation
    #
    class CreateTestCaseRequest < Struct.new(
      :name,
      :description,
      :steps,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_case_id
    #   The test case ID of the test case.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   The test case version of the test case.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestCaseResponse AWS API Documentation
    #
    class CreateTestCaseResponse < Struct.new(
      :test_case_id,
      :test_case_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The defined resources of the test configuration.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] properties
    #   The properties of the test configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] client_token
    #   The client token of the test configuration.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the test configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_settings
    #   The service settings of the test configuration.
    #   @return [Types::ServiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestConfigurationRequest AWS API Documentation
    #
    class CreateTestConfigurationRequest < Struct.new(
      :name,
      :description,
      :resources,
      :properties,
      :client_token,
      :tags,
      :service_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configuration_id
    #   The test configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] test_configuration_version
    #   The test configuration version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestConfigurationResponse AWS API Documentation
    #
    class CreateTestConfigurationResponse < Struct.new(
      :test_configuration_id,
      :test_configuration_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] name
    #   The name of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] before_steps
    #   The before steps of the test suite.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] after_steps
    #   The after steps of the test suite.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] test_cases
    #   The test cases in the test suite.
    #   @return [Types::TestCases]
    #
    # @!attribute [rw] client_token
    #   The client token of the test suite.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the test suite.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestSuiteRequest AWS API Documentation
    #
    class CreateTestSuiteRequest < Struct.new(
      :name,
      :description,
      :before_steps,
      :after_steps,
      :test_cases,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The suite ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_version
    #   The suite version of the test suite.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/CreateTestSuiteResponse AWS API Documentation
    #
    class CreateTestSuiteResponse < Struct.new(
      :test_suite_id,
      :test_suite_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a data set.
    #
    # @!attribute [rw] type
    #   The type of the data set.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the data set.
    #   @return [String]
    #
    # @!attribute [rw] ccsid
    #   The CCSID of the data set.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the data set.
    #   @return [String]
    #
    # @!attribute [rw] length
    #   The length of the data set.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DataSet AWS API Documentation
    #
    class DataSet < Struct.new(
      :type,
      :name,
      :ccsid,
      :format,
      :length)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines the Change Data Capture (CDC) of the database.
    #
    # @!attribute [rw] source_metadata
    #   The source metadata of the database CDC.
    #   @return [Types::SourceDatabaseMetadata]
    #
    # @!attribute [rw] target_metadata
    #   The target metadata of the database CDC.
    #   @return [Types::TargetDatabaseMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DatabaseCDC AWS API Documentation
    #
    class DatabaseCDC < Struct.new(
      :source_metadata,
      :target_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes the CloudFormation step input.
    #
    # @!attribute [rw] stack_id
    #   The stack ID of the deleted CloudFormation step input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteCloudFormationStepInput AWS API Documentation
    #
    class DeleteCloudFormationStepInput < Struct.new(
      :stack_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Deletes the CloudFormation summary step output.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteCloudFormationStepOutput AWS API Documentation
    #
    class DeleteCloudFormationStepOutput < Aws::EmptyStructure; end

    # Deletes the CloudFormation summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the deleted CloudFormation summary.
    #   @return [Types::DeleteCloudFormationStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the deleted CloudFormation summary.
    #   @return [Types::DeleteCloudFormationStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteCloudFormationSummary AWS API Documentation
    #
    class DeleteCloudFormationSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_case_id
    #   The test case ID of the test case.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestCaseRequest AWS API Documentation
    #
    class DeleteTestCaseRequest < Struct.new(
      :test_case_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestCaseResponse AWS API Documentation
    #
    class DeleteTestCaseResponse < Aws::EmptyStructure; end

    # @!attribute [rw] test_configuration_id
    #   The test ID of the test configuration.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestConfigurationRequest AWS API Documentation
    #
    class DeleteTestConfigurationRequest < Struct.new(
      :test_configuration_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestConfigurationResponse AWS API Documentation
    #
    class DeleteTestConfigurationResponse < Aws::EmptyStructure; end

    # @!attribute [rw] test_run_id
    #   The run ID of the test run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestRunRequest AWS API Documentation
    #
    class DeleteTestRunRequest < Struct.new(
      :test_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestRunResponse AWS API Documentation
    #
    class DeleteTestRunResponse < Aws::EmptyStructure; end

    # @!attribute [rw] test_suite_id
    #   The test ID of the test suite.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestSuiteRequest AWS API Documentation
    #
    class DeleteTestSuiteRequest < Struct.new(
      :test_suite_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/DeleteTestSuiteResponse AWS API Documentation
    #
    class DeleteTestSuiteResponse < Aws::EmptyStructure; end

    # Defines a file.
    #
    # @note File is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of File corresponding to the set member.
    #
    # @!attribute [rw] file_type
    #   The file type of the file.
    #   @return [Types::CompareFileType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/File AWS API Documentation
    #
    class File < Struct.new(
      :file_type,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class FileType < File; end
      class Unknown < File; end
    end

    # Specifies a file metadata.
    #
    # @note FileMetadata is a union - when making an API calls you must set exactly one of the members.
    #
    # @note FileMetadata is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of FileMetadata corresponding to the set member.
    #
    # @!attribute [rw] data_sets
    #   The data sets of the file metadata.
    #   @return [Array<Types::DataSet>]
    #
    # @!attribute [rw] database_cdc
    #   The database CDC of the file metadata.
    #   @return [Types::DatabaseCDC]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/FileMetadata AWS API Documentation
    #
    class FileMetadata < Struct.new(
      :data_sets,
      :database_cdc,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class DataSets < FileMetadata; end
      class DatabaseCdc < FileMetadata; end
      class Unknown < FileMetadata; end
    end

    # @!attribute [rw] test_case_id
    #   The request test ID of the test case.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   The test case version of the test case.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestCaseRequest AWS API Documentation
    #
    class GetTestCaseRequest < Struct.new(
      :test_case_id,
      :test_case_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_case_id
    #   The response test ID of the test case.
    #   @return [String]
    #
    # @!attribute [rw] test_case_arn
    #   The Amazon Resource Name (ARN) of the test case.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the test case.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test case.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the test case.
    #   @return [Types::TestCaseLatestVersion]
    #
    # @!attribute [rw] test_case_version
    #   The case version of the test case.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test case.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test case.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the test case.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the test case.
    #   @return [Time]
    #
    # @!attribute [rw] steps
    #   The steps of the test case.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] tags
    #   The tags of the test case.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestCaseResponse AWS API Documentation
    #
    class GetTestCaseResponse < Struct.new(
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configuration_id
    #   The request test configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] test_configuration_version
    #   The test configuration version.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestConfigurationRequest AWS API Documentation
    #
    class GetTestConfigurationRequest < Struct.new(
      :test_configuration_id,
      :test_configuration_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configuration_id
    #   The response test configuration ID.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The test configuration name
    #   @return [String]
    #
    # @!attribute [rw] test_configuration_arn
    #   The test configuration Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the test configuration.
    #   @return [Types::TestConfigurationLatestVersion]
    #
    # @!attribute [rw] test_configuration_version
    #   The test configuration version.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the test configuration.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the test configuration.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources of the test configuration.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] properties
    #   The properties of the test configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] tags
    #   The tags of the test configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_settings
    #   The service settings of the test configuration.
    #   @return [Types::ServiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestConfigurationResponse AWS API Documentation
    #
    class GetTestConfigurationResponse < Struct.new(
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
      :service_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_run_id
    #   The test run ID of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] step_name
    #   The step name of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] test_case_id
    #   The test case ID of a test run step.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_id
    #   The test suite ID of a test run step.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestRunStepRequest AWS API Documentation
    #
    class GetTestRunStepRequest < Struct.new(
      :test_run_id,
      :step_name,
      :test_case_id,
      :test_suite_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] step_name
    #   The step name of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] test_run_id
    #   The test run ID of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] test_case_id
    #   The test case ID of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   The test case version of the test run step.
    #   @return [Integer]
    #
    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_version
    #   The test suite version of the test run step.
    #   @return [Integer]
    #
    # @!attribute [rw] before_step
    #   The before steps of the test run step.
    #   @return [Boolean]
    #
    # @!attribute [rw] after_step
    #   The after steps of the test run step.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test run step.
    #   @return [String]
    #
    # @!attribute [rw] run_start_time
    #   The run start time of the test run step.
    #   @return [Time]
    #
    # @!attribute [rw] run_end_time
    #   The run end time of the test run step.
    #   @return [Time]
    #
    # @!attribute [rw] step_run_summary
    #   The step run summary of the test run step.
    #   @return [Types::StepRunSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestRunStepResponse AWS API Documentation
    #
    class GetTestRunStepResponse < Struct.new(
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
      :step_run_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_version
    #   The version of the test suite.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestSuiteRequest AWS API Documentation
    #
    class GetTestSuiteRequest < Struct.new(
      :test_suite_id,
      :test_suite_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The response ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the test suite.
    #   @return [Types::TestSuiteLatestVersion]
    #
    # @!attribute [rw] test_suite_version
    #   The version of the test suite.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_arn
    #   The test suite Amazon Resource Name (ARN).
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the test suite.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the test suite.
    #   @return [Time]
    #
    # @!attribute [rw] description
    #   The description of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] before_steps
    #   The before steps of the test suite.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] after_steps
    #   The after steps of the test suite.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] test_cases
    #   The test cases of the test suite.
    #   @return [Types::TestCases]
    #
    # @!attribute [rw] tags
    #   The tags of the test suite.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/GetTestSuiteResponse AWS API Documentation
    #
    class GetTestSuiteResponse < Struct.new(
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
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the input.
    #
    # @note Input is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Input is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Input corresponding to the set member.
    #
    # @!attribute [rw] file
    #   The file in the input.
    #   @return [Types::InputFile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/Input AWS API Documentation
    #
    class Input < Struct.new(
      :file,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < Input; end
      class Unknown < Input; end
    end

    # Specifies the input file.
    #
    # @!attribute [rw] source_location
    #   The source location of the input file.
    #   @return [String]
    #
    # @!attribute [rw] target_location
    #   The target location of the input file.
    #   @return [String]
    #
    # @!attribute [rw] file_metadata
    #   The file metadata of the input file.
    #   @return [Types::FileMetadata]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/InputFile AWS API Documentation
    #
    class InputFile < Struct.new(
      :source_location,
      :target_location,
      :file_metadata)
      SENSITIVE = []
      include Aws::Structure
    end

    # An unexpected error occurred during the processing of the request.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to retry the query.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags of the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTagsForResourceResponse AWS API Documentation
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_case_ids
    #   The IDs of the test cases.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The next token of the test cases.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum results of the test case.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestCasesRequest AWS API Documentation
    #
    class ListTestCasesRequest < Struct.new(
      :test_case_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_cases
    #   The test cases in an application.
    #   @return [Array<Types::TestCaseSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token in test cases.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestCasesResponse AWS API Documentation
    #
    class ListTestCasesResponse < Struct.new(
      :test_cases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configuration_ids
    #   The configuration IDs of the test configurations.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The next token for the test configurations.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum results of the test configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestConfigurationsRequest AWS API Documentation
    #
    class ListTestConfigurationsRequest < Struct.new(
      :test_configuration_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configurations
    #   The test configurations.
    #   @return [Array<Types::TestConfigurationSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token in the test configurations.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestConfigurationsResponse AWS API Documentation
    #
    class ListTestConfigurationsResponse < Struct.new(
      :test_configurations,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_run_id
    #   The test run ID of the test run steps.
    #   @return [String]
    #
    # @!attribute [rw] test_case_id
    #   The test case ID of the test run steps.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test run steps.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token from a previous step to retrieve the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of test run steps to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunStepsRequest AWS API Documentation
    #
    class ListTestRunStepsRequest < Struct.new(
      :test_run_id,
      :test_case_id,
      :test_suite_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_run_steps
    #   The test run steps of the response query.
    #   @return [Array<Types::TestRunStepSummary>]
    #
    # @!attribute [rw] next_token
    #   The token from a previous request to retrieve the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunStepsResponse AWS API Documentation
    #
    class ListTestRunStepsResponse < Struct.new(
      :test_run_steps,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_run_id
    #   The test run ID of the test cases.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The token from a previous request to retrieve the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of test run test cases to return in one page of
    #   results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunTestCasesRequest AWS API Documentation
    #
    class ListTestRunTestCasesRequest < Struct.new(
      :test_run_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_run_test_cases
    #   The test run of the test cases.
    #   @return [Array<Types::TestCaseRunSummary>]
    #
    # @!attribute [rw] next_token
    #   The token from a previous request to retrieve the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunTestCasesResponse AWS API Documentation
    #
    class ListTestRunTestCasesResponse < Struct.new(
      :test_run_test_cases,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test runs.
    #   @return [String]
    #
    # @!attribute [rw] test_run_ids
    #   The test run IDs of the test runs.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token from the previous request to retrieve the next page of
    #   test run results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of test runs to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunsRequest AWS API Documentation
    #
    class ListTestRunsRequest < Struct.new(
      :test_suite_id,
      :test_run_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_runs
    #   The test runs of the response query.
    #   @return [Array<Types::TestRunSummary>]
    #
    # @!attribute [rw] next_token
    #   The token from the previous request to retrieve the next page of
    #   results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestRunsResponse AWS API Documentation
    #
    class ListTestRunsResponse < Struct.new(
      :test_runs,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_ids
    #   The suite ID of the test suites.
    #   @return [Array<String>]
    #
    # @!attribute [rw] next_token
    #   The token from a previous request to retrieve the next page of
    #   results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of test suites to return in one page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestSuitesRequest AWS API Documentation
    #
    class ListTestSuitesRequest < Struct.new(
      :test_suite_ids,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suites
    #   The test suites returned with the response query.
    #   @return [Array<Types::TestSuiteSummary>]
    #
    # @!attribute [rw] next_token
    #   The token from a previous request to retrieve the next page of test
    #   suites results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ListTestSuitesResponse AWS API Documentation
    #
    class ListTestSuitesResponse < Struct.new(
      :test_suites,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed action properties.
    #
    # @!attribute [rw] force_stop
    #   Force stops the AWS Mainframe Modernization managed action
    #   properties.
    #   @return [Boolean]
    #
    # @!attribute [rw] import_data_set_location
    #   The import data set location of the AWS Mainframe Modernization
    #   managed action properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedActionProperties AWS API Documentation
    #
    class M2ManagedActionProperties < Struct.new(
      :force_stop,
      :import_data_set_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed application.
    #
    # @!attribute [rw] application_id
    #   The application ID of the AWS Mainframe Modernization managed
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime of the AWS Mainframe Modernization managed application.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name of the AWS Mainframe Modernization
    #   managed application.
    #   @return [String]
    #
    # @!attribute [rw] listener_port
    #   The listener port of the AWS Mainframe Modernization managed
    #   application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedApplication AWS API Documentation
    #
    class M2ManagedApplication < Struct.new(
      :application_id,
      :runtime,
      :vpc_endpoint_service_name,
      :listener_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed application action.
    #
    # @!attribute [rw] resource
    #   The resource of the AWS Mainframe Modernization managed application
    #   action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The action type of the AWS Mainframe Modernization managed
    #   application action.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of the AWS Mainframe Modernization managed
    #   application action.
    #   @return [Types::M2ManagedActionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedApplicationAction AWS API Documentation
    #
    class M2ManagedApplicationAction < Struct.new(
      :resource,
      :action_type,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed application step
    # input.
    #
    # @!attribute [rw] application_id
    #   The application ID of the AWS Mainframe Modernization managed
    #   application step input.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime of the AWS Mainframe Modernization managed application
    #   step input.
    #   @return [String]
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name of the AWS Mainframe Modernization
    #   managed application step input.
    #   @return [String]
    #
    # @!attribute [rw] listener_port
    #   The listener port of the AWS Mainframe Modernization managed
    #   application step input.
    #   @return [Integer]
    #
    # @!attribute [rw] action_type
    #   The action type of the AWS Mainframe Modernization managed
    #   application step input.
    #   @return [String]
    #
    # @!attribute [rw] properties
    #   The properties of the AWS Mainframe Modernization managed
    #   application step input.
    #   @return [Types::M2ManagedActionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedApplicationStepInput AWS API Documentation
    #
    class M2ManagedApplicationStepInput < Struct.new(
      :application_id,
      :runtime,
      :vpc_endpoint_service_name,
      :listener_port,
      :action_type,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed application step
    # output.
    #
    # @!attribute [rw] import_data_set_summary
    #   The import data set summary of the AWS Mainframe Modernization
    #   managed application step output.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedApplicationStepOutput AWS API Documentation
    #
    class M2ManagedApplicationStepOutput < Struct.new(
      :import_data_set_summary)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed application step
    # summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the AWS Mainframe Modernization managed
    #   application step summary.
    #   @return [Types::M2ManagedApplicationStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the AWS Mainframe Modernization managed
    #   application step summary.
    #   @return [Types::M2ManagedApplicationStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedApplicationStepSummary AWS API Documentation
    #
    class M2ManagedApplicationStepSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization managed application summary.
    #
    # @!attribute [rw] application_id
    #   The application ID of the AWS Mainframe Modernization managed
    #   application summary.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime of the AWS Mainframe Modernization managed application
    #   summary.
    #   @return [String]
    #
    # @!attribute [rw] listener_port
    #   The listener port of the AWS Mainframe Modernization managed
    #   application summary.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2ManagedApplicationSummary AWS API Documentation
    #
    class M2ManagedApplicationSummary < Struct.new(
      :application_id,
      :runtime,
      :listener_port)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization non-managed application.
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name of the AWS Mainframe Modernization
    #   non-managed application.
    #   @return [String]
    #
    # @!attribute [rw] listener_port
    #   The listener port of the AWS Mainframe Modernization non-managed
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] runtime
    #   The runtime of the AWS Mainframe Modernization non-managed
    #   application.
    #   @return [String]
    #
    # @!attribute [rw] web_app_name
    #   The web application name of the AWS Mainframe Modernization
    #   non-managed application.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2NonManagedApplication AWS API Documentation
    #
    class M2NonManagedApplication < Struct.new(
      :vpc_endpoint_service_name,
      :listener_port,
      :runtime,
      :web_app_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization non-managed application
    # action.
    #
    # @!attribute [rw] resource
    #   The resource of the AWS Mainframe Modernization non-managed
    #   application action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The action type of the AWS Mainframe Modernization non-managed
    #   application action.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2NonManagedApplicationAction AWS API Documentation
    #
    class M2NonManagedApplicationAction < Struct.new(
      :resource,
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization non-managed application step
    # input.
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name of the AWS Mainframe Modernization
    #   non-managed application step input.
    #   @return [String]
    #
    # @!attribute [rw] listener_port
    #   The listener port of the AWS Mainframe Modernization non-managed
    #   application step input.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   The runtime of the AWS Mainframe Modernization non-managed
    #   application step input.
    #   @return [String]
    #
    # @!attribute [rw] web_app_name
    #   The web app name of the AWS Mainframe Modernization non-managed
    #   application step input.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The action type of the AWS Mainframe Modernization non-managed
    #   application step input.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2NonManagedApplicationStepInput AWS API Documentation
    #
    class M2NonManagedApplicationStepInput < Struct.new(
      :vpc_endpoint_service_name,
      :listener_port,
      :runtime,
      :web_app_name,
      :action_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization non-managed application step
    # output.
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2NonManagedApplicationStepOutput AWS API Documentation
    #
    class M2NonManagedApplicationStepOutput < Aws::EmptyStructure; end

    # Specifies the AWS Mainframe Modernization non-managed application step
    # summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the AWS Mainframe Modernization non-managed
    #   application step summary.
    #   @return [Types::M2NonManagedApplicationStepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the AWS Mainframe Modernization non-managed
    #   application step summary.
    #   @return [Types::M2NonManagedApplicationStepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2NonManagedApplicationStepSummary AWS API Documentation
    #
    class M2NonManagedApplicationStepSummary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the AWS Mainframe Modernization non-managed application
    # summary.
    #
    # @!attribute [rw] vpc_endpoint_service_name
    #   The VPC endpoint service name of the AWS Mainframe Modernization
    #   non-managed application summary.
    #   @return [String]
    #
    # @!attribute [rw] listener_port
    #   The listener port of the AWS Mainframe Modernization non-managed
    #   application summary.
    #   @return [Integer]
    #
    # @!attribute [rw] runtime
    #   The runtime of the AWS Mainframe Modernization non-managed
    #   application summary.
    #   @return [String]
    #
    # @!attribute [rw] web_app_name
    #   The web application name of the AWS Mainframe Modernization
    #   non-managed application summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/M2NonManagedApplicationSummary AWS API Documentation
    #
    class M2NonManagedApplicationSummary < Struct.new(
      :vpc_endpoint_service_name,
      :listener_port,
      :runtime,
      :web_app_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the mainframe action.
    #
    # @!attribute [rw] resource
    #   The resource of the mainframe action.
    #   @return [String]
    #
    # @!attribute [rw] action_type
    #   The action type of the mainframe action.
    #   @return [Types::MainframeActionType]
    #
    # @!attribute [rw] properties
    #   The properties of the mainframe action.
    #   @return [Types::MainframeActionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/MainframeAction AWS API Documentation
    #
    class MainframeAction < Struct.new(
      :resource,
      :action_type,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the mainframe action properties.
    #
    # @!attribute [rw] dms_task_arn
    #   The DMS task ARN of the mainframe action properties.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/MainframeActionProperties AWS API Documentation
    #
    class MainframeActionProperties < Struct.new(
      :dms_task_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the mainframe action summary.
    #
    # @note MainframeActionSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MainframeActionSummary corresponding to the set member.
    #
    # @!attribute [rw] batch
    #   The batch of the mainframe action summary.
    #   @return [Types::BatchSummary]
    #
    # @!attribute [rw] tn3270
    #   The tn3270 port of the mainframe action summary.
    #   @return [Types::TN3270Summary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/MainframeActionSummary AWS API Documentation
    #
    class MainframeActionSummary < Struct.new(
      :batch,
      :tn3270,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Batch < MainframeActionSummary; end
      class Tn3270 < MainframeActionSummary; end
      class Unknown < MainframeActionSummary; end
    end

    # Specifies the mainframe action type.
    #
    # @note MainframeActionType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note MainframeActionType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MainframeActionType corresponding to the set member.
    #
    # @!attribute [rw] batch
    #   The batch of the mainframe action type.
    #   @return [Types::Batch]
    #
    # @!attribute [rw] tn3270
    #   The tn3270 port of the mainframe action type.
    #   @return [Types::TN3270]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/MainframeActionType AWS API Documentation
    #
    class MainframeActionType < Struct.new(
      :batch,
      :tn3270,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Batch < MainframeActionType; end
      class Tn3270 < MainframeActionType; end
      class Unknown < MainframeActionType; end
    end

    # Specifies the mainframe resource summary.
    #
    # @note MainframeResourceSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of MainframeResourceSummary corresponding to the set member.
    #
    # @!attribute [rw] m2_managed_application
    #   The AWS Mainframe Modernization managed application in the mainframe
    #   resource summary.
    #   @return [Types::M2ManagedApplicationSummary]
    #
    # @!attribute [rw] m2_non_managed_application
    #   The AWS Mainframe Modernization non-managed application in the
    #   mainframe resource summary.
    #   @return [Types::M2NonManagedApplicationSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/MainframeResourceSummary AWS API Documentation
    #
    class MainframeResourceSummary < Struct.new(
      :m2_managed_application,
      :m2_non_managed_application,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class M2ManagedApplication < MainframeResourceSummary; end
      class M2NonManagedApplication < MainframeResourceSummary; end
      class Unknown < MainframeResourceSummary; end
    end

    # Specifies an output.
    #
    # @note Output is a union - when making an API calls you must set exactly one of the members.
    #
    # @note Output is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of Output corresponding to the set member.
    #
    # @!attribute [rw] file
    #   The file of the output.
    #   @return [Types::OutputFile]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/Output AWS API Documentation
    #
    class Output < Struct.new(
      :file,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class File < Output; end
      class Unknown < Output; end
    end

    # Specifies an output file.
    #
    # @!attribute [rw] file_location
    #   The file location of the output file.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/OutputFile AWS API Documentation
    #
    class OutputFile < Struct.new(
      :file_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a resource.
    #
    # @!attribute [rw] name
    #   The name of the resource.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the resource.
    #   @return [Types::ResourceType]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/Resource AWS API Documentation
    #
    class Resource < Struct.new(
      :name,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a resource action.
    #
    # @note ResourceAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceAction corresponding to the set member.
    #
    # @!attribute [rw] m2_managed_application_action
    #   The AWS Mainframe Modernization managed application action of the
    #   resource action.
    #   @return [Types::M2ManagedApplicationAction]
    #
    # @!attribute [rw] m2_non_managed_application_action
    #   The AWS Mainframe Modernization non-managed application action of
    #   the resource action.
    #   @return [Types::M2NonManagedApplicationAction]
    #
    # @!attribute [rw] cloud_formation_action
    #   The CloudFormation action of the resource action.
    #   @return [Types::CloudFormationAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ResourceAction AWS API Documentation
    #
    class ResourceAction < Struct.new(
      :m2_managed_application_action,
      :m2_non_managed_application_action,
      :cloud_formation_action,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class M2ManagedApplicationAction < ResourceAction; end
      class M2NonManagedApplicationAction < ResourceAction; end
      class CloudFormationAction < ResourceAction; end
      class Unknown < ResourceAction; end
    end

    # Specifies the resource action summary.
    #
    # @note ResourceActionSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceActionSummary corresponding to the set member.
    #
    # @!attribute [rw] cloud_formation
    #   The CloudFormation template of the resource action summary.
    #   @return [Types::CloudFormationStepSummary]
    #
    # @!attribute [rw] m2_managed_application
    #   The AWS Mainframe Modernization managed application of the resource
    #   action summary.
    #   @return [Types::M2ManagedApplicationStepSummary]
    #
    # @!attribute [rw] m2_non_managed_application
    #   The AWS Mainframe Modernization non-managed application of the
    #   resource action summary.
    #   @return [Types::M2NonManagedApplicationStepSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ResourceActionSummary AWS API Documentation
    #
    class ResourceActionSummary < Struct.new(
      :cloud_formation,
      :m2_managed_application,
      :m2_non_managed_application,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudFormation < ResourceActionSummary; end
      class M2ManagedApplication < ResourceActionSummary; end
      class M2NonManagedApplication < ResourceActionSummary; end
      class Unknown < ResourceActionSummary; end
    end

    # The specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of the resource not found.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of the resource not found.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message,
      :resource_id,
      :resource_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the resource type.
    #
    # @note ResourceType is a union - when making an API calls you must set exactly one of the members.
    #
    # @note ResourceType is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of ResourceType corresponding to the set member.
    #
    # @!attribute [rw] cloud_formation
    #   The CloudFormation template of the resource type.
    #   @return [Types::CloudFormation]
    #
    # @!attribute [rw] m2_managed_application
    #   The AWS Mainframe Modernization managed application of the resource
    #   type.
    #   @return [Types::M2ManagedApplication]
    #
    # @!attribute [rw] m2_non_managed_application
    #   The AWS Mainframe Modernization non-managed application of the
    #   resource type.
    #   @return [Types::M2NonManagedApplication]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ResourceType AWS API Documentation
    #
    class ResourceType < Struct.new(
      :cloud_formation,
      :m2_managed_application,
      :m2_non_managed_application,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class CloudFormation < ResourceType; end
      class M2ManagedApplication < ResourceType; end
      class M2NonManagedApplication < ResourceType; end
      class Unknown < ResourceType; end
    end

    # Specifies the script.
    #
    # @!attribute [rw] script_location
    #   The script location of the scripts.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the scripts.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/Script AWS API Documentation
    #
    class Script < Struct.new(
      :script_location,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the scripts summary.
    #
    # @!attribute [rw] script_location
    #   The script location of the script summary.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The type of the script summary.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ScriptSummary AWS API Documentation
    #
    class ScriptSummary < Struct.new(
      :script_location,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more quotas for AWS Application Testing exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] resource_id
    #   The resource ID of AWS Application Testing that exceeded the limit.
    #   @return [String]
    #
    # @!attribute [rw] resource_type
    #   The resource type of AWS Application Testing that exceeded the
    #   limit.
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of AWS Application Testing that exceeded the limit.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quote codes of AWS Application Testing that exceeded the limit.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message,
      :resource_id,
      :resource_type,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the service settings.
    #
    # @!attribute [rw] kms_key_id
    #   The KMS key ID of the service settings.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ServiceSettings AWS API Documentation
    #
    class ServiceSettings < Struct.new(
      :kms_key_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the source database metadata.
    #
    # @!attribute [rw] type
    #   The type of the source database metadata.
    #   @return [String]
    #
    # @!attribute [rw] capture_tool
    #   The capture tool of the source database metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/SourceDatabaseMetadata AWS API Documentation
    #
    class SourceDatabaseMetadata < Struct.new(
      :type,
      :capture_tool)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test run.
    #   @return [String]
    #
    # @!attribute [rw] test_configuration_id
    #   The configuration ID of the test run.
    #   @return [String]
    #
    # @!attribute [rw] client_token
    #   The client token of the test run.
    #
    #   **A suitable default value is auto-generated.** You should normally
    #   not need to pass this option.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the test run.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/StartTestRunRequest AWS API Documentation
    #
    class StartTestRunRequest < Struct.new(
      :test_suite_id,
      :test_configuration_id,
      :client_token,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_run_id
    #   The test run ID of the test run.
    #   @return [String]
    #
    # @!attribute [rw] test_run_status
    #   The test run status of the test run.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/StartTestRunResponse AWS API Documentation
    #
    class StartTestRunResponse < Struct.new(
      :test_run_id,
      :test_run_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # Defines a step.
    #
    # @!attribute [rw] name
    #   The name of the step.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the step.
    #   @return [String]
    #
    # @!attribute [rw] action
    #   The action of the step.
    #   @return [Types::StepAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/Step AWS API Documentation
    #
    class Step < Struct.new(
      :name,
      :description,
      :action)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a step action.
    #
    # @note StepAction is a union - when making an API calls you must set exactly one of the members.
    #
    # @note StepAction is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StepAction corresponding to the set member.
    #
    # @!attribute [rw] resource_action
    #   The resource action of the step action.
    #   @return [Types::ResourceAction]
    #
    # @!attribute [rw] mainframe_action
    #   The mainframe action of the step action.
    #   @return [Types::MainframeAction]
    #
    # @!attribute [rw] compare_action
    #   The compare action of the step action.
    #   @return [Types::CompareAction]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/StepAction AWS API Documentation
    #
    class StepAction < Struct.new(
      :resource_action,
      :mainframe_action,
      :compare_action,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class ResourceAction < StepAction; end
      class MainframeAction < StepAction; end
      class CompareAction < StepAction; end
      class Unknown < StepAction; end
    end

    # Defines the step run summary.
    #
    # @note StepRunSummary is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of StepRunSummary corresponding to the set member.
    #
    # @!attribute [rw] mainframe_action
    #   The mainframe action of the step run summary.
    #   @return [Types::MainframeActionSummary]
    #
    # @!attribute [rw] compare_action
    #   The compare action of the step run summary.
    #   @return [Types::CompareActionSummary]
    #
    # @!attribute [rw] resource_action
    #   The resource action of the step run summary.
    #   @return [Types::ResourceActionSummary]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/StepRunSummary AWS API Documentation
    #
    class StepRunSummary < Struct.new(
      :mainframe_action,
      :compare_action,
      :resource_action,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class MainframeAction < StepRunSummary; end
      class CompareAction < StepRunSummary; end
      class ResourceAction < StepRunSummary; end
      class Unknown < StepRunSummary; end
    end

    # Specifies the TN3270 protocol.
    #
    # @!attribute [rw] script
    #   The script of the TN3270 protocol.
    #   @return [Types::Script]
    #
    # @!attribute [rw] export_data_set_names
    #   The data set names of the TN3270 protocol.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TN3270 AWS API Documentation
    #
    class TN3270 < Struct.new(
      :script,
      :export_data_set_names)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a TN3270 step input.
    #
    # @!attribute [rw] resource
    #   The resource of the TN3270 step input.
    #   @return [Types::MainframeResourceSummary]
    #
    # @!attribute [rw] script
    #   The script of the TN3270 step input.
    #   @return [Types::ScriptSummary]
    #
    # @!attribute [rw] export_data_set_names
    #   The export data set names of the TN3270 step input.
    #   @return [Array<String>]
    #
    # @!attribute [rw] properties
    #   The properties of the TN3270 step input.
    #   @return [Types::MainframeActionProperties]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TN3270StepInput AWS API Documentation
    #
    class TN3270StepInput < Struct.new(
      :resource,
      :script,
      :export_data_set_names,
      :properties)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a TN3270 step output.
    #
    # @!attribute [rw] data_set_export_location
    #   The data set export location of the TN3270 step output.
    #   @return [String]
    #
    # @!attribute [rw] dms_output_location
    #   The output location of the TN3270 step output.
    #   @return [String]
    #
    # @!attribute [rw] data_set_details
    #   The data set details of the TN3270 step output.
    #   @return [Array<Types::DataSet>]
    #
    # @!attribute [rw] script_output_location
    #   The script output location of the TN3270 step output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TN3270StepOutput AWS API Documentation
    #
    class TN3270StepOutput < Struct.new(
      :data_set_export_location,
      :dms_output_location,
      :data_set_details,
      :script_output_location)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a TN3270 summary.
    #
    # @!attribute [rw] step_input
    #   The step input of the TN3270 summary.
    #   @return [Types::TN3270StepInput]
    #
    # @!attribute [rw] step_output
    #   The step output of the TN3270 summary.
    #   @return [Types::TN3270StepOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TN3270Summary AWS API Documentation
    #
    class TN3270Summary < Struct.new(
      :step_input,
      :step_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the tag resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags of the resource.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TagResourceResponse AWS API Documentation
    #
    class TagResourceResponse < Aws::EmptyStructure; end

    # Specifies a target database metadata.
    #
    # @!attribute [rw] type
    #   The type of the target database metadata.
    #   @return [String]
    #
    # @!attribute [rw] capture_tool
    #   The capture tool of the target database metadata.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TargetDatabaseMetadata AWS API Documentation
    #
    class TargetDatabaseMetadata < Struct.new(
      :type,
      :capture_tool)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the latest version of a test case.
    #
    # @!attribute [rw] version
    #   The version of the test case latest version.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test case latest version.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test case latest version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestCaseLatestVersion AWS API Documentation
    #
    class TestCaseLatestVersion < Struct.new(
      :version,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the test case run summary.
    #
    # @!attribute [rw] test_case_id
    #   The test case id of the test case run summary.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   The test case version of the test case run summary.
    #   @return [Integer]
    #
    # @!attribute [rw] test_run_id
    #   The test run id of the test case run summary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the test case run summary.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test case run summary.
    #   @return [String]
    #
    # @!attribute [rw] run_start_time
    #   The run start time of the test case run summary.
    #   @return [Time]
    #
    # @!attribute [rw] run_end_time
    #   The run end time of the test case run summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestCaseRunSummary AWS API Documentation
    #
    class TestCaseRunSummary < Struct.new(
      :test_case_id,
      :test_case_version,
      :test_run_id,
      :status,
      :status_reason,
      :run_start_time,
      :run_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a test case summary.
    #
    # @!attribute [rw] test_case_id
    #   The test case ID of the test case summary.
    #   @return [String]
    #
    # @!attribute [rw] test_case_arn
    #   The test case Amazon Resource Name (ARN) of the test case summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the test case summary.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test case summary.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the test case summary.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test case summary.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the test case summary.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the test case summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestCaseSummary AWS API Documentation
    #
    class TestCaseSummary < Struct.new(
      :test_case_id,
      :test_case_arn,
      :name,
      :status_reason,
      :latest_version,
      :status,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies test cases.
    #
    # @note TestCases is a union - when making an API calls you must set exactly one of the members.
    #
    # @note TestCases is a union - when returned from an API call exactly one value will be set and the returned type will be a subclass of TestCases corresponding to the set member.
    #
    # @!attribute [rw] sequential
    #   The sequential of the test case.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestCases AWS API Documentation
    #
    class TestCases < Struct.new(
      :sequential,
      :unknown)
      SENSITIVE = []
      include Aws::Structure
      include Aws::Structure::Union

      class Sequential < TestCases; end
      class Unknown < TestCases; end
    end

    # Specifies the latest version of the test configuration.
    #
    # @!attribute [rw] version
    #   The version of the test configuration latest version.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test configuration latest version.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test configuration latest version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestConfigurationLatestVersion AWS API Documentation
    #
    class TestConfigurationLatestVersion < Struct.new(
      :version,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a test configuration summary.
    #
    # @!attribute [rw] test_configuration_id
    #   The test configuration ID of the test configuration summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the test configuration summary.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test configuration summary.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the test configuration summary.
    #   @return [Integer]
    #
    # @!attribute [rw] test_configuration_arn
    #   The test configuration ARN of the test configuration summary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the test configuration summary.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the test configuration summary.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the test configuration summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestConfigurationSummary AWS API Documentation
    #
    class TestConfigurationSummary < Struct.new(
      :test_configuration_id,
      :name,
      :status_reason,
      :latest_version,
      :test_configuration_arn,
      :status,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a test run step summary.
    #
    # @!attribute [rw] step_name
    #   The step name of the test run step summary.
    #   @return [String]
    #
    # @!attribute [rw] test_run_id
    #   The test run ID of the test run step summary.
    #   @return [String]
    #
    # @!attribute [rw] test_case_id
    #   The test case ID of the test run step summary.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   The test case version of the test run step summary.
    #   @return [Integer]
    #
    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test run step summary.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_version
    #   The test suite version of the test run step summary.
    #   @return [Integer]
    #
    # @!attribute [rw] before_step
    #   The before step of the test run step summary.
    #   @return [Boolean]
    #
    # @!attribute [rw] after_step
    #   The after step of the test run step summary.
    #   @return [Boolean]
    #
    # @!attribute [rw] status
    #   The status of the test run step summary.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test run step summary.
    #   @return [String]
    #
    # @!attribute [rw] run_start_time
    #   The run start time of the test run step summary.
    #   @return [Time]
    #
    # @!attribute [rw] run_end_time
    #   The run end time of the test run step summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestRunStepSummary AWS API Documentation
    #
    class TestRunStepSummary < Struct.new(
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
      :run_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a test run summary.
    #
    # @!attribute [rw] test_run_id
    #   The test run ID of the test run summary.
    #   @return [String]
    #
    # @!attribute [rw] test_run_arn
    #   The test run ARN of the test run summary.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test run summary.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_version
    #   The test suite version of the test run summary.
    #   @return [Integer]
    #
    # @!attribute [rw] test_configuration_id
    #   The test configuration ID of the test run summary.
    #   @return [String]
    #
    # @!attribute [rw] test_configuration_version
    #   The test configuration version of the test run summary.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test run summary.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test run summary.
    #   @return [String]
    #
    # @!attribute [rw] run_start_time
    #   The run start time of the test run summary.
    #   @return [Time]
    #
    # @!attribute [rw] run_end_time
    #   The run end time of the test run summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestRunSummary AWS API Documentation
    #
    class TestRunSummary < Struct.new(
      :test_run_id,
      :test_run_arn,
      :test_suite_id,
      :test_suite_version,
      :test_configuration_id,
      :test_configuration_version,
      :status,
      :status_reason,
      :run_start_time,
      :run_end_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the latest version of a test suite.
    #
    # @!attribute [rw] version
    #   The version of the test suite latest version.
    #   @return [Integer]
    #
    # @!attribute [rw] status
    #   The status of the test suite latest version.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test suite latest version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestSuiteLatestVersion AWS API Documentation
    #
    class TestSuiteLatestVersion < Struct.new(
      :version,
      :status,
      :status_reason)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies the test suite summary.
    #
    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test suite summary.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The name of the test suite summary.
    #   @return [String]
    #
    # @!attribute [rw] status_reason
    #   The status reason of the test suite summary.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   The latest version of the test suite summary.
    #   @return [Integer]
    #
    # @!attribute [rw] test_suite_arn
    #   The test suite Amazon Resource Name (ARN) of the test suite summary.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the test suite summary.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   The creation time of the test suite summary.
    #   @return [Time]
    #
    # @!attribute [rw] last_update_time
    #   The last update time of the test suite summary.
    #   @return [Time]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/TestSuiteSummary AWS API Documentation
    #
    class TestSuiteSummary < Struct.new(
      :test_suite_id,
      :name,
      :status_reason,
      :latest_version,
      :test_suite_arn,
      :status,
      :creation_time,
      :last_update_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The number of requests made exceeds the limit.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] service_code
    #   The service code of requests that exceed the limit.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code of requests that exceed the limit.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to retry after for requests that exceed the
    #   limit.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :service_code,
      :quota_code,
      :retry_after_seconds)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] resource_arn
    #   The Amazon Resource Name (ARN) of the resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The tag keys of the resource.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UntagResourceResponse AWS API Documentation
    #
    class UntagResourceResponse < Aws::EmptyStructure; end

    # @!attribute [rw] test_case_id
    #   The test case ID of the test case.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test case.
    #   @return [String]
    #
    # @!attribute [rw] steps
    #   The steps of the test case.
    #   @return [Array<Types::Step>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestCaseRequest AWS API Documentation
    #
    class UpdateTestCaseRequest < Struct.new(
      :test_case_id,
      :description,
      :steps)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_case_id
    #   The test case ID of the test case.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   The test case version of the test case.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestCaseResponse AWS API Documentation
    #
    class UpdateTestCaseResponse < Struct.new(
      :test_case_id,
      :test_case_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configuration_id
    #   The test configuration ID of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] resources
    #   The resources of the test configuration.
    #   @return [Array<Types::Resource>]
    #
    # @!attribute [rw] properties
    #   The properties of the test configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] service_settings
    #   The service settings of the test configuration.
    #   @return [Types::ServiceSettings]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestConfigurationRequest AWS API Documentation
    #
    class UpdateTestConfigurationRequest < Struct.new(
      :test_configuration_id,
      :description,
      :resources,
      :properties,
      :service_settings)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_configuration_id
    #   The configuration ID of the test configuration.
    #   @return [String]
    #
    # @!attribute [rw] test_configuration_version
    #   The configuration version of the test configuration.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestConfigurationResponse AWS API Documentation
    #
    class UpdateTestConfigurationResponse < Struct.new(
      :test_configuration_id,
      :test_configuration_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] before_steps
    #   The before steps for the test suite.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] after_steps
    #   The after steps of the test suite.
    #   @return [Array<Types::Step>]
    #
    # @!attribute [rw] test_cases
    #   The test cases in the test suite.
    #   @return [Types::TestCases]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestSuiteRequest AWS API Documentation
    #
    class UpdateTestSuiteRequest < Struct.new(
      :test_suite_id,
      :description,
      :before_steps,
      :after_steps,
      :test_cases)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] test_suite_id
    #   The test suite ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] test_suite_version
    #   The test suite version of the test suite.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/UpdateTestSuiteResponse AWS API Documentation
    #
    class UpdateTestSuiteResponse < Struct.new(
      :test_suite_id,
      :test_suite_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # One or more parameter provided in the request is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @!attribute [rw] reason
    #   The reason for the validation exception.
    #   @return [String]
    #
    # @!attribute [rw] field_list
    #   The field list of the validation exception.
    #   @return [Array<Types::ValidationExceptionField>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message,
      :reason,
      :field_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Specifies a validation exception field.
    #
    # @!attribute [rw] name
    #   The name of the validation exception field.
    #   @return [String]
    #
    # @!attribute [rw] message
    #   The message stating reason for why service validation failed.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/apptest-2022-12-06/ValidationExceptionField AWS API Documentation
    #
    class ValidationExceptionField < Struct.new(
      :name,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

