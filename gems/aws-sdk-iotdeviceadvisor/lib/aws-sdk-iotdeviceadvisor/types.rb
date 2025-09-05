# frozen_string_literal: true

# This is generated code!

module Aws::IotDeviceAdvisor
  # This module contains the types returned by client operations.
  module Types

    # <p>Sends a Conflict Exception.</p>
    # @!attribute message
    #   <p>Sends a Conflict Exception message.</p>
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_configuration
    #   <p>Creates a Device Advisor test suite with suite definition configuration.</p>
    #   @return [Types::SuiteDefinitionConfiguration]
    # @!attribute tags
    #   <p>The tags to be attached to the suite definition.</p>
    #   @return [Hash<String, String>]
    # @!attribute client_token
    #   <p>The client token for the test suite definition creation. 
    #               This token is used for tracking test suite definition creation 
    #               using retries and obtaining its status. This parameter is optional.</p>
    #   @return [String]
    class CreateSuiteDefinitionRequest < Struct.new(
      :suite_definition_configuration,
      :tags,
      :client_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>The UUID of the test suite created.</p>
    #   @return [String]
    # @!attribute suite_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the test suite.</p>
    #   @return [String]
    # @!attribute suite_definition_name
    #   <p>The suite definition name of the test suite. This is a required parameter.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>The timestamp of when the test suite was created.</p>
    #   @return [Time]
    class CreateSuiteDefinitionResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_name,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite to be deleted.</p>
    #   @return [String]
    class DeleteSuiteDefinitionRequest < Struct.new(
      :suite_definition_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class DeleteSuiteDefinitionResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information of a test device. A thing ARN, certificate ARN 
    #             or device role ARN is required.</p>
    # @!attribute thing_arn
    #   <p>Lists device's thing ARN.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>Lists device's certificate ARN.</p>
    #   @return [String]
    # @!attribute device_role_arn
    #   <p>Lists device's role ARN.</p>
    #   @return [String]
    class DeviceUnderTest < Struct.new(
      :thing_arn,
      :certificate_arn,
      :device_role_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute thing_arn
    #   <p>The thing ARN of the device. This is an optional parameter.</p>
    #   @return [String]
    # @!attribute certificate_arn
    #   <p>The certificate ARN of the device. This is an optional parameter.</p>
    #   @return [String]
    # @!attribute device_role_arn
    #   <p>The device role ARN of the device. This is an optional parameter.</p>
    #   @return [String]
    # @!attribute authentication_method
    #   <p>The authentication method used during the device connection.</p>
    #   @return [String]
    class GetEndpointRequest < Struct.new(
      :thing_arn,
      :certificate_arn,
      :device_role_arn,
      :authentication_method,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute endpoint
    #   <p>The response of an Device Advisor endpoint.</p>
    #   @return [String]
    class GetEndpointResponse < Struct.new(
      :endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite to get.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the test suite to get.</p>
    #   @return [String]
    class GetSuiteDefinitionRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the suite definition.</p>
    #   @return [String]
    # @!attribute suite_definition_arn
    #   <p>The ARN of the suite definition.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the suite definition.</p>
    #   @return [String]
    # @!attribute latest_version
    #   <p>Latest suite definition version of the suite definition.</p>
    #   @return [String]
    # @!attribute suite_definition_configuration
    #   <p>Suite configuration of the suite definition.</p>
    #   @return [Types::SuiteDefinitionConfiguration]
    # @!attribute created_at
    #   <p>Date (in Unix epoch time) when the suite definition was created.</p>
    #   @return [Time]
    # @!attribute last_modified_at
    #   <p>Date (in Unix epoch time) when the suite definition was last modified.</p>
    #   @return [Time]
    # @!attribute tags
    #   <p>Tags attached to the suite definition.</p>
    #   @return [Hash<String, String>]
    class GetSuiteDefinitionResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_version,
      :latest_version,
      :suite_definition_configuration,
      :created_at,
      :last_modified_at,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #   @return [String]
    # @!attribute suite_run_id
    #   <p>Suite run ID of the test suite run.</p>
    #   @return [String]
    class GetSuiteRunReportRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute qualification_report_download_url
    #   <p>Download URL of the qualification report.</p>
    #   @return [String]
    class GetSuiteRunReportResponse < Struct.new(
      :qualification_report_download_url,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID for the test suite run.</p>
    #   @return [String]
    # @!attribute suite_run_id
    #   <p>Suite run ID for the test suite run.</p>
    #   @return [String]
    class GetSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID for the test suite run.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Suite definition version for the test suite run.</p>
    #   @return [String]
    # @!attribute suite_run_id
    #   <p>Suite run ID for the test suite run.</p>
    #   @return [String]
    # @!attribute suite_run_arn
    #   <p>The ARN of the suite run.</p>
    #   @return [String]
    # @!attribute suite_run_configuration
    #   <p>Suite run configuration for the test suite run.</p>
    #   @return [Types::SuiteRunConfiguration]
    # @!attribute test_result
    #   <p>Test results for the test suite run.</p>
    #   @return [Types::TestResult]
    # @!attribute start_time
    #   <p>Date (in Unix epoch time) when the test suite run started.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Date (in Unix epoch time) when the test suite run ended.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status for the test suite run.</p>
    #   @return [String]
    # @!attribute error_reason
    #   <p>Error reason for any test suite run failure.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags attached to the suite run.</p>
    #   @return [Hash<String, String>]
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
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Show Group Result.</p>
    # @!attribute group_id
    #   <p>Group result ID.</p>
    #   @return [String]
    # @!attribute group_name
    #   <p>Group Result Name.</p>
    #   @return [String]
    # @!attribute tests
    #   <p>Tests under Group Result.</p>
    #   @return [Array<Types::TestCaseRun>]
    class GroupResult < Struct.new(
      :group_id,
      :group_name,
      :tests,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sends an Internal Failure exception.</p>
    # @!attribute message
    #   <p>Sends an Internal Failure Exception message.</p>
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute max_results
    #   <p>The maximum number of results to return at once.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #   @return [String]
    class ListSuiteDefinitionsRequest < Struct.new(
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_information_list
    #   <p>An array of objects that provide summaries of information about the suite definitions
    #               in the list.</p>
    #   @return [Array<Types::SuiteDefinitionInformation>]
    # @!attribute next_token
    #   <p>A token used to get the next set of results.</p>
    #   @return [String]
    class ListSuiteDefinitionsResponse < Struct.new(
      :suite_definition_information_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Lists the test suite runs of the specified test suite based on suite definition
    #               ID.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Must be passed along with <code>suiteDefinitionId</code>. Lists the test suite runs of
    #               the specified test suite based on suite definition version.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The maximum number of results to return at once.</p>
    #   @return [Integer]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #   @return [String]
    class ListSuiteRunsRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :max_results,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_runs_list
    #   <p>An array of objects that provide summaries of information about the suite runs in the
    #               list.</p>
    #   @return [Array<Types::SuiteRunInformation>]
    # @!attribute next_token
    #   <p>A token to retrieve the next set of results.</p>
    #   @return [String]
    class ListSuiteRunsResponse < Struct.new(
      :suite_runs_list,
      :next_token,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN of the IoT Device Advisor resource. This can be SuiteDefinition ARN or
    #               SuiteRun ARN.</p>
    #   @return [String]
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute tags
    #   <p>The tags attached to the IoT Device Advisor resource.</p>
    #   @return [Hash<String, String>]
    class ListTagsForResourceResponse < Struct.new(
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sends a Resource Not Found exception.</p>
    # @!attribute message
    #   <p>Sends a Resource Not Found Exception message.</p>
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the test suite.</p>
    #   @return [String]
    # @!attribute suite_run_configuration
    #   <p>Suite run configuration.</p>
    #   @return [Types::SuiteRunConfiguration]
    # @!attribute tags
    #   <p>The tags to be attached to the suite run.</p>
    #   @return [Hash<String, String>]
    class StartSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_version,
      :suite_run_configuration,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_run_id
    #   <p>Suite Run ID of the started suite run.</p>
    #   @return [String]
    # @!attribute suite_run_arn
    #   <p>Amazon Resource Name (ARN) of the started suite run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Starts a Device Advisor test suite run based on suite create time.</p>
    #   @return [Time]
    # @!attribute endpoint
    #   <p>The response of an Device Advisor test endpoint.</p>
    #   @return [String]
    class StartSuiteRunResponse < Struct.new(
      :suite_run_id,
      :suite_run_arn,
      :created_at,
      :endpoint,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite run to be stopped.</p>
    #   @return [String]
    # @!attribute suite_run_id
    #   <p>Suite run ID of the test suite run to be stopped.</p>
    #   @return [String]
    class StopSuiteRunRequest < Struct.new(
      :suite_definition_id,
      :suite_run_id,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class StopSuiteRunResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Gets the suite definition configuration.</p>
    # @!attribute suite_definition_name
    #   <p>Gets the suite definition name. This is a required parameter.</p>
    #   @return [String]
    # @!attribute devices
    #   <p>Gets the devices configured.</p>
    #   @return [Array<Types::DeviceUnderTest>]
    # @!attribute intended_for_qualification
    #   <p>Gets the tests intended for qualification in a suite.</p>
    #   @return [Boolean]
    # @!attribute is_long_duration_test
    #   <p>Verifies if the test suite is a long duration test.</p>
    #   @return [Boolean]
    # @!attribute root_group
    #   <p>Gets the test suite root group. This is a required parameter.
    #               For updating or creating the latest qualification suite, 
    #               if <code>intendedForQualification</code> is set to true, 
    #               <code>rootGroup</code> can be an empty string. If <code>intendedForQualification</code> is false, 
    #               <code>rootGroup</code> cannot be an empty string.
    #               If <code>rootGroup</code> is empty, and 
    #               <code>intendedForQualification</code> is set to true, 
    #               all the qualification tests are included, and the configuration is default.</p>
    #            <p>
    #               For a qualification suite, the minimum length is 0, and the maximum is 2048.  For a 
    #               non-qualification suite, the minimum length is 1, and the maximum is 2048.
    #           </p>
    #   @return [String]
    # @!attribute device_permission_role_arn
    #   <p>Gets the device permission ARN. This is a required parameter.</p>
    #   @return [String]
    # @!attribute protocol
    #   <p>Sets the MQTT protocol that is configured in the suite definition.</p>
    #   @return [String]
    class SuiteDefinitionConfiguration < Struct.new(
      :suite_definition_name,
      :devices,
      :intended_for_qualification,
      :is_long_duration_test,
      :root_group,
      :device_permission_role_arn,
      :protocol,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the suite definition.</p>
    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite.</p>
    #   @return [String]
    # @!attribute suite_definition_name
    #   <p>Suite name of the test suite.</p>
    #   @return [String]
    # @!attribute default_devices
    #   <p>Specifies the devices that are under test for the test suite.</p>
    #   @return [Array<Types::DeviceUnderTest>]
    # @!attribute intended_for_qualification
    #   <p>Specifies if the test suite is intended for qualification.</p>
    #   @return [Boolean]
    # @!attribute is_long_duration_test
    #   <p>Verifies if the test suite is a long duration test.</p>
    #   @return [Boolean]
    # @!attribute protocol
    #   <p>Gets the MQTT protocol that is configured in the suite definition.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Date (in Unix epoch time) when the test suite was created.</p>
    #   @return [Time]
    class SuiteDefinitionInformation < Struct.new(
      :suite_definition_id,
      :suite_definition_name,
      :default_devices,
      :intended_for_qualification,
      :is_long_duration_test,
      :protocol,
      :created_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Gets suite run configuration.</p>
    # @!attribute primary_device
    #   <p>Sets the primary device for the test suite run. This requires a thing ARN or a
    #               certificate ARN.</p>
    #   @return [Types::DeviceUnderTest]
    # @!attribute selected_test_list
    #   <p>Sets test case list.</p>
    #   @return [Array<String>]
    # @!attribute parallel_run
    #   <p>TRUE if multiple test suites run in parallel.</p>
    #   @return [Boolean]
    class SuiteRunConfiguration < Struct.new(
      :primary_device,
      :selected_test_list,
      :parallel_run,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Information about the suite run.</p>
    #          <p>Requires permission to access the <a href="https://docs.aws.amazon.com/service-authorization/latest/reference/list_awsiot.html#awsiot-actions-as-permissions">SuiteRunInformation</a> action.</p>
    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the suite run.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the suite run.</p>
    #   @return [String]
    # @!attribute suite_definition_name
    #   <p>Suite definition name of the suite run.</p>
    #   @return [String]
    # @!attribute suite_run_id
    #   <p>Suite run ID of the suite run.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Date (in Unix epoch time) when the suite run was created.</p>
    #   @return [Time]
    # @!attribute started_at
    #   <p>Date (in Unix epoch time) when the suite run was started.</p>
    #   @return [Time]
    # @!attribute end_at
    #   <p>Date (in Unix epoch time) when the suite run ended.</p>
    #   @return [Time]
    # @!attribute status
    #   <p>Status of the suite run.</p>
    #   @return [String]
    # @!attribute passed
    #   <p>Number of test cases that passed in the suite run.</p>
    #   @return [Integer]
    # @!attribute failed
    #   <p>Number of test cases that failed in the suite run.</p>
    #   @return [Integer]
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
      :failed,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or
    #               SuiteRun ARN.</p>
    #   @return [String]
    # @!attribute tags
    #   <p>The tags to be attached to the IoT Device Advisor resource.</p>
    #   @return [Hash<String, String>]
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class TagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides the test case run.</p>
    # @!attribute test_case_run_id
    #   <p>Provides the test case run ID.</p>
    #   @return [String]
    # @!attribute test_case_definition_id
    #   <p>Provides the test case run definition ID.</p>
    #   @return [String]
    # @!attribute test_case_definition_name
    #   <p>Provides the test case run definition name.</p>
    #   @return [String]
    # @!attribute status
    #   <p>Provides the test case run status. Status is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PASS</code>: Test passed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code>: Test failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: Test has not started running but is scheduled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: Test is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: Test is performing cleanup steps. You will see this
    #                       status only if you stop a suite run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> Test is stopped. You will see this status only if you
    #                       stop a suite run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASS_WITH_WARNINGS</code>: Test passed with warnings.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERORR</code>: Test faced an error when running due to an internal
    #                       issue.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute start_time
    #   <p>Provides test case run start time.</p>
    #   @return [Time]
    # @!attribute end_time
    #   <p>Provides test case run end time.</p>
    #   @return [Time]
    # @!attribute log_url
    #   <p>Provides test case run log URL.</p>
    #   @return [String]
    # @!attribute warnings
    #   <p>Provides test case run warnings.</p>
    #   @return [String]
    # @!attribute failure
    #   <p>Provides test case run failure result.</p>
    #   @return [String]
    # @!attribute test_scenarios
    #   <p> Provides the test scenarios for the test case run. </p>
    #   @return [Array<Types::TestCaseScenario>]
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
      :test_scenarios,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Provides test case scenario.</p>
    # @!attribute test_case_scenario_id
    #   <p>Provides test case scenario ID.</p>
    #   @return [String]
    # @!attribute test_case_scenario_type
    #   <p>Provides test case scenario type. Type is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>Advanced</p>
    #               </li>
    #               <li>
    #                  <p>Basic</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute status
    #   <p>Provides the test case scenario status. Status is one of the following:</p>
    #            <ul>
    #               <li>
    #                  <p>
    #                     <code>PASS</code>: Test passed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>FAIL</code>: Test failed.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PENDING</code>: Test has not started running but is scheduled.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>RUNNING</code>: Test is running.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPING</code>: Test is performing cleanup steps. You will see this
    #                       status only if you stop a suite run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>STOPPED</code> Test is stopped. You will see this status only if you
    #                       stop a suite run.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>PASS_WITH_WARNINGS</code>: Test passed with warnings.</p>
    #               </li>
    #               <li>
    #                  <p>
    #                     <code>ERORR</code>: Test faced an error when running due to an internal
    #                       issue.</p>
    #               </li>
    #            </ul>
    #   @return [String]
    # @!attribute failure
    #   <p>Provides test case scenario failure result.</p>
    #   @return [String]
    # @!attribute system_message
    #   <p>Provides test case scenario system messages if any.</p>
    #   @return [String]
    class TestCaseScenario < Struct.new(
      :test_case_scenario_id,
      :test_case_scenario_type,
      :status,
      :failure,
      :system_message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Show each group result.</p>
    # @!attribute groups
    #   <p>Show each group of test results.</p>
    #   @return [Array<Types::GroupResult>]
    class TestResult < Struct.new(
      :groups,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute resource_arn
    #   <p>The resource ARN of an IoT Device Advisor resource. This can be SuiteDefinition ARN or
    #               SuiteRun ARN.</p>
    #   @return [String]
    # @!attribute tag_keys
    #   <p>List of tag keys to remove from the IoT Device Advisor resource.</p>
    #   @return [Array<String>]
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    class UntagResourceResponse < Struct.new(
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the test suite to be updated.</p>
    #   @return [String]
    # @!attribute suite_definition_configuration
    #   <p>Updates a Device Advisor test suite with suite definition configuration.</p>
    #   @return [Types::SuiteDefinitionConfiguration]
    class UpdateSuiteDefinitionRequest < Struct.new(
      :suite_definition_id,
      :suite_definition_configuration,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # @!attribute suite_definition_id
    #   <p>Suite definition ID of the updated test suite.</p>
    #   @return [String]
    # @!attribute suite_definition_arn
    #   <p>Amazon Resource Name (ARN) of the updated test suite.</p>
    #   @return [String]
    # @!attribute suite_definition_name
    #   <p>Updates the suite definition name. This is a required parameter.</p>
    #   @return [String]
    # @!attribute suite_definition_version
    #   <p>Suite definition version of the updated test suite.</p>
    #   @return [String]
    # @!attribute created_at
    #   <p>Timestamp of when the test suite was created.</p>
    #   @return [Time]
    # @!attribute last_updated_at
    #   <p>Timestamp of when the test suite was updated.</p>
    #   @return [Time]
    class UpdateSuiteDefinitionResponse < Struct.new(
      :suite_definition_id,
      :suite_definition_arn,
      :suite_definition_name,
      :suite_definition_version,
      :created_at,
      :last_updated_at,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

    # <p>Sends a validation exception.</p>
    # @!attribute message
    #   <p>Sends a Validation Exception message.</p>
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true)
      include ::Smithy::Schema::Structure
    end

  end
end
