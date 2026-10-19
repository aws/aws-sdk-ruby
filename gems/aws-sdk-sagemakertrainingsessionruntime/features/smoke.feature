# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for SageMakerTrainingSessionRuntime

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteSamplingOperationSample
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_sampling_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","operation_config":{"sample":{"prompt":{"chunks":[{"tokens":[1,2,3],"type":"encoded_text"}]},"num_samples":1,"sampling_params":{"max_tokens":512}}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteSamplingOperationComputeLogprobs
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_sampling_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","operation_config":{"compute_logprobs":{"prompt":{"chunks":[{"tokens":[1,2,3],"type":"encoded_text"}]}}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteSamplingOperationLoadWeightsForSampling
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_sampling_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","operation_config":{"load_weights_for_sampling":{"model_package_arn":"arn:aws:sagemaker:us-west-2:123456789012:model-package/smoke-test/1"}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteTrainingOperationForward
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_training_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","sequence_number":1,"operation_config":{"forward":{"loss_fn_name":"cross_entropy","datum_list":[{"model_input":{"chunks":[{"tokens":[1,2,3],"type":"encoded_text"}]}}]}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteTrainingOperationForwardBackward
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_training_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","sequence_number":1,"operation_config":{"forward_backward":{"loss_fn_name":"importance_sampling","datum_list":[{"model_input":{"chunks":[{"tokens":[1,2,3],"type":"encoded_text"}]}}]}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteTrainingOperationOptimizerStep
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_training_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","sequence_number":1,"operation_config":{"optimizer_step":{"adam_params_config":{"learning_rate":0.001}}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteTrainingOperationSaveWeights
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_training_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","sequence_number":1,"operation_config":{"save_weights":{}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteTrainingOperationSaveState
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_training_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","sequence_number":1,"operation_config":{"save_state":{}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: ExecuteTrainingOperationLoadState
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'execute_training_operation' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","sequence_number":1,"operation_config":{"load_state":{"model_package_arn":"arn:aws:sagemaker:us-west-2:123456789012:model-package/smoke-test","load_optimizer":true}}}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: GetTrainingOperationResultFailure
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_training_operation_result' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","operation_id":"smoke-test-nonexistent-operation"}
      """
    Then I expect an error was raised

  @sagemakertrainingsessionruntime @smoke
  Scenario: GetSamplingOperationResultFailure
    Given I create a 'Aws::SageMakerTrainingSessionRuntime' client with config:
      """
{"region":"us-west-2","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_sampling_operation_result' with params:
      """
{"training_session_name":"smoke-test-nonexistent-session","operation_id":"smoke-test-nonexistent-operation"}
      """
    Then I expect an error was raised
