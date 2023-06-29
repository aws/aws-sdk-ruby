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
    #   The UUID of the test suite created.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_arn
    #   The Amazon Resource Name (ARN) of the test suite.
    #   @return [String]
    #
    # @!attribute [rw] suite_definition_name
    #   The suite definition name of the test suite. This is a required
    #   parameter.
    #   @return [String]
    #
    # @!attribute [rw] created_at
    #   The timestamp of when the test suite was created.
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

    # Information of a test device. A thing ARN, certificate ARN or device
    # role ARN is required.
    #
    # @!attribute [rw] thing_arn
    #   Lists device's thing ARN.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   Lists device's certificate ARN.
    #   @return [String]
    #
    # @!attribute [rw] device_role_arn
    #   Lists device's role ARN.
    #   @return [String]
    #
    class DeviceUnderTest < Struct.new(
      :thing_arn,
      :certificate_arn,
      :device_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] thing_arn
    #   The thing ARN of the device. This is an optional parameter.
    #   @return [String]
    #
    # @!attribute [rw] certificate_arn
    #   The certificate ARN of the device. This is an optional parameter.
    #   @return [String]
    #
    # @!attribute [rw] device_role_arn
    #   The device role ARN of the device. This is an optional parameter.
    #   @return [String]
    #
    # @!attribute [rw] authentication_method
    #   The authentication method used during the device connection.
    #   @return [String]
    #
    class GetEndpointRequest < Struct.new(
      :thing_arn,
      :certificate_arn,
      :device_role_arn,
      :authentication_method)
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

    # @!attribute [rw] resource_arn
    #   The resource ARN of the IoT Device Advisor resource. This can be
    #   SuiteDefinition ARN or SuiteRun ARN.
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
    # @!attribute [rw] endpoint
    #   The response of an Device Advisor test endpoint.
    #   @return [String]
    #
    class StartSuiteRunResponse < Struct.new(
      :suite_run_id,
      :suite_run_arn,
      :created_at,
      :endpoint)
      SENSITIVE = []
      include Aws::Structure
    end

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

    # Gets the suite definition configuration.
    #
    # @!attribute [rw] suite_definition_name
    #   Gets the suite definition name. This is a required parameter.
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
    # @!attribute [rw] is_long_duration_test
    #   Verifies if the test suite is a long duration test.
    #   @return [Boolean]
    #
    # @!attribute [rw] root_group
    #   Gets the test suite root group. This is a required parameter. For
    #   updating or creating the latest qualification suite, if
    #   `intendedForQualification` is set to true, `rootGroup` can be an
    #   empty string. If `intendedForQualification` is false, `rootGroup`
    #   cannot be an empty string. If `rootGroup` is empty, and
    #   `intendedForQualification` is set to true, all the qualification
    #   tests are included, and the configuration is default.
    #
    #   For a qualification suite, the minimum length is 0, and the maximum
    #   is 2048. For a non-qualification suite, the minimum length is 1, and
    #   the maximum is 2048.
    #   @return [String]
    #
    # @!attribute [rw] device_permission_role_arn
    #   Gets the device permission ARN. This is a required parameter.
    #   @return [String]
    #
    # @!attribute [rw] protocol
    #   Sets the MQTT protocol that is configured in the suite definition.
    #   @return [String]
    #
    class SuiteDefinitionConfiguration < Struct.new(
      :suite_definition_name,
      :devices,
      :intended_for_qualification,
      :is_long_duration_test,
      :root_group,
      :device_permission_role_arn,
      :protocol)
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
    # @!attribute [rw] is_long_duration_test
    #   Verifies if the test suite is a long duration test.
    #   @return [Boolean]
    #
    # @!attribute [rw] protocol
    #   Gets the MQTT protocol that is configured in the suite definition.
    #   @return [String]
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
      :is_long_duration_test,
      :protocol,
      :created_at)
      SENSITIVE = []
      include Aws::Structure
    end

    # Gets suite run configuration.
    #
    # @!attribute [rw] primary_device
    #   Sets the primary device for the test suite run. This requires a
    #   thing ARN or a certificate ARN.
    #   @return [Types::DeviceUnderTest]
    #
    # @!attribute [rw] selected_test_list
    #   Sets test case list.
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

    # @!attribute [rw] resource_arn
    #   The resource ARN of an IoT Device Advisor resource. This can be
    #   SuiteDefinition ARN or SuiteRun ARN.
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
    #   * `PASS`: Test passed.
    #
    #   * `FAIL`: Test failed.
    #
    #   * `PENDING`: Test has not started running but is scheduled.
    #
    #   * `RUNNING`: Test is running.
    #
    #   * `STOPPING`: Test is performing cleanup steps. You will see this
    #     status only if you stop a suite run.
    #
    #   * `STOPPED` Test is stopped. You will see this status only if you
    #     stop a suite run.
    #
    #   * `PASS_WITH_WARNINGS`: Test passed with warnings.
    #
    #   * `ERORR`: Test faced an error when running due to an internal
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
    # @!attribute [rw] test_scenarios
    #   Provides the test scenarios for the test case run.
    #   @return [Array<Types::TestCaseScenario>]
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
      :failure,
      :test_scenarios)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides test case scenario.
    #
    # @!attribute [rw] test_case_scenario_id
    #   Provides test case scenario ID.
    #   @return [String]
    #
    # @!attribute [rw] test_case_scenario_type
    #   Provides test case scenario type. Type is one of the following:
    #
    #   * Advanced
    #
    #   * Basic
    #   @return [String]
    #
    # @!attribute [rw] status
    #   Provides the test case scenario status. Status is one of the
    #   following:
    #
    #   * `PASS`: Test passed.
    #
    #   * `FAIL`: Test failed.
    #
    #   * `PENDING`: Test has not started running but is scheduled.
    #
    #   * `RUNNING`: Test is running.
    #
    #   * `STOPPING`: Test is performing cleanup steps. You will see this
    #     status only if you stop a suite run.
    #
    #   * `STOPPED` Test is stopped. You will see this status only if you
    #     stop a suite run.
    #
    #   * `PASS_WITH_WARNINGS`: Test passed with warnings.
    #
    #   * `ERORR`: Test faced an error when running due to an internal
    #     issue.
    #   @return [String]
    #
    # @!attribute [rw] failure
    #   Provides test case scenario failure result.
    #   @return [String]
    #
    # @!attribute [rw] system_message
    #   Provides test case scenario system messages if any.
    #   @return [String]
    #
    class TestCaseScenario < Struct.new(
      :test_case_scenario_id,
      :test_case_scenario_type,
      :status,
      :failure,
      :system_message)
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

    # @!attribute [rw] resource_arn
    #   The resource ARN of an IoT Device Advisor resource. This can be
    #   SuiteDefinition ARN or SuiteRun ARN.
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
    #   Updates the suite definition name. This is a required parameter.
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
