# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::IoTDeviceAdvisor
  module Types

    # Sends a Conflict Exception.
    #
    # @!attribute [rw] message
    #   Sends a Conflict Exception message.
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
    #   Creates a Device Advisor test suite with Amazon Resource Name (ARN).
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
    #   Suite definition ID of the test suite to be deleted.
    #   @return [String]
    #
    class DeleteSuiteDefinitionRequest < Struct.new(
      :suite_definition_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class DeleteSuiteDefinitionResponse < Aws::EmptyStructure; end

    # Information of a test device. A thing ARN or a certificate ARN is
    # required.
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
    #   Lists devices thing ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   Lists devices certificate ARN.
    #   @return [String]
    #
    class DeviceUnderTest < Struct.new(
      :thing_arn,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEndpointRequest
    #   data as a hash:
    #
    #       {
    #         thing_arn: "AmazonResourceName",
    #         certificate_arn: "AmazonResourceName",
    #       }
    #
    # @!attribute [rw] thing_arn
    #   The thing ARN of the device. This is an optional parameter.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The certificate ARN of the device. This is an optional parameter.
    #   @return [String]
    #
    class GetEndpointRequest < Struct.new(
      :thing_arn,
      :certificate_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] endpoint
    #   The response of an Device Advisor endpoint.
    #   @return [String]
    #
    class GetEndpointResponse < Struct.new(
      :endpoint)
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
    #   Suite definition ID of the test suite to get.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Suite definition version of the test suite to get.
    #   @return [String]
    #
    class GetSuiteDefinitionRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_id
    #   Suite definition ID of the suite definition.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_arn
    #   The ARN of the suite definition.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Suite definition version of the suite definition.
    #   @return [String]
    #
    # @!attribute [rw] latest_version
    #   Latest suite definition version of the suite definition.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_configuration
    #   Suite configuration of the suite definition.
    #   @return [Types::SuiteDefinitionConfiguration]
    #
    # @!attribute [rw] created_at
    #   Date (in Unix epoch time) when the suite definition was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_modified_at
    #   Date (in Unix epoch time) when the suite definition was last
    #   modified.
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
    #   Suite definition ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Suite run ID of the test suite run.
    #   @return [String]
    #
    class GetSuiteRunReportRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] qualification_report_download_url
    #   Download URL of the qualification report.
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
    #   Suite definition ID for the test suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Suite run ID for the test suite run.
    #   @return [String]
    #
    class GetSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_id
    #   Suite definition ID for the test suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Suite definition version for the test suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Suite run ID for the test suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_arn
    #   The ARN of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_configuration
    #   Suite run configuration for the test suite run.
    #   @return [Types::SuiteRunConfiguration]
    #
    # @!attribute [rw] test_result
    #   Test results for the test suite run.
    #   @return [Types::TestResult]
    #
    # @!attribute [rw] start_time
    #   Date (in Unix epoch time) when the test suite run started.
    #   @return [Time]
    #
    # @!attribute [rw] end_time
    #   Date (in Unix epoch time) when the test suite run ended.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status for the test suite run.
    #   @return [String]
    #
    # @!attribute [rw] error_reason
    #   Error reason for any test suite run failure.
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
    #   Group result ID.
    #   @return [String]
    #
    # @!attribute [rw] group_name
    #   Group Result Name.
    #   @return [String]
    #
    # @!attribute [rw] tests
    #   Tests under Group Result.
    #   @return [Array<Types::TestCaseRun>]
    #
    class GroupResult < Struct.new(
      :group_id,
      :group_name,
      :tests)
      SENSITIVE = []
      include Aws::Structure
    end

    # Sends an Internal Failure exception.
    #
    # @!attribute [rw] message
    #   Sends an Internal Failure Exception message.
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
    #   The maximum number of results to return at once.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token used to get the next set of results.
    #   @return [String]
    #
    class ListSuiteDefinitionsRequest < Struct.new(
      :max_results,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] suite_definition_information_list
    #   An array of objects that provide summaries of information about the
    #   suite definitions in the list.
    #   @return [Array<Types::SuiteDefinitionInformation>]
    #
    # @!attribute [rw] next_token
    #   A token used to get the next set of results.
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
    #   Lists the test suite runs of the specified test suite based on suite
    #   definition ID.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Must be passed along with `suiteDefinitionId`. Lists the test suite
    #   runs of the specified test suite based on suite definition version.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return at once.
    #   @return [Integer]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
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
    #   An array of objects that provide summaries of information about the
    #   suite runs in the list.
    #   @return [Array<Types::SuiteRunInformation>]
    #
    # @!attribute [rw] next_token
    #   A token to retrieve the next set of results.
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

    # Sends a Resource Not Found exception.
    #
    # @!attribute [rw] message
    #   Sends a Resource Not Found Exception message.
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
    #           selected_test_list: ["UUID"],
    #           parallel_run: false,
    #         },
    #         tags: {
    #           "String128" => "String256",
    #         },
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Suite definition ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Suite definition version of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_configuration
    #   Suite run configuration.
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
    #   Suite Run ID of the started suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_arn
    #   Amazon Resource Name (ARN) of the started suite run.
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

    # @note When making an API call, you may pass StopSuiteRunRequest
    #   data as a hash:
    #
    #       {
    #         suite_definition_id: "UUID", # required
    #         suite_run_id: "UUID", # required
    #       }
    #
    # @!attribute [rw] suite_definition_id
    #   Suite definition ID of the test suite run to be stopped.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Suite run ID of the test suite run to be stopped.
    #   @return [String]
    #
    class StopSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id)
      SENSITIVE = []
      include Aws::Structure
    end

    class StopSuiteRunResponse < Aws::EmptyStructure; end

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
    #   Gets the device permission ARN.
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

    # Information about the suite definition.
    #
    # @!attribute [rw] suite_definition_id
    #   Suite definition ID of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Suite name of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] default_devices
    #   Specifies the devices that are under test for the test suite.
    #   @return [Array<Types::DeviceUnderTest>]
    #
    # @!attribute [rw] intended_for_qualification
    #   Specifies if the test suite is intended for qualification.
    #   @return [Boolean]
    #
    # @!attribute [rw] created_at
    #   Date (in Unix epoch time) when the test suite was created.
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
    #         selected_test_list: ["UUID"],
    #         parallel_run: false,
    #       }
    #
    # @!attribute [rw] primary_device
    #   Gets the primary device for suite run.
    #   @return [Types::DeviceUnderTest]
    #
    # @!attribute [rw] selected_test_list
    #   Gets test case list.
    #   @return [Array<String>]
    #
    # @!attribute [rw] parallel_run
    #   TRUE if multiple test suites run in parallel.
    #   @return [Boolean]
    #
    class SuiteRunConfiguration < Struct.new(
      :primary_device,
      :selected_test_list,
      :parallel_run)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about the suite run.
    #
    # Requires permission to access the [SuiteRunInformation][1] action.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions
    #
    # @!attribute [rw] suite_definition_id
    #   Suite definition ID of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Suite definition version of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Suite definition name of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] suite_run_id
    #   Suite run ID of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Date (in Unix epoch time) when the suite run was created.
    #   @return [Time]
    #
    # @!attribute [rw] started_at
    #   Date (in Unix epoch time) when the suite run was started.
    #   @return [Time]
    #
    # @!attribute [rw] end_at
    #   Date (in Unix epoch time) when the suite run ended.
    #   @return [Time]
    #
    # @!attribute [rw] status
    #   Status of the suite run.
    #   @return [String]
    #
    # @!attribute [rw] passed
    #   Number of test cases that passed in the suite run.
    #   @return [Integer]
    #
    # @!attribute [rw] failed
    #   Number of test cases that failed in the suite run.
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

    # Provides the test case run.
    #
    # @!attribute [rw] test_case_run_id
    #   Provides the test case run ID.
    #   @return [String]
    #
    # @!attribute [rw] test_case_definition_id
    #   Provides the test case run definition ID.
    #   @return [String]
    #
    # @!attribute [rw] test_case_definition_name
    #   Provides the test case run definition name.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Provides the test case run status. Status is one of the following:
    #
    #   * `PASS`\: Test passed.
    #
    #   * `FAIL`\: Test failed.
    #
    #   * `PENDING`\: Test has not started running but is scheduled.
    #
    #   * `RUNNING`\: Test is running.
    #
    #   * `STOPPING`\: Test is performing cleanup steps. You will see this
    #     status only if you stop a suite run.
    #
    #   * `STOPPED` Test is stopped. You will see this status only if you
    #     stop a suite run.
    #
    #   * `PASS_WITH_WARNINGS`\: Test passed with warnings.
    #
    #   * `ERORR`\: Test faced an error when running due to an internal
    #     issue.
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
    #   Provides test case run log URL.
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
    #   Suite definition ID of the test suite to be updated.
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
    #   Suite definition ID of the updated test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_arn
    #   Amazon Resource Name (ARN) of the updated test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   Suite definition name of the updated test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_version
    #   Suite definition version of the updated test suite.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   Timestamp of when the test suite was created.
    #   @return [Time]
    #
    # @!attribute [rw] last_updated_at
    #   Timestamp of when the test suite was updated.
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

    # Sends a validation exception.
    #
    # @!attribute [rw] message
    #   Sends a Validation Exception message.
    #   @return [String]
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
