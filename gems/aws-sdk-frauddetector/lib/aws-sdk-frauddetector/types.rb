# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FraudDetector
  module Types

    # Provides the error of the batch create variable API.
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableError AWS API Documentation
    #
    class BatchCreateVariableError < Struct.new(
      :name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchCreateVariableRequest
    #   data as a hash:
    #
    #       {
    #         variable_entries: [ # required
    #           {
    #             name: "string",
    #             data_type: "string",
    #             data_source: "string",
    #             default_value: "string",
    #             description: "string",
    #             variable_type: "string",
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] variable_entries
    #   The list of variables for the batch create variable request.
    #   @return [Array<Types::VariableEntry>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableRequest AWS API Documentation
    #
    class BatchCreateVariableRequest < Struct.new(
      :variable_entries)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] errors
    #   Provides the errors for the `BatchCreateVariable` request.
    #   @return [Array<Types::BatchCreateVariableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableResult AWS API Documentation
    #
    class BatchCreateVariableResult < Struct.new(
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the error of the batch get variable API.
    #
    # @!attribute [rw] name
    #   The error name.
    #   @return [String]
    #
    # @!attribute [rw] code
    #   The error code.
    #   @return [Integer]
    #
    # @!attribute [rw] message
    #   The error message.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariableError AWS API Documentation
    #
    class BatchGetVariableError < Struct.new(
      :name,
      :code,
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass BatchGetVariableRequest
    #   data as a hash:
    #
    #       {
    #         names: ["string"], # required
    #       }
    #
    # @!attribute [rw] names
    #   The list of variable names to get.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariableRequest AWS API Documentation
    #
    class BatchGetVariableRequest < Struct.new(
      :names)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variables
    #   The returned variables.
    #   @return [Array<Types::Variable>]
    #
    # @!attribute [rw] errors
    #   The errors from the request.
    #   @return [Array<Types::BatchGetVariableError>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchGetVariableResult AWS API Documentation
    #
    class BatchGetVariableResult < Struct.new(
      :variables,
      :errors)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception indicating there was a conflict during a delete
    # operation. The following delete operations can cause a conflict
    # exception:
    #
    # * DeleteDetector: A conflict exception will occur if the detector has
    #   associated `Rules` or `DetectorVersions`. You can only delete a
    #   detector if it has no `Rules` or `DetectorVersions`.
    #
    # * DeleteDetectorVersion: A conflict exception will occur if the
    #   `DetectorVersion` status is `ACTIVE`.
    #
    # * DeleteRuleVersion: A conflict exception will occur if the
    #   `RuleVersion` is in use by an associated `ACTIVE` or `INACTIVE
    #   DetectorVersion`.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateDetectorVersionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         description: "description",
    #         external_model_endpoints: ["string"],
    #         rules: [ # required
    #           {
    #             detector_id: "identifier", # required
    #             rule_id: "identifier", # required
    #             rule_version: "nonEmptyString", # required
    #           },
    #         ],
    #         model_versions: [
    #           {
    #             model_id: "identifier", # required
    #             model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #             model_version_number: "nonEmptyString", # required
    #           },
    #         ],
    #         rule_execution_mode: "ALL_MATCHED", # accepts ALL_MATCHED, FIRST_MATCHED
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector under which you want to create a new version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the detector version.
    #   @return [String]
    #
    # @!attribute [rw] external_model_endpoints
    #   The Amazon Sagemaker model endpoints to include in the detector
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules
    #   The rules to include in the detector version.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] model_versions
    #   The model versions to include in the detector version.
    #   @return [Array<Types::ModelVersion>]
    #
    # @!attribute [rw] rule_execution_mode
    #   The rule execution mode for the rules included in the detector
    #   version.
    #
    #   You can define and edit the rule mode at the detector version level,
    #   when it is in draft status.
    #
    #   If you specify `FIRST_MATCHED`, Amazon Fraud Detector evaluates
    #   rules sequentially, first to last, stopping at the first matched
    #   rule. Amazon Fraud dectector then provides the outcomes for that
    #   single rule.
    #
    #   If you specifiy `ALL_MATCHED`, Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules.
    #
    #   The default behavior is `FIRST_MATCHED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateDetectorVersionRequest AWS API Documentation
    #
    class CreateDetectorVersionRequest < Struct.new(
      :detector_id,
      :description,
      :external_model_endpoints,
      :rules,
      :model_versions,
      :rule_execution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The ID for the created version's parent detector.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The ID for the created detector.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the detector version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateDetectorVersionResult AWS API Documentation
    #
    class CreateDetectorVersionResult < Struct.new(
      :detector_id,
      :detector_version_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateModelVersionRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         description: "description",
    #       }
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model version description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelVersionRequest AWS API Documentation
    #
    class CreateModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The version of the model.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The model version status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelVersionResult AWS API Documentation
    #
    class CreateModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "identifier", # required
    #         detector_id: "identifier", # required
    #         description: "description",
    #         expression: "ruleExpression", # required
    #         language: "DETECTORPL", # required, accepts DETECTORPL
    #         outcomes: ["string"], # required
    #       }
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID for the rule's parent detector.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language of the rule.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcome or outcomes returned when the rule expression matches.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :rule_id,
      :detector_id,
      :description,
      :expression,
      :language,
      :outcomes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   The created rule.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateRuleResult AWS API Documentation
    #
    class CreateRuleResult < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass CreateVariableRequest
    #   data as a hash:
    #
    #       {
    #         name: "string", # required
    #         data_type: "STRING", # required, accepts STRING, INTEGER, FLOAT, BOOLEAN
    #         data_source: "EVENT", # required, accepts EVENT, MODEL_SCORE, EXTERNAL_MODEL_SCORE
    #         default_value: "string", # required
    #         description: "string",
    #         variable_type: "string",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The source of the data.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value for the variable when no value is received.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariableRequest AWS API Documentation
    #
    class CreateVariableRequest < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariableResult AWS API Documentation
    #
    class CreateVariableResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorRequest AWS API Documentation
    #
    class DeleteDetectorRequest < Struct.new(
      :detector_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorResult AWS API Documentation
    #
    class DeleteDetectorResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteDetectorVersionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "nonEmptyString", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the parent detector for the detector version to delete.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The ID of the detector version to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorVersionRequest AWS API Documentation
    #
    class DeleteDetectorVersionRequest < Struct.new(
      :detector_id,
      :detector_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteDetectorVersionResult AWS API Documentation
    #
    class DeleteDetectorVersionResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteEventRequest
    #   data as a hash:
    #
    #       {
    #         event_id: "string", # required
    #       }
    #
    # @!attribute [rw] event_id
    #   The ID of the event to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventRequest AWS API Documentation
    #
    class DeleteEventRequest < Struct.new(
      :event_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventResult AWS API Documentation
    #
    class DeleteEventResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRuleVersionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "nonEmptyString", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The ID of the detector that includes the rule version to delete.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The rule ID of the rule version to delete.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRuleVersionRequest AWS API Documentation
    #
    class DeleteRuleVersionRequest < Struct.new(
      :detector_id,
      :rule_id,
      :rule_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRuleVersionResult AWS API Documentation
    #
    class DeleteRuleVersionResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous response.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeDetectorRequest AWS API Documentation
    #
    class DescribeDetectorRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_summaries
    #   The status and description for each detector version.
    #   @return [Array<Types::DetectorVersionSummary>]
    #
    # @!attribute [rw] next_token
    #   The next token to be used for subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeDetectorResult AWS API Documentation
    #
    class DescribeDetectorResult < Struct.new(
      :detector_id,
      :detector_version_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeModelVersionsRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "identifier",
    #         model_version_number: "nonEmptyString",
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # accepts ONLINE_FRAUD_INSIGHTS
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of results to return.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeModelVersionsRequest AWS API Documentation
    #
    class DescribeModelVersionsRequest < Struct.new(
      :model_id,
      :model_version_number,
      :model_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_version_details
    #   The model version details.
    #   @return [Array<Types::ModelVersionDetail>]
    #
    # @!attribute [rw] next_token
    #   The next token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeModelVersionsResult AWS API Documentation
    #
    class DescribeModelVersionsResult < Struct.new(
      :model_version_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # The detector.
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detector description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the detector was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the detector was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Detector AWS API Documentation
    #
    class Detector < Struct.new(
      :detector_id,
      :description,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The summary of the detector version.
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The detector version status.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detector version description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the detector version was last updated.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DetectorVersionSummary AWS API Documentation
    #
    class DetectorVersionSummary < Struct.new(
      :detector_version_id,
      :status,
      :description,
      :last_updated_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The Amazon SageMaker model.
    #
    # @!attribute [rw] model_endpoint
    #   The Amazon SageMaker model endpoints.
    #   @return [String]
    #
    # @!attribute [rw] model_source
    #   The source of the model.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The role used to invoke the model.
    #   @return [Types::Role]
    #
    # @!attribute [rw] input_configuration
    #   The input configuration.
    #   @return [Types::ModelInputConfiguration]
    #
    # @!attribute [rw] output_configuration
    #   The output configuration.
    #   @return [Types::ModelOutputConfiguration]
    #
    # @!attribute [rw] model_endpoint_status
    #   The Amazon Fraud Detector status for the external model endpoint
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the model was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the model was last created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalModel AWS API Documentation
    #
    class ExternalModel < Struct.new(
      :model_endpoint,
      :model_source,
      :role,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDetectorVersionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "nonEmptyString", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorVersionRequest AWS API Documentation
    #
    class GetDetectorVersionRequest < Struct.new(
      :detector_id,
      :detector_version_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The detector version description.
    #   @return [String]
    #
    # @!attribute [rw] external_model_endpoints
    #   The Amazon SageMaker model endpoints included in the detector
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] model_versions
    #   The model versions included in the detector version.
    #   @return [Array<Types::ModelVersion>]
    #
    # @!attribute [rw] rules
    #   The rules included in the detector version.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] status
    #   The status of the detector version.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the detector version was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the detector version was created.
    #   @return [String]
    #
    # @!attribute [rw] rule_execution_mode
    #   The execution mode of the rule in the dectector
    #
    #   `FIRST_MATCHED` indicates that Amazon Fraud Detector evaluates rules
    #   sequentially, first to last, stopping at the first matched rule.
    #   Amazon Fraud dectector then provides the outcomes for that single
    #   rule.
    #
    #   `ALL_MATCHED` indicates that Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules. You can define
    #   and edit the rule mode at the detector version level, when it is in
    #   draft status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorVersionResult AWS API Documentation
    #
    class GetDetectorVersionResult < Struct.new(
      :detector_id,
      :detector_version_id,
      :description,
      :external_model_endpoints,
      :model_versions,
      :rules,
      :status,
      :last_updated_time,
      :created_time,
      :rule_execution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDetectorsRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorsRequest AWS API Documentation
    #
    class GetDetectorsRequest < Struct.new(
      :detector_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] detectors
    #   The detectors.
    #   @return [Array<Types::Detector>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetDetectorsResult AWS API Documentation
    #
    class GetDetectorsResult < Struct.new(
      :detectors,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetExternalModelsRequest
    #   data as a hash:
    #
    #       {
    #         model_endpoint: "string",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] model_endpoint
    #   The Amazon SageMaker model endpoint.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetExternalModelsRequest AWS API Documentation
    #
    class GetExternalModelsRequest < Struct.new(
      :model_endpoint,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] external_models
    #   Gets the Amazon SageMaker models.
    #   @return [Array<Types::ExternalModel>]
    #
    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetExternalModelsResult AWS API Documentation
    #
    class GetExternalModelsResult < Struct.new(
      :external_models,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelVersionRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #       }
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersionRequest AWS API Documentation
    #
    class GetModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :model_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model version description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The model version status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersionResult AWS API Documentation
    #
    class GetModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :description,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelsRequest
    #   data as a hash:
    #
    #       {
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # accepts ONLINE_FRAUD_INSIGHTS
    #         model_id: "identifier",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum results to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelsRequest AWS API Documentation
    #
    class GetModelsRequest < Struct.new(
      :model_type,
      :model_id,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next token for subsequent requests.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   The returned models.
    #   @return [Array<Types::Model>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelsResult AWS API Documentation
    #
    class GetModelsResult < Struct.new(
      :next_token,
      :models)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetOutcomesRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the outcome or outcomes to get.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token for the request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetOutcomesRequest AWS API Documentation
    #
    class GetOutcomesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] outcomes
    #   The outcomes.
    #   @return [Array<Types::Outcome>]
    #
    # @!attribute [rw] next_token
    #   The next page token for subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetOutcomesResult AWS API Documentation
    #
    class GetOutcomesResult < Struct.new(
      :outcomes,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetPredictionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "string", # required
    #         detector_version_id: "string",
    #         event_id: "string", # required
    #         event_attributes: {
    #           "attributeKey" => "attributeValue",
    #         },
    #         external_model_endpoint_data_blobs: {
    #           "string" => {
    #             byte_buffer: "data",
    #             content_type: "contentType",
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] event_id
    #   The unique ID used to identify the event.
    #   @return [String]
    #
    # @!attribute [rw] event_attributes
    #   Names of variables you defined in Amazon Fraud Detector to represent
    #   event data elements and their corresponding values for the event you
    #   are sending for evaluation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] external_model_endpoint_data_blobs
    #   The Amazon SageMaker model endpoint input data blobs.
    #   @return [Hash<String,Types::ModelEndpointDataBlob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetPredictionRequest AWS API Documentation
    #
    class GetPredictionRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :event_id,
      :event_attributes,
      :external_model_endpoint_data_blobs)
      SENSITIVE = [:external_model_endpoint_data_blobs]
      include Aws::Structure
    end

    # @!attribute [rw] outcomes
    #   The prediction outcomes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] model_scores
    #   The model scores for models used in the detector version.
    #   @return [Array<Types::ModelScores>]
    #
    # @!attribute [rw] rule_results
    #   The rule results in the prediction.
    #   @return [Array<Types::RuleResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetPredictionResult AWS API Documentation
    #
    class GetPredictionResult < Struct.new(
      :outcomes,
      :model_scores,
      :rule_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetRulesRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "identifier",
    #         detector_id: "identifier", # required
    #         rule_version: "nonEmptyString",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of rules to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetRulesRequest AWS API Documentation
    #
    class GetRulesRequest < Struct.new(
      :rule_id,
      :detector_id,
      :rule_version,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule_details
    #   The details of the requested rule.
    #   @return [Array<Types::RuleDetail>]
    #
    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetRulesResult AWS API Documentation
    #
    class GetRulesResult < Struct.new(
      :rule_details,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetVariablesRequest
    #   data as a hash:
    #
    #       {
    #         name: "string",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next page token of the get variable request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The max size per page determined for the get variable request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetVariablesRequest AWS API Documentation
    #
    class GetVariablesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] variables
    #   The names of the variables returned.
    #   @return [Array<Types::Variable>]
    #
    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetVariablesResult AWS API Documentation
    #
    class GetVariablesResult < Struct.new(
      :variables,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception indicating an internal server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label schema.
    #
    # @note When making an API call, you may pass LabelSchema
    #   data as a hash:
    #
    #       {
    #         label_key: "string", # required
    #         label_mapper: { # required
    #           "string" => ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] label_key
    #   The label key.
    #   @return [String]
    #
    # @!attribute [rw] label_mapper
    #   The label mapper maps the Amazon Fraud Detector supported label to
    #   the appropriate source labels. For example, if `"FRAUD"` and
    #   `"LEGIT"` are Amazon Fraud Detector supported labels, this mapper
    #   could be: `\{"FRAUD" => ["0"]`, "LEGIT" =&gt; \["1"\]\\} or
    #   `\{"FRAUD" => ["false"], "LEGIT" => ["true"]\}` or `\{"FRAUD" =>
    #   ["fraud", "abuse"], "LEGIT" => ["legit", "safe"]\}`. The value part
    #   of the mapper is a list, because you may have multiple variants for
    #   a single Amazon Fraud Detector label.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/LabelSchema AWS API Documentation
    #
    class LabelSchema < Struct.new(
      :label_key,
      :label_mapper)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model.
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model description.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The model training data source in Amazon S3.
    #   @return [Types::TrainingDataSource]
    #
    # @!attribute [rw] model_variables
    #   The model input variables.
    #   @return [Array<Types::ModelVariable>]
    #
    # @!attribute [rw] label_schema
    #   The model label schema.
    #   @return [Types::LabelSchema]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of last time the model was updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the model was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Model AWS API Documentation
    #
    class Model < Struct.new(
      :model_id,
      :model_type,
      :description,
      :training_data_source,
      :model_variables,
      :label_schema,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # A pre-formed Amazon SageMaker model input you can include if your
    # detector version includes an imported Amazon SageMaker model endpoint
    # with pass-through input configuration.
    #
    # @note When making an API call, you may pass ModelEndpointDataBlob
    #   data as a hash:
    #
    #       {
    #         byte_buffer: "data",
    #         content_type: "contentType",
    #       }
    #
    # @!attribute [rw] byte_buffer
    #   The byte buffer of the Amazon SageMaker model endpoint input data
    #   blob.
    #   @return [String]
    #
    # @!attribute [rw] content_type
    #   The content type of the Amazon SageMaker model endpoint input data
    #   blob.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelEndpointDataBlob AWS API Documentation
    #
    class ModelEndpointDataBlob < Struct.new(
      :byte_buffer,
      :content_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model input configuration.
    #
    # @note When making an API call, you may pass ModelInputConfiguration
    #   data as a hash:
    #
    #       {
    #         format: "TEXT_CSV", # accepts TEXT_CSV, APPLICATION_JSON
    #         is_opaque: false, # required
    #         json_input_template: "string",
    #         csv_input_template: "string",
    #       }
    #
    # @!attribute [rw] format
    #   The format of the model input configuration. The format differs
    #   depending on if it is passed through to SageMaker or constructed by
    #   Amazon Fraud Detector.
    #   @return [String]
    #
    # @!attribute [rw] is_opaque
    #   For an opaque-model, the input to the model will be a ByteBuffer
    #   blob provided in the getPrediction request, and will be passed to
    #   SageMaker as-is. For non-opaque models, the input will be
    #   constructed by Amazon Fraud Detector based on the
    #   model-configuration.
    #   @return [Boolean]
    #
    # @!attribute [rw] json_input_template
    #   Template for constructing the JSON input-data sent to SageMaker. At
    #   event-evaluation, the placeholders for variable names in the
    #   template will be replaced with the variable values before being sent
    #   to SageMaker.
    #   @return [String]
    #
    # @!attribute [rw] csv_input_template
    #   Template for constructing the CSV input-data sent to SageMaker. At
    #   event-evaluation, the placeholders for variable-names in the
    #   template will be replaced with the variable values before being sent
    #   to SageMaker.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelInputConfiguration AWS API Documentation
    #
    class ModelInputConfiguration < Struct.new(
      :format,
      :is_opaque,
      :json_input_template,
      :csv_input_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the model output configuration.
    #
    # @note When making an API call, you may pass ModelOutputConfiguration
    #   data as a hash:
    #
    #       {
    #         format: "TEXT_CSV", # required, accepts TEXT_CSV, APPLICATION_JSONLINES
    #         json_key_to_variable_map: {
    #           "string" => "string",
    #         },
    #         csv_index_to_variable_map: {
    #           "string" => "string",
    #         },
    #       }
    #
    # @!attribute [rw] format
    #   The format of the model output configuration.
    #   @return [String]
    #
    # @!attribute [rw] json_key_to_variable_map
    #   A map of JSON keys in response from SageMaker to the Amazon Fraud
    #   Detector variables.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] csv_index_to_variable_map
    #   A map of CSV index values in the SageMaker response to the Amazon
    #   Fraud Detector variables.
    #   @return [Hash<String,String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelOutputConfiguration AWS API Documentation
    #
    class ModelOutputConfiguration < Struct.new(
      :format,
      :json_key_to_variable_map,
      :csv_index_to_variable_map)
      SENSITIVE = []
      include Aws::Structure
    end

    # The fraud prediction scores.
    #
    # @!attribute [rw] model_version
    #   The model version.
    #   @return [Types::ModelVersion]
    #
    # @!attribute [rw] scores
    #   The model's fraud prediction scores.
    #   @return [Hash<String,Float>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelScores AWS API Documentation
    #
    class ModelScores < Struct.new(
      :model_version,
      :scores)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model variable.&gt;
    #
    # @note When making an API call, you may pass ModelVariable
    #   data as a hash:
    #
    #       {
    #         name: "string", # required
    #         index: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The model variable's name.&gt;
    #   @return [String]
    #
    # @!attribute [rw] index
    #   The model variable's index.&gt;
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVariable AWS API Documentation
    #
    class ModelVariable < Struct.new(
      :name,
      :index)
      SENSITIVE = []
      include Aws::Structure
    end

    # The model version.
    #
    # @note When making an API call, you may pass ModelVersion
    #   data as a hash:
    #
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #       }
    #
    # @!attribute [rw] model_id
    #   The parent model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersion AWS API Documentation
    #
    class ModelVersion < Struct.new(
      :model_id,
      :model_type,
      :model_version_number)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the model version details.
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The model status.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The model training data source.
    #   @return [Types::TrainingDataSource]
    #
    # @!attribute [rw] model_variables
    #   The model variables.
    #   @return [Array<Types::ModelVariable>]
    #
    # @!attribute [rw] label_schema
    #   The model label schema.
    #   @return [Types::LabelSchema]
    #
    # @!attribute [rw] validation_metrics
    #   The model validation metrics.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] training_metrics
    #   The model training metrics.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the model was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the model was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersionDetail AWS API Documentation
    #
    class ModelVersionDetail < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :description,
      :status,
      :training_data_source,
      :model_variables,
      :label_schema,
      :validation_metrics,
      :training_metrics,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The outcome.
    #
    # @!attribute [rw] name
    #   The outcome name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The outcome description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the outcome was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the outcome was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Outcome AWS API Documentation
    #
    class Outcome < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         description: "description",
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetectorRequest AWS API Documentation
    #
    class PutDetectorRequest < Struct.new(
      :detector_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetectorResult AWS API Documentation
    #
    class PutDetectorResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutExternalModelRequest
    #   data as a hash:
    #
    #       {
    #         model_endpoint: "string", # required
    #         model_source: "SAGEMAKER", # required, accepts SAGEMAKER
    #         role: { # required
    #           arn: "string", # required
    #           name: "string", # required
    #         },
    #         input_configuration: { # required
    #           format: "TEXT_CSV", # accepts TEXT_CSV, APPLICATION_JSON
    #           is_opaque: false, # required
    #           json_input_template: "string",
    #           csv_input_template: "string",
    #         },
    #         output_configuration: { # required
    #           format: "TEXT_CSV", # required, accepts TEXT_CSV, APPLICATION_JSONLINES
    #           json_key_to_variable_map: {
    #             "string" => "string",
    #           },
    #           csv_index_to_variable_map: {
    #             "string" => "string",
    #           },
    #         },
    #         model_endpoint_status: "ASSOCIATED", # required, accepts ASSOCIATED, DISSOCIATED
    #       }
    #
    # @!attribute [rw] model_endpoint
    #   The model endpoints name.
    #   @return [String]
    #
    # @!attribute [rw] model_source
    #   The source of the model.
    #   @return [String]
    #
    # @!attribute [rw] role
    #   The IAM role used to invoke the model endpoint.
    #   @return [Types::Role]
    #
    # @!attribute [rw] input_configuration
    #   The model endpoint input configuration.
    #   @return [Types::ModelInputConfiguration]
    #
    # @!attribute [rw] output_configuration
    #   The model endpoint output configuration.
    #   @return [Types::ModelOutputConfiguration]
    #
    # @!attribute [rw] model_endpoint_status
    #   The model endpoint’s status in Amazon Fraud Detector.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModelRequest AWS API Documentation
    #
    class PutExternalModelRequest < Struct.new(
      :model_endpoint,
      :model_source,
      :role,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModelResult AWS API Documentation
    #
    class PutExternalModelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutModelRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         description: "description",
    #         training_data_source: { # required
    #           data_location: "s3BucketLocation", # required
    #           data_access_role_arn: "iamRoleArn", # required
    #         },
    #         model_variables: [ # required
    #           {
    #             name: "string", # required
    #             index: 1,
    #           },
    #         ],
    #         label_schema: { # required
    #           label_key: "string", # required
    #           label_mapper: { # required
    #             "string" => ["string"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model description.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The training data source location in Amazon S3.
    #   @return [Types::TrainingDataSource]
    #
    # @!attribute [rw] model_variables
    #   The model input variables.
    #   @return [Array<Types::ModelVariable>]
    #
    # @!attribute [rw] label_schema
    #   The label schema.
    #   @return [Types::LabelSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutModelRequest AWS API Documentation
    #
    class PutModelRequest < Struct.new(
      :model_id,
      :model_type,
      :description,
      :training_data_source,
      :model_variables,
      :label_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutModelResult AWS API Documentation
    #
    class PutModelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutOutcomeRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier", # required
    #         description: "description",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the outcome.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The outcome description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutOutcomeRequest AWS API Documentation
    #
    class PutOutcomeRequest < Struct.new(
      :name,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutOutcomeResult AWS API Documentation
    #
    class PutOutcomeResult < Aws::EmptyStructure; end

    # An exception indicating the specified resource was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The role used to invoke external model endpoints.
    #
    # @note When making an API call, you may pass Role
    #   data as a hash:
    #
    #       {
    #         arn: "string", # required
    #         name: "string", # required
    #       }
    #
    # @!attribute [rw] arn
    #   The role ARN.
    #   @return [String]
    #
    # @!attribute [rw] name
    #   The role name.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Role AWS API Documentation
    #
    class Role < Struct.new(
      :arn,
      :name)
      SENSITIVE = []
      include Aws::Structure
    end

    # A rule.
    #
    # @note When making an API call, you may pass Rule
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "nonEmptyString", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector for which the rule is associated.
    #   @return [String]
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Rule AWS API Documentation
    #
    class Rule < Struct.new(
      :detector_id,
      :rule_id,
      :rule_version)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the rule.
    #
    # @!attribute [rw] rule_id
    #   The rule ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @!attribute [rw] detector_id
    #   The detector for which the rule is associated.
    #   @return [String]
    #
    # @!attribute [rw] rule_version
    #   The rule version.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The rule language.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The rule outcomes.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of the last time the rule was updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp of when the rule was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/RuleDetail AWS API Documentation
    #
    class RuleDetail < Struct.new(
      :rule_id,
      :description,
      :detector_id,
      :rule_version,
      :expression,
      :language,
      :outcomes,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The rule results.
    #
    # @!attribute [rw] rule_id
    #   The rule ID that was matched, based on the rule execution mode.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcomes of the matched rule, based on the rule execution mode.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/RuleResult AWS API Documentation
    #
    class RuleResult < Struct.new(
      :rule_id,
      :outcomes)
      SENSITIVE = []
      include Aws::Structure
    end

    # An exception indicating a throttling error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training data source.
    #
    # @note When making an API call, you may pass TrainingDataSource
    #   data as a hash:
    #
    #       {
    #         data_location: "s3BucketLocation", # required
    #         data_access_role_arn: "iamRoleArn", # required
    #       }
    #
    # @!attribute [rw] data_location
    #   The data location of the training data source.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The data access role ARN for the training data source.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingDataSource AWS API Documentation
    #
    class TrainingDataSource < Struct.new(
      :data_location,
      :data_access_role_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateDetectorVersionMetadataRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "nonEmptyString", # required
    #         description: "description", # required
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionMetadataRequest AWS API Documentation
    #
    class UpdateDetectorVersionMetadataRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionMetadataResult AWS API Documentation
    #
    class UpdateDetectorVersionMetadataResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDetectorVersionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "nonEmptyString", # required
    #         external_model_endpoints: ["string"], # required
    #         rules: [ # required
    #           {
    #             detector_id: "identifier", # required
    #             rule_id: "identifier", # required
    #             rule_version: "nonEmptyString", # required
    #           },
    #         ],
    #         description: "description",
    #         model_versions: [
    #           {
    #             model_id: "identifier", # required
    #             model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #             model_version_number: "nonEmptyString", # required
    #           },
    #         ],
    #         rule_execution_mode: "ALL_MATCHED", # accepts ALL_MATCHED, FIRST_MATCHED
    #       }
    #
    # @!attribute [rw] detector_id
    #   The parent detector ID for the detector version you want to update.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] external_model_endpoints
    #   The Amazon SageMaker model endpoints to include in the detector
    #   version.
    #   @return [Array<String>]
    #
    # @!attribute [rw] rules
    #   The rules to include in the detector version.
    #   @return [Array<Types::Rule>]
    #
    # @!attribute [rw] description
    #   The detector version description.
    #   @return [String]
    #
    # @!attribute [rw] model_versions
    #   The model versions to include in the detector version.
    #   @return [Array<Types::ModelVersion>]
    #
    # @!attribute [rw] rule_execution_mode
    #   The rule execution mode to add to the detector.
    #
    #   If you specify `FIRST_MATCHED`, Amazon Fraud Detector evaluates
    #   rules sequentially, first to last, stopping at the first matched
    #   rule. Amazon Fraud dectector then provides the outcomes for that
    #   single rule.
    #
    #   If you specifiy `ALL_MATCHED`, Amazon Fraud Detector evaluates all
    #   rules and returns the outcomes for all matched rules. You can define
    #   and edit the rule mode at the detector version level, when it is in
    #   draft status.
    #
    #   The default behavior is `FIRST_MATCHED`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionRequest AWS API Documentation
    #
    class UpdateDetectorVersionRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :external_model_endpoints,
      :rules,
      :description,
      :model_versions,
      :rule_execution_mode)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionResult AWS API Documentation
    #
    class UpdateDetectorVersionResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDetectorVersionStatusRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "nonEmptyString", # required
    #         status: "DRAFT", # required, accepts DRAFT, ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] detector_id
    #   The detector ID.
    #   @return [String]
    #
    # @!attribute [rw] detector_version_id
    #   The detector version ID.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionStatusRequest AWS API Documentation
    #
    class UpdateDetectorVersionStatusRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateDetectorVersionStatusResult AWS API Documentation
    #
    class UpdateDetectorVersionStatusResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateModelVersionRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "identifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #         description: "description", # required
    #         status: "TRAINING_IN_PROGRESS", # required, accepts TRAINING_IN_PROGRESS, TRAINING_COMPLETE, ACTIVATE_REQUESTED, ACTIVATE_IN_PROGRESS, ACTIVE, INACTIVATE_IN_PROGRESS, INACTIVE, ERROR
    #       }
    #
    # @!attribute [rw] model_id
    #   The model ID.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The model description.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The new model status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionRequest AWS API Documentation
    #
    class UpdateModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :description,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionResult AWS API Documentation
    #
    class UpdateModelVersionResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRuleMetadataRequest
    #   data as a hash:
    #
    #       {
    #         rule: { # required
    #           detector_id: "identifier", # required
    #           rule_id: "identifier", # required
    #           rule_version: "nonEmptyString", # required
    #         },
    #         description: "description", # required
    #       }
    #
    # @!attribute [rw] rule
    #   The rule to update.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] description
    #   The rule description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleMetadataRequest AWS API Documentation
    #
    class UpdateRuleMetadataRequest < Struct.new(
      :rule,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleMetadataResult AWS API Documentation
    #
    class UpdateRuleMetadataResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRuleVersionRequest
    #   data as a hash:
    #
    #       {
    #         rule: { # required
    #           detector_id: "identifier", # required
    #           rule_id: "identifier", # required
    #           rule_version: "nonEmptyString", # required
    #         },
    #         description: "description",
    #         expression: "ruleExpression", # required
    #         language: "DETECTORPL", # required, accepts DETECTORPL
    #         outcomes: ["string"], # required
    #       }
    #
    # @!attribute [rw] rule
    #   The rule to update.
    #   @return [Types::Rule]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] expression
    #   The rule expression.
    #   @return [String]
    #
    # @!attribute [rw] language
    #   The language.
    #   @return [String]
    #
    # @!attribute [rw] outcomes
    #   The outcomes.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleVersionRequest AWS API Documentation
    #
    class UpdateRuleVersionRequest < Struct.new(
      :rule,
      :description,
      :expression,
      :language,
      :outcomes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] rule
    #   The new rule version that was created.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleVersionResult AWS API Documentation
    #
    class UpdateRuleVersionResult < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateVariableRequest
    #   data as a hash:
    #
    #       {
    #         name: "string", # required
    #         default_value: "string",
    #         description: "string",
    #         variable_type: "string",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The new default value of the variable.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The new description.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateVariableRequest AWS API Documentation
    #
    class UpdateVariableRequest < Struct.new(
      :name,
      :default_value,
      :description,
      :variable_type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateVariableResult AWS API Documentation
    #
    class UpdateVariableResult < Aws::EmptyStructure; end

    # An exception indicating a specified value is not allowed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The variable.
    #
    # @!attribute [rw] name
    #   The name of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the variable.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source of the variable.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the variable.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the variable.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The variable type of the variable.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   The time when variable was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The time when the variable was created.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Variable AWS API Documentation
    #
    class Variable < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :last_updated_time,
      :created_time)
      SENSITIVE = []
      include Aws::Structure
    end

    # The variable entry in a list.
    #
    # @note When making an API call, you may pass VariableEntry
    #   data as a hash:
    #
    #       {
    #         name: "string",
    #         data_type: "string",
    #         data_source: "string",
    #         default_value: "string",
    #         description: "string",
    #         variable_type: "string",
    #       }
    #
    # @!attribute [rw] name
    #   The name of the variable entry.
    #   @return [String]
    #
    # @!attribute [rw] data_type
    #   The data type of the variable entry.
    #   @return [String]
    #
    # @!attribute [rw] data_source
    #   The data source of the variable entry.
    #   @return [String]
    #
    # @!attribute [rw] default_value
    #   The default value of the variable entry.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the variable entry.
    #   @return [String]
    #
    # @!attribute [rw] variable_type
    #   The type of the variable entry.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/VariableEntry AWS API Documentation
    #
    class VariableEntry < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
