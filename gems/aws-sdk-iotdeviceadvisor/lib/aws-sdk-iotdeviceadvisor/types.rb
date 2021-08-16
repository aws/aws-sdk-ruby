# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTDeviceAdvisor
  module Types

    # Sends Conflict Exception.
    #
    # @!attribute [rw] message
    #   Sends Conflict Exception message.
    #   @return [String]
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateSuiteDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_configuration: {
    #           suite_definition_name: "SuiteDefinitionName",
    #           devices: [
    #             {
    #               thing_arn: "AmazonResourceName",
    #               certificate_arn: "AmazonResourceName",
    #             },
    #           ],
    #           intended_for_qualification: false,
    #           root_group: "RootGroup",
    #           device_permission_role_arn: "AmazonResourceName",
    #         },
    #         tags: {
    #           "String128" => "String256",
    #         },
    #       }
    #
    # @!attribute [rw] suite_definition_configuration
    #   Creates a Device Advisor test suite with suite definition
    #   configuration.
    #   @return [Types::SuiteDefinitionConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags to be attached to the suite definition.
    #   @return [Hash<String,String>]
    #
    class CreateSuiteDefinitionRequest < Struct.new(
      :suite_definition_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_id
    #   Creates a Device Advisor test suite with suite UUID.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_arn
    #   Creates a Device Advisor test suite with Amazon Resource name.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Creates a Device Advisor test suite with suite definition name.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Creates a Device Advisor test suite with TimeStamp of when it was
    #   created.
    #   @return [Time]
    #
    class CreateSuiteDefinitionResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_name,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteSuiteDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Deletes a Device Advisor test suite with defined suite Id.
    #   @return [String]
    #
    class DeleteSuiteDefinitionRequest < Struct.new(
      :suite_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSuiteDefinitionResponse < Aws::EmptyStructure; end

    # Lists all the devices under test
    #
    # @note When making an API call, you may pass DeviceUnderTest
    #   data as a hash:
    #
    #       {
    #         thing_arn: "AmazonResourceName",
    #         certificate_arn: "AmazonResourceName",
    #       }
    #
    # @!attribute [rw] thing_arn
    #   Lists devices thing arn
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   Lists devices certificate arn
    #   @return [String]
    #
    class DeviceUnderTest < Struct.new(
      :thing_arn,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSuiteDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #         suite_definition_version: "SuiteDefinitionVersion",
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Requests suite definition Id with GetSuiteDefinition API call.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Requests the suite definition version of a test suite.
    #   @return [String]
    #
    class GetSuiteDefinitionRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_id
    #   Gets suite definition Id with GetSuiteDefinition API call.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_arn
    #   The ARN of the suite definition.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Gets suite definition version with GetSuiteDefinition API call.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   Gets latest suite definition version with GetSuiteDefinition API
    #   call.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_configuration
    #   Gets the suite configuration with GetSuiteDefinition API call.
    #   @return [Types::SuiteDefinitionConfiguration]
    #
    # @!attribute [rw] created_at
    #   Gets the timestamp of the time suite was created with
    #   GetSuiteDefinition API call.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_at
    #   Gets the timestamp of the time suite was modified with
    #   GetSuiteDefinition API call.
    #   @return [Time]
    #
    # @!attribute [rw] tags
    #   Tags attached to the suite definition.
    #   @return [Hash<String,String>]
    #
    class GetSuiteDefinitionResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_version,
      :latest_version,
      :suite_definition_configuration,
      :created_at,
      :last_modified_at,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSuiteRunReportRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #         suite_run_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Device Advisor suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Device Advisor suite run Id.
    #   @return [String]
    #
    class GetSuiteRunReportRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] qualification_report_download_url
    #   Gets the download URL of the qualification report.
    #   @return [String]
    #
    class GetSuiteRunReportResponse < Struct.new(
      :qualification_report_download_url)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetSuiteRunRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #         suite_run_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Requests the information about Device Advisor test suite run based
    #   on suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Requests the information about Device Advisor test suite run based
    #   on suite run Id.
    #   @return [String]
    #
    class GetSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_id
    #   Gets the information about Device Advisor test suite run based on
    #   suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Gets the information about Device Advisor test suite run based on
    #   suite definition version.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Gets the information about Device Advisor test suite run based on
    #   suite run Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_arn
    #   The ARN of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_configuration
    #   Gets the information about Device Advisor test suite run based on
    #   suite configuration.
    #   @return [Types::SuiteRunConfiguration]
    #
    # @!attribute [rw] test_result
    #   Gets the information about Device Advisor test suite run based on
    #   test case runs.
    #   @return [Types::TestResult]
    #
    # @!attribute [rw] start_time
    #   Gets the information about Device Advisor test suite run based on
    #   start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Gets the information about Device Advisor test suite run based on
    #   end time.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Gets the information about Device Advisor test suite run based on
    #   its status.
    #   @return [String]
    #
    # @!attribute [rw] error_reason
    #   Gets the information about Device Advisor test suite run based on
    #   error.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags attached to the suite run.
    #   @return [Hash<String,String>]
    #
    class GetSuiteRunResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_run_id,
      :suite_run_arn,
      :suite_run_configuration,
      :test_result,
      :start_time,
      :end_time,
      :status,
      :error_reason,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # Show Group Result.
    #
    # @!attribute [rw] group_id
    #   Show Group Result Id.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   Show Group Result Name.
    #   @return [String]
    #
    # @!attribute [rw] tests
    #   Show Group Result.
    #   @return [Array<Types::TestCaseRun>]
    #
    class GroupResult < Struct.new(
      :group_id,
      :group_name,
      :tests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends Internal Failure Exception.
    #
    # @!attribute [rw] message
    #   Sends Internal Failure Exception message.
    #   @return [String]
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSuiteDefinitionsRequest
    #   data as a hash:
    #
    #       {
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] max_results
    #   Request the list of all the Device Advisor test suites.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Requests the Device Advisor test suites next token.
    #   @return [String]
    #
    class ListSuiteDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_information_list
    #   Lists test suite information using List suite definition.
    #   @return [Array<Types::SuiteDefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   Creates a Device Advisor test suite.
    #   @return [String]
    #
    class ListSuiteDefinitionsResponse < Struct.new(
      :suite_definition_information_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListSuiteRunsRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID",
    #         suite_definition_version: "SuiteDefinitionVersion",
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Lists the runs of the specified Device Advisor test suite based on
    #   suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Lists the runs of the specified Device Advisor test suite based on
    #   suite definition version.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   MaxResults for list suite run API request.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Next pagination token for list suite run request.
    #   @return [String]
    #
    class ListSuiteRunsRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_runs_list
    #   Lists the runs of the specified Device Advisor test suite.
    #   @return [Array<Types::SuiteRunInformation>]
    #
    # @!attribute [rw] next_token
    #   Next pagination token for list suite run response.
    #   @return [String]
    #
    class ListSuiteRunsResponse < Struct.new(
      :suite_runs_list,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the IoT Device Advisor resource.
    #   @return [String]
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   The tags attached to the IoT Device Advisor resource.
    #   @return [Hash<String,String>]
    #
    class ListTagsForResourceResponse < Struct.new(
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTestCasesRequest
    #   data as a hash:
    #
    #       {
    #         intended_for_qualification: false,
    #         max_results: 1,
    #         next_token: "Token",
    #       }
    #
    # @!attribute [rw] intended_for_qualification
    #   Lists all the qualification test cases in the test suite.
    #   @return [Boolean]
    #
    # @!attribute [rw] max_results
    #   Requests the test cases max results.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   Requests the test cases next token.
    #   @return [String]
    #
    class ListTestCasesRequest < Struct.new(
      :intended_for_qualification,
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] categories
    #   Gets the category of test case.
    #   @return [Array<Types::TestCaseCategory>]
    #
    # @!attribute [rw] root_group_configuration
    #   Gets the configuration of root test group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] group_configuration
    #   Gets the configuration of test group.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] next_token
    #   Test cases next token response.
    #   @return [String]
    #
    class ListTestCasesResponse < Struct.new(
      :categories,
      :root_group_configuration,
      :group_configuration,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends Resource Not Found Exception.
    #
    # @!attribute [rw] message
    #   Sends Resource Not Found Exception message.
    #   @return [String]
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartSuiteRunRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #         suite_definition_version: "SuiteDefinitionVersion",
    #         suite_run_configuration: {
    #           primary_device: {
    #             thing_arn: "AmazonResourceName",
    #             certificate_arn: "AmazonResourceName",
    #           },
    #           secondary_device: {
    #             thing_arn: "AmazonResourceName",
    #             certificate_arn: "AmazonResourceName",
    #           },
    #           selected_test_list: ["UUID"],
    #         },
    #         tags: {
    #           "String128" => "String256",
    #         },
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Request to start suite run based on suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Request to start suite run based on suite definition version.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_configuration
    #   Request to start suite run based on suite configuration.
    #   @return [Types::SuiteRunConfiguration]
    #
    # @!attribute [rw] tags
    #   The tags to be attached to the suite run.
    #   @return [Hash<String,String>]
    #
    class StartSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_run_configuration,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_run_id
    #   Starts a Device Advisor test suite run based on suite Run Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_arn
    #   Starts a Device Advisor test suite run based on suite run arn.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Starts a Device Advisor test suite run based on suite create time.
    #   @return [Time]
    #
    class StartSuiteRunResponse < Struct.new(
      :suite_run_id,
      :suite_run_arn,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets Suite Definition Configuration.
    #
    # @note When making an API call, you may pass SuiteDefinitionConfiguration
    #   data as a hash:
    #
    #       {
    #         suite_definition_name: "SuiteDefinitionName",
    #         devices: [
    #           {
    #             thing_arn: "AmazonResourceName",
    #             certificate_arn: "AmazonResourceName",
    #           },
    #         ],
    #         intended_for_qualification: false,
    #         root_group: "RootGroup",
    #         device_permission_role_arn: "AmazonResourceName",
    #       }
    #
    # @!attribute [rw] suite_definition_name
    #   Gets Suite Definition Configuration name.
    #   @return [String]
    #
    # @!attribute [rw] devices
    #   Gets the devices configured.
    #   @return [Array<Types::DeviceUnderTest>]
    #
    # @!attribute [rw] intended_for_qualification
    #   Gets the tests intended for qualification in a suite.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_group
    #   Gets test suite root group.
    #   @return [String]
    #
    # @!attribute [rw] device_permission_role_arn
    #   Gets device permission arn.
    #   @return [String]
    #
    class SuiteDefinitionConfiguration < Struct.new(
      :suite_definition_name,
      :devices,
      :intended_for_qualification,
      :root_group,
      :device_permission_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get suite definition information.
    #
    # @!attribute [rw] suite_definition_id
    #   Get suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Get test suite name.
    #   @return [String]
    #
    # @!attribute [rw] default_devices
    #   Specifies the devices under test.
    #   @return [Array<Types::DeviceUnderTest>]
    #
    # @!attribute [rw] intended_for_qualification
    #   Gets the test suites which will be used for qualification.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   Gets the information of when the test suite was created.
    #   @return [Time]
    #
    class SuiteDefinitionInformation < Struct.new(
      :suite_definition_id,
      :suite_definition_name,
      :default_devices,
      :intended_for_qualification,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets suite run configuration.
    #
    # @note When making an API call, you may pass SuiteRunConfiguration
    #   data as a hash:
    #
    #       {
    #         primary_device: {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #         },
    #         secondary_device: {
    #           thing_arn: "AmazonResourceName",
    #           certificate_arn: "AmazonResourceName",
    #         },
    #         selected_test_list: ["UUID"],
    #       }
    #
    # @!attribute [rw] primary_device
    #   Gets the primary device for suite run.
    #   @return [Types::DeviceUnderTest]
    #
    # @!attribute [rw] secondary_device
    #   Gets the secondary device for suite run.
    #   @return [Types::DeviceUnderTest]
    #
    # @!attribute [rw] selected_test_list
    #   Gets test case list.
    #   @return [Array<String>]
    #
    class SuiteRunConfiguration < Struct.new(
      :primary_device,
      :secondary_device,
      :selected_test_list)
      SENSITIVE = []
      include Aws::Structure
    end

    # Get suite run information.
    #
    # @!attribute [rw] suite_definition_id
    #   Get suite run information based on suite definition Id.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Get suite run information based on suite definition version.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Get suite run information based on suite definition name.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Get suite run information based on suite run Id.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Get suite run information based on time suite was created.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   Get suite run information based on start time of the run.
    #   @return [Time]
    #
    # @!attribute [rw] end_at
    #   Get suite run information based on end time of the run.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Get suite run information based on test run status.
    #   @return [String]
    #
    # @!attribute [rw] passed
    #   Get suite run information based on result of the test suite run.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   Get suite run information based on result of the test suite run.
    #   @return [Integer]
    #
    class SuiteRunInformation < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_definition_name,
      :suite_run_id,
      :created_at,
      :started_at,
      :end_at,
      :status,
      :passed,
      :failed)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tags: { # required
    #           "String128" => "String256",
    #         },
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN of an IoT Device Advisor resource.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to be attached to the IoT Device Advisor resource.
    #   @return [Hash<String,String>]
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    class TagResourceResponse < Aws::EmptyStructure; end

    # Shows tests in a test group.
    #
    # @!attribute [rw] name
    #   Shows test case name.
    #   @return [String]
    #
    # @!attribute [rw] configuration
    #   Shows test case configuration.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] test
    #   Specifies a test.
    #   @return [Types::TestCaseDefinition]
    #
    class TestCase < Struct.new(
      :name,
      :configuration,
      :test)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets the test case category.
    #
    # @!attribute [rw] name
    #   Lists all the tests name in the specified category.
    #   @return [String]
    #
    # @!attribute [rw] tests
    #   Lists all the tests in the specified category.
    #   @return [Array<Types::TestCase>]
    #
    class TestCaseCategory < Struct.new(
      :name,
      :tests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides test case definition.
    #
    # @!attribute [rw] id
    #   Provides test case definition Id.
    #   @return [String]
    #
    # @!attribute [rw] test_case_version
    #   Provides test case definition version.
    #   @return [String]
    #
    class TestCaseDefinition < Struct.new(
      :id,
      :test_case_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides test case run.
    #
    # @!attribute [rw] test_case_run_id
    #   Provides test case run Id.
    #   @return [String]
    #
    # @!attribute [rw] test_case_definition_id
    #   Provides test case run definition Id.
    #   @return [String]
    #
    # @!attribute [rw] test_case_definition_name
    #   Provides test case run definition Name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Provides test case run status.
    #   @return [String]
    #
    # @!attribute [rw] start_time
    #   Provides test case run start time.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Provides test case run end time.
    #   @return [Time]
    #
    # @!attribute [rw] log_url
    #   Provides test case run log Url.
    #   @return [String]
    #
    # @!attribute [rw] warnings
    #   Provides test case run warnings.
    #   @return [String]
    #
    # @!attribute [rw] failure
    #   Provides test case run failure result.
    #   @return [String]
    #
    class TestCaseRun < Struct.new(
      :test_case_run_id,
      :test_case_definition_id,
      :test_case_definition_name,
      :status,
      :start_time,
      :end_time,
      :log_url,
      :warnings,
      :failure)
      SENSITIVE = []
      include Aws::Structure
    end

    # Show each group result.
    #
    # @!attribute [rw] groups
    #   Show each group of test results.
    #   @return [Array<Types::GroupResult>]
    #
    class TestResult < Struct.new(
      :groups)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "AmazonResourceName", # required
    #         tag_keys: ["String128"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN of an IoT Device Advisor resource.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   List of tag keys to remove from the IoT Device Advisor resource.
    #   @return [Array<String>]
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    class UntagResourceResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateSuiteDefinitionRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #         suite_definition_configuration: {
    #           suite_definition_name: "SuiteDefinitionName",
    #           devices: [
    #             {
    #               thing_arn: "AmazonResourceName",
    #               certificate_arn: "AmazonResourceName",
    #             },
    #           ],
    #           intended_for_qualification: false,
    #           root_group: "RootGroup",
    #           device_permission_role_arn: "AmazonResourceName",
    #         },
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Updates a Device Advisor test suite with suite definition id.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_configuration
    #   Updates a Device Advisor test suite with suite definition
    #   configuration.
    #   @return [Types::SuiteDefinitionConfiguration]
    #
    class UpdateSuiteDefinitionRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_configuration)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_id
    #   Updates a Device Advisor test suite with suite UUID.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_arn
    #   Updates a Device Advisor test suite with Amazon Resource name.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Updates a Device Advisor test suite with suite definition name.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Updates a Device Advisor test suite with suite definition version.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Updates a Device Advisor test suite with TimeStamp of when it was
    #   created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Updates a Device Advisor test suite with TimeStamp of when it was
    #   updated.
    #   @return [Time]
    #
    class UpdateSuiteDefinitionResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_name,
      :suite_definition_version,
      :created_at,
      :last_updated_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends invalid request exception.
    #
    # @!attribute [rw] message
    #   Sends invalid request exception message.
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
