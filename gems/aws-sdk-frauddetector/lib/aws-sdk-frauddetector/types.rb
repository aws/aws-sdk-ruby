# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::FraudDetector
  module Types

    # An exception indicating Amazon Fraud Detector does not have the needed
    # permissions. This can occur if you submit a request, such as
    # `PutExternalModel`, that specifies a role that is not in your account.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] variable_entries
    #   The list of variables for the batch create variable request.
    #   @return [Array<Types::VariableEntry>]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/BatchCreateVariableRequest AWS API Documentation
    #
    class BatchCreateVariableRequest < Struct.new(
      :variable_entries,
      :tags)
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
    # * DeleteRule: A conflict exception will occur if the `RuleVersion` is
    #   in use by an associated `ACTIVE` or `INACTIVE DetectorVersion`.
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
    #             rule_version: "wholeNumberVersionString", # required
    #           },
    #         ],
    #         model_versions: [
    #           {
    #             model_id: "modelIdentifier", # required
    #             model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #             model_version_number: "nonEmptyString", # required
    #             arn: "fraudDetectorArn",
    #           },
    #         ],
    #         rule_execution_mode: "ALL_MATCHED", # accepts ALL_MATCHED, FIRST_MATCHED
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateDetectorVersionRequest AWS API Documentation
    #
    class CreateDetectorVersionRequest < Struct.new(
      :detector_id,
      :description,
      :external_model_endpoints,
      :rules,
      :model_versions,
      :rule_execution_mode,
      :tags)
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

    # @note When making an API call, you may pass CreateModelRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         description: "description",
    #         event_type_name: "string", # required
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelRequest AWS API Documentation
    #
    class CreateModelRequest < Struct.new(
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelResult AWS API Documentation
    #
    class CreateModelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass CreateModelVersionRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         training_data_source: "EXTERNAL_EVENTS", # required, accepts EXTERNAL_EVENTS
    #         training_data_schema: { # required
    #           model_variables: ["string"], # required
    #           label_schema: { # required
    #             label_mapper: { # required
    #               "string" => ["string"],
    #             },
    #           },
    #         },
    #         external_events_detail: {
    #           data_location: "s3BucketLocation", # required
    #           data_access_role_arn: "iamRoleArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] training_data_source
    #   The training data source location in Amazon S3.
    #   @return [String]
    #
    # @!attribute [rw] training_data_schema
    #   The training data schema.
    #   @return [Types::TrainingDataSchema]
    #
    # @!attribute [rw] external_events_detail
    #   Details for the external events data used for model version
    #   training. Required if `trainingDataSource` is `EXTERNAL_EVENTS`.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateModelVersionRequest AWS API Documentation
    #
    class CreateModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :tags)
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
    #   The model version number of the model version created.
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
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateRuleRequest AWS API Documentation
    #
    class CreateRuleRequest < Struct.new(
      :rule_id,
      :detector_id,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags)
      SENSITIVE = [:expression]
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
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    #   The variable type. For more information see [Variable types][1].
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL
    #   | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY |
    #   SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP |
    #   USERAGENT`
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariableRequest AWS API Documentation
    #
    class CreateVariableRequest < Struct.new(
      :name,
      :data_type,
      :data_source,
      :default_value,
      :description,
      :variable_type,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/CreateVariableResult AWS API Documentation
    #
    class CreateVariableResult < Aws::EmptyStructure; end

    # The model training validation messages.
    #
    # @!attribute [rw] file_level_messages
    #   The file-specific model training validation messages.
    #   @return [Array<Types::FileValidationMessage>]
    #
    # @!attribute [rw] field_level_messages
    #   The field-specific model training validation messages.
    #   @return [Array<Types::FieldValidationMessage>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DataValidationMetrics AWS API Documentation
    #
    class DataValidationMetrics < Struct.new(
      :file_level_messages,
      :field_level_messages)
      SENSITIVE = []
      include Aws::Structure
    end

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
    #         detector_version_id: "wholeNumberVersionString", # required
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
    #         event_type_name: "string", # required
    #       }
    #
    # @!attribute [rw] event_id
    #   The ID of the event to delete.
    #   @return [String]
    #
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventRequest AWS API Documentation
    #
    class DeleteEventRequest < Struct.new(
      :event_id,
      :event_type_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteEventResult AWS API Documentation
    #
    class DeleteEventResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DeleteRuleRequest
    #   data as a hash:
    #
    #       {
    #         rule: { # required
    #           detector_id: "identifier", # required
    #           rule_id: "identifier", # required
    #           rule_version: "wholeNumberVersionString", # required
    #         },
    #       }
    #
    # @!attribute [rw] rule
    #   A rule.
    #   @return [Types::Rule]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRuleRequest AWS API Documentation
    #
    class DeleteRuleRequest < Struct.new(
      :rule)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DeleteRuleResult AWS API Documentation
    #
    class DeleteRuleResult < Aws::EmptyStructure; end

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
    # @!attribute [rw] arn
    #   The detector ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/DescribeDetectorResult AWS API Documentation
    #
    class DescribeDetectorResult < Struct.new(
      :detector_id,
      :detector_version_summaries,
      :next_token,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DescribeModelVersionsRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier",
    #         model_version_number: "floatVersionString",
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
    #   The model version number.
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
    # @!attribute [rw] event_type_name
    #   The name of the event type.
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
    # @!attribute [rw] arn
    #   The detector ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Detector AWS API Documentation
    #
    class Detector < Struct.new(
      :detector_id,
      :description,
      :event_type_name,
      :last_updated_time,
      :created_time,
      :arn)
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

    # The entity details.
    #
    # @note When making an API call, you may pass Entity
    #   data as a hash:
    #
    #       {
    #         entity_type: "string", # required
    #         entity_id: "identifier", # required
    #       }
    #
    # @!attribute [rw] entity_type
    #   The entity type.
    #   @return [String]
    #
    # @!attribute [rw] entity_id
    #   The entity ID. If you do not know the `entityId`, you can pass
    #   `unknown`, which is areserved string literal.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Entity AWS API Documentation
    #
    class Entity < Struct.new(
      :entity_type,
      :entity_id)
      SENSITIVE = []
      include Aws::Structure
    end

    # The entity type details.
    #
    # @!attribute [rw] name
    #   The entity type name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The entity type description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the entity type was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the entity type was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The entity type ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EntityType AWS API Documentation
    #
    class EntityType < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The event type details.
    #
    # @!attribute [rw] name
    #   The event type name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The event type description.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   The event type event variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] labels
    #   The event type labels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_types
    #   The event type entity types.
    #   @return [Array<String>]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the event type was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the event type was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The entity type ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/EventType AWS API Documentation
    #
    class EventType < Struct.new(
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # Details for the external events data used for model version training.
    #
    # @note When making an API call, you may pass ExternalEventsDetail
    #   data as a hash:
    #
    #       {
    #         data_location: "s3BucketLocation", # required
    #         data_access_role_arn: "iamRoleArn", # required
    #       }
    #
    # @!attribute [rw] data_location
    #   The Amazon S3 bucket location for the data.
    #   @return [String]
    #
    # @!attribute [rw] data_access_role_arn
    #   The ARN of the role that provides Amazon Fraud Detector access to
    #   the data location.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalEventsDetail AWS API Documentation
    #
    class ExternalEventsDetail < Struct.new(
      :data_location,
      :data_access_role_arn)
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
    # @!attribute [rw] invoke_model_endpoint_role_arn
    #   The role used to invoke the model.
    #   @return [String]
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
    # @!attribute [rw] arn
    #   The model ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ExternalModel AWS API Documentation
    #
    class ExternalModel < Struct.new(
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message details.
    #
    # @!attribute [rw] field_name
    #   The field name.
    #   @return [String]
    #
    # @!attribute [rw] identifier
    #   The message ID.
    #   @return [String]
    #
    # @!attribute [rw] title
    #   The message title.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The message type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/FieldValidationMessage AWS API Documentation
    #
    class FieldValidationMessage < Struct.new(
      :field_name,
      :identifier,
      :title,
      :content,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # The message details.
    #
    # @!attribute [rw] title
    #   The message title.
    #   @return [String]
    #
    # @!attribute [rw] content
    #   The message content.
    #   @return [String]
    #
    # @!attribute [rw] type
    #   The message type.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/FileValidationMessage AWS API Documentation
    #
    class FileValidationMessage < Struct.new(
      :title,
      :content,
      :type)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetDetectorVersionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "wholeNumberVersionString", # required
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
    # @!attribute [rw] arn
    #   The detector version ARN.
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
      :rule_execution_mode,
      :arn)
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

    # @note When making an API call, you may pass GetEntityTypesRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEntityTypesRequest AWS API Documentation
    #
    class GetEntityTypesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] entity_types
    #   An array of entity types.
    #   @return [Array<Types::EntityType>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEntityTypesResult AWS API Documentation
    #
    class GetEntityTypesResult < Struct.new(
      :entity_types,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventPredictionRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "string", # required
    #         detector_version_id: "wholeNumberVersionString",
    #         event_id: "string", # required
    #         event_type_name: "string", # required
    #         entities: [ # required
    #           {
    #             entity_type: "string", # required
    #             entity_id: "identifier", # required
    #           },
    #         ],
    #         event_timestamp: "string", # required
    #         event_variables: { # required
    #           "variableName" => "variableValue",
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
    # @!attribute [rw] event_type_name
    #   The event type associated with the detector specified for the
    #   prediction.
    #   @return [String]
    #
    # @!attribute [rw] entities
    #   The entity type (associated with the detector's event type) and
    #   specific entity ID representing who performed the event. If an
    #   entity id is not available, use "UNKNOWN."
    #   @return [Array<Types::Entity>]
    #
    # @!attribute [rw] event_timestamp
    #   Timestamp that defines when the event under evaluation occurred.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   Names of the event type's variables you defined in Amazon Fraud
    #   Detector to represent data elements and their corresponding values
    #   for the event you are sending for evaluation.
    #   @return [Hash<String,String>]
    #
    # @!attribute [rw] external_model_endpoint_data_blobs
    #   The Amazon SageMaker model endpoint input data blobs.
    #   @return [Hash<String,Types::ModelEndpointDataBlob>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPredictionRequest AWS API Documentation
    #
    class GetEventPredictionRequest < Struct.new(
      :detector_id,
      :detector_version_id,
      :event_id,
      :event_type_name,
      :entities,
      :event_timestamp,
      :event_variables,
      :external_model_endpoint_data_blobs)
      SENSITIVE = [:external_model_endpoint_data_blobs]
      include Aws::Structure
    end

    # @!attribute [rw] model_scores
    #   The model scores. Amazon Fraud Detector generates model scores
    #   between 0 and 1000, where 0 is low fraud risk and 1000 is high fraud
    #   risk. Model scores are directly related to the false positive rate
    #   (FPR). For example, a score of 600 corresponds to an estimated 10%
    #   false positive rate whereas a score of 900 corresponds to an
    #   estimated 2% false positive rate.
    #   @return [Array<Types::ModelScores>]
    #
    # @!attribute [rw] rule_results
    #   The results.
    #   @return [Array<Types::RuleResult>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventPredictionResult AWS API Documentation
    #
    class GetEventPredictionResult < Struct.new(
      :model_scores,
      :rule_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetEventTypesRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventTypesRequest AWS API Documentation
    #
    class GetEventTypesRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] event_types
    #   An array of event types.
    #   @return [Array<Types::EventType>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetEventTypesResult AWS API Documentation
    #
    class GetEventTypesResult < Struct.new(
      :event_types,
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

    # @!attribute [rw] kms_key
    #   The KMS encryption key.
    #   @return [Types::KMSKey]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetKMSEncryptionKeyResult AWS API Documentation
    #
    class GetKMSEncryptionKeyResult < Struct.new(
      :kms_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetLabelsRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier",
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] name
    #   The name of the label or labels to get.
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
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetLabelsRequest AWS API Documentation
    #
    class GetLabelsRequest < Struct.new(
      :name,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] labels
    #   An array of labels.
    #   @return [Array<Types::Label>]
    #
    # @!attribute [rw] next_token
    #   The next page token.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetLabelsResult AWS API Documentation
    #
    class GetLabelsResult < Struct.new(
      :labels,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelVersionRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "floatVersionString", # required
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
    #   The model version number.
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
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The training data source.
    #   @return [String]
    #
    # @!attribute [rw] training_data_schema
    #   The training data schema.
    #   @return [Types::TrainingDataSchema]
    #
    # @!attribute [rw] external_events_detail
    #   The event details.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] status
    #   The model version status.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model version ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelVersionResult AWS API Documentation
    #
    class GetModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :status,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass GetModelsRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier",
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # accepts ONLINE_FRAUD_INSIGHTS
    #         next_token: "string",
    #         max_results: 1,
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
    # @!attribute [rw] next_token
    #   The next token for the subsequent request.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/GetModelsRequest AWS API Documentation
    #
    class GetModelsRequest < Struct.new(
      :model_id,
      :model_type,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] next_token
    #   The next page token to be used in subsequent requests.
    #   @return [String]
    #
    # @!attribute [rw] models
    #   The array of models.
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

    # @note When making an API call, you may pass GetRulesRequest
    #   data as a hash:
    #
    #       {
    #         rule_id: "identifier",
    #         detector_id: "identifier", # required
    #         rule_version: "wholeNumberVersionString",
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

    # The KMS key details.
    #
    # @!attribute [rw] kms_encryption_key_arn
    #   The encryption key ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/KMSKey AWS API Documentation
    #
    class KMSKey < Struct.new(
      :kms_encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label details.
    #
    # @!attribute [rw] name
    #   The label name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The label description.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of when the label was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the event type was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The label ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Label AWS API Documentation
    #
    class Label < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The label schema.
    #
    # @note When making an API call, you may pass LabelSchema
    #   data as a hash:
    #
    #       {
    #         label_mapper: { # required
    #           "string" => ["string"],
    #         },
    #       }
    #
    # @!attribute [rw] label_mapper
    #   The label mapper maps the Amazon Fraud Detector supported model
    #   classification labels (`FRAUD`, `LEGIT`) to the appropriate event
    #   type labels. For example, if "`FRAUD`" and "`LEGIT`" are Amazon
    #   Fraud Detector supported labels, this mapper could be: `\{"FRAUD" =>
    #   ["0"]`, `"LEGIT" => ["1"]\}` or `\{"FRAUD" => ["false"]`, `"LEGIT"
    #   => ["true"]\}` or `\{"FRAUD" => ["fraud", "abuse"]`, `"LEGIT" =>
    #   ["legit", "safe"]\}`. The value part of the mapper is a list,
    #   because you may have multiple label variants from your event type
    #   for a single Amazon Fraud Detector label.
    #   @return [Hash<String,Array<String>>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/LabelSchema AWS API Documentation
    #
    class LabelSchema < Struct.new(
      :label_mapper)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListTagsForResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "fraudDetectorArn", # required
    #         next_token: "string",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN that specifies the resource whose tags you want to list.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   The next token from the previous results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The maximum number of objects to return for the request.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListTagsForResourceRequest AWS API Documentation
    #
    class ListTagsForResourceRequest < Struct.new(
      :resource_arn,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @!attribute [rw] next_token
    #   The next token for subsequent requests.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ListTagsForResourceResult AWS API Documentation
    #
    class ListTagsForResourceResult < Struct.new(
      :tags,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # Model performance metrics data points.
    #
    # @!attribute [rw] fpr
    #   The false positive rate. This is the percentage of total legitimate
    #   events that are incorrectly predicted as fraud.
    #   @return [Float]
    #
    # @!attribute [rw] precision
    #   The percentage of fraud events correctly predicted as fraudulent as
    #   compared to all events predicted as fraudulent.
    #   @return [Float]
    #
    # @!attribute [rw] tpr
    #   The true positive rate. This is the percentage of total fraud the
    #   model detects. Also known as capture rate.
    #   @return [Float]
    #
    # @!attribute [rw] threshold
    #   The model threshold that specifies an acceptable fraud capture rate.
    #   For example, a threshold of 500 means any model score 500 or above
    #   is labeled as fraud.
    #   @return [Float]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/MetricDataPoint AWS API Documentation
    #
    class MetricDataPoint < Struct.new(
      :fpr,
      :precision,
      :tpr,
      :threshold)
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
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   Timestamp of when the model was created.
    #   @return [String]
    #
    # @!attribute [rw] last_updated_time
    #   Timestamp of last time the model was updated.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The ARN of the model.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Model AWS API Documentation
    #
    class Model < Struct.new(
      :model_id,
      :model_type,
      :description,
      :event_type_name,
      :created_time,
      :last_updated_time,
      :arn)
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

    # The Amazon SageMaker model input configuration.
    #
    # @note When making an API call, you may pass ModelInputConfiguration
    #   data as a hash:
    #
    #       {
    #         event_type_name: "identifier",
    #         format: "TEXT_CSV", # accepts TEXT_CSV, APPLICATION_JSON
    #         use_event_variables: false, # required
    #         json_input_template: "string",
    #         csv_input_template: "string",
    #       }
    #
    # @!attribute [rw] event_type_name
    #   The event type name.
    #   @return [String]
    #
    # @!attribute [rw] format
    #   The format of the model input configuration. The format differs
    #   depending on if it is passed through to SageMaker or constructed by
    #   Amazon Fraud Detector.
    #   @return [String]
    #
    # @!attribute [rw] use_event_variables
    #   The event variables.
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
      :event_type_name,
      :format,
      :use_event_variables,
      :json_input_template,
      :csv_input_template)
      SENSITIVE = []
      include Aws::Structure
    end

    # Provides the Amazon Sagemaker model output configuration.
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

    # The model version.
    #
    # @note When making an API call, you may pass ModelVersion
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "nonEmptyString", # required
    #         arn: "fraudDetectorArn",
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
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model version ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersion AWS API Documentation
    #
    class ModelVersion < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # The details of the model version.
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
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the model version.
    #   @return [String]
    #
    # @!attribute [rw] training_data_source
    #   The model version training data source.
    #   @return [String]
    #
    # @!attribute [rw] training_data_schema
    #   The training data schema.
    #   @return [Types::TrainingDataSchema]
    #
    # @!attribute [rw] external_events_detail
    #   The event details.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] training_result
    #   The training results.
    #   @return [Types::TrainingResult]
    #
    # @!attribute [rw] last_updated_time
    #   The timestamp when the model was last updated.
    #   @return [String]
    #
    # @!attribute [rw] created_time
    #   The timestamp when the model was created.
    #   @return [String]
    #
    # @!attribute [rw] arn
    #   The model version ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/ModelVersionDetail AWS API Documentation
    #
    class ModelVersionDetail < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status,
      :training_data_source,
      :training_data_schema,
      :external_events_detail,
      :training_result,
      :last_updated_time,
      :created_time,
      :arn)
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
    # @!attribute [rw] arn
    #   The outcome ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Outcome AWS API Documentation
    #
    class Outcome < Struct.new(
      :name,
      :description,
      :last_updated_time,
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass PutDetectorRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         description: "description",
    #         event_type_name: "identifier", # required
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] event_type_name
    #   The name of the event type.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetectorRequest AWS API Documentation
    #
    class PutDetectorRequest < Struct.new(
      :detector_id,
      :description,
      :event_type_name,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutDetectorResult AWS API Documentation
    #
    class PutDetectorResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutEntityTypeRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier", # required
    #         description: "description",
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name of the entity type.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEntityTypeRequest AWS API Documentation
    #
    class PutEntityTypeRequest < Struct.new(
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEntityTypeResult AWS API Documentation
    #
    class PutEntityTypeResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutEventTypeRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier", # required
    #         description: "description",
    #         event_variables: ["string"], # required
    #         labels: ["string"],
    #         entity_types: ["string"], # required
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The description of the event type.
    #   @return [String]
    #
    # @!attribute [rw] event_variables
    #   The event type variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] labels
    #   The event type labels.
    #   @return [Array<String>]
    #
    # @!attribute [rw] entity_types
    #   The entity type for the event type. Example entity types: customer,
    #   merchant, account.
    #   @return [Array<String>]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEventTypeRequest AWS API Documentation
    #
    class PutEventTypeRequest < Struct.new(
      :name,
      :description,
      :event_variables,
      :labels,
      :entity_types,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutEventTypeResult AWS API Documentation
    #
    class PutEventTypeResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutExternalModelRequest
    #   data as a hash:
    #
    #       {
    #         model_endpoint: "sageMakerEndpointIdentifier", # required
    #         model_source: "SAGEMAKER", # required, accepts SAGEMAKER
    #         invoke_model_endpoint_role_arn: "string", # required
    #         input_configuration: { # required
    #           event_type_name: "identifier",
    #           format: "TEXT_CSV", # accepts TEXT_CSV, APPLICATION_JSON
    #           use_event_variables: false, # required
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
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] invoke_model_endpoint_role_arn
    #   The IAM role used to invoke the model endpoint.
    #   @return [String]
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
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModelRequest AWS API Documentation
    #
    class PutExternalModelRequest < Struct.new(
      :model_endpoint,
      :model_source,
      :invoke_model_endpoint_role_arn,
      :input_configuration,
      :output_configuration,
      :model_endpoint_status,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutExternalModelResult AWS API Documentation
    #
    class PutExternalModelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutKMSEncryptionKeyRequest
    #   data as a hash:
    #
    #       {
    #         kms_encryption_key_arn: "KmsEncryptionKeyArn", # required
    #       }
    #
    # @!attribute [rw] kms_encryption_key_arn
    #   The KMS encryption key ARN.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutKMSEncryptionKeyRequest AWS API Documentation
    #
    class PutKMSEncryptionKeyRequest < Struct.new(
      :kms_encryption_key_arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutKMSEncryptionKeyResult AWS API Documentation
    #
    class PutKMSEncryptionKeyResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutLabelRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier", # required
    #         description: "description",
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] name
    #   The label name.
    #   @return [String]
    #
    # @!attribute [rw] description
    #   The label description.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutLabelRequest AWS API Documentation
    #
    class PutLabelRequest < Struct.new(
      :name,
      :description,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutLabelResult AWS API Documentation
    #
    class PutLabelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass PutOutcomeRequest
    #   data as a hash:
    #
    #       {
    #         name: "identifier", # required
    #         description: "description",
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/PutOutcomeRequest AWS API Documentation
    #
    class PutOutcomeRequest < Struct.new(
      :name,
      :description,
      :tags)
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

    # A rule.
    #
    # @note When making an API call, you may pass Rule
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         rule_id: "identifier", # required
    #         rule_version: "wholeNumberVersionString", # required
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
    # @!attribute [rw] arn
    #   The rule ARN.
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
      :created_time,
      :arn)
      SENSITIVE = [:expression]
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

    # A key and value pair.
    #
    # @note When making an API call, you may pass Tag
    #   data as a hash:
    #
    #       {
    #         key: "tagKey", # required
    #         value: "tagValue", # required
    #       }
    #
    # @!attribute [rw] key
    #   A tag key.
    #   @return [String]
    #
    # @!attribute [rw] value
    #   A value assigned to a tag key.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/Tag AWS API Documentation
    #
    class Tag < Struct.new(
      :key,
      :value)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass TagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "fraudDetectorArn", # required
    #         tags: [ # required
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The resource ARN.
    #   @return [String]
    #
    # @!attribute [rw] tags
    #   The tags to assign to the resource.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TagResourceRequest AWS API Documentation
    #
    class TagResourceRequest < Struct.new(
      :resource_arn,
      :tags)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TagResourceResult AWS API Documentation
    #
    class TagResourceResult < Aws::EmptyStructure; end

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

    # The training data schema.
    #
    # @note When making an API call, you may pass TrainingDataSchema
    #   data as a hash:
    #
    #       {
    #         model_variables: ["string"], # required
    #         label_schema: { # required
    #           label_mapper: { # required
    #             "string" => ["string"],
    #           },
    #         },
    #       }
    #
    # @!attribute [rw] model_variables
    #   The training data schema variables.
    #   @return [Array<String>]
    #
    # @!attribute [rw] label_schema
    #   The label schema.
    #   @return [Types::LabelSchema]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingDataSchema AWS API Documentation
    #
    class TrainingDataSchema < Struct.new(
      :model_variables,
      :label_schema)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training metric details.
    #
    # @!attribute [rw] auc
    #   The area under the curve. This summarizes true positive rate (TPR)
    #   and false positive rate (FPR) across all possible model score
    #   thresholds. A model with no predictive power has an AUC of 0.5,
    #   whereas a perfect model has a score of 1.0.
    #   @return [Float]
    #
    # @!attribute [rw] metric_data_points
    #   The data points details.
    #   @return [Array<Types::MetricDataPoint>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingMetrics AWS API Documentation
    #
    class TrainingMetrics < Struct.new(
      :auc,
      :metric_data_points)
      SENSITIVE = []
      include Aws::Structure
    end

    # The training result details.
    #
    # @!attribute [rw] data_validation_metrics
    #   The validation metrics.
    #   @return [Types::DataValidationMetrics]
    #
    # @!attribute [rw] training_metrics
    #   The training metric details.
    #   @return [Types::TrainingMetrics]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/TrainingResult AWS API Documentation
    #
    class TrainingResult < Struct.new(
      :data_validation_metrics,
      :training_metrics)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UntagResourceRequest
    #   data as a hash:
    #
    #       {
    #         resource_arn: "fraudDetectorArn", # required
    #         tag_keys: ["tagKey"], # required
    #       }
    #
    # @!attribute [rw] resource_arn
    #   The ARN of the resource from which to remove the tag.
    #   @return [String]
    #
    # @!attribute [rw] tag_keys
    #   The resource ARN.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UntagResourceRequest AWS API Documentation
    #
    class UntagResourceRequest < Struct.new(
      :resource_arn,
      :tag_keys)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UntagResourceResult AWS API Documentation
    #
    class UntagResourceResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateDetectorVersionMetadataRequest
    #   data as a hash:
    #
    #       {
    #         detector_id: "identifier", # required
    #         detector_version_id: "wholeNumberVersionString", # required
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
    #         detector_version_id: "wholeNumberVersionString", # required
    #         external_model_endpoints: ["string"], # required
    #         rules: [ # required
    #           {
    #             detector_id: "identifier", # required
    #             rule_id: "identifier", # required
    #             rule_version: "wholeNumberVersionString", # required
    #           },
    #         ],
    #         description: "description",
    #         model_versions: [
    #           {
    #             model_id: "modelIdentifier", # required
    #             model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #             model_version_number: "nonEmptyString", # required
    #             arn: "fraudDetectorArn",
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
    #         detector_version_id: "wholeNumberVersionString", # required
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

    # @note When making an API call, you may pass UpdateModelRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
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
    #   The new model description.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelRequest AWS API Documentation
    #
    class UpdateModelRequest < Struct.new(
      :model_id,
      :model_type,
      :description)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelResult AWS API Documentation
    #
    class UpdateModelResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateModelVersionRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         major_version_number: "wholeNumberVersionString", # required
    #         external_events_detail: {
    #           data_location: "s3BucketLocation", # required
    #           data_access_role_arn: "iamRoleArn", # required
    #         },
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] major_version_number
    #   The major version number.
    #   @return [String]
    #
    # @!attribute [rw] external_events_detail
    #   The event details.
    #   @return [Types::ExternalEventsDetail]
    #
    # @!attribute [rw] tags
    #   A collection of key and value pairs.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionRequest AWS API Documentation
    #
    class UpdateModelVersionRequest < Struct.new(
      :model_id,
      :model_type,
      :major_version_number,
      :external_events_detail,
      :tags)
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
    #   The model version number of the model version updated.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The status of the updated model version.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionResult AWS API Documentation
    #
    class UpdateModelVersionResult < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass UpdateModelVersionStatusRequest
    #   data as a hash:
    #
    #       {
    #         model_id: "modelIdentifier", # required
    #         model_type: "ONLINE_FRAUD_INSIGHTS", # required, accepts ONLINE_FRAUD_INSIGHTS
    #         model_version_number: "floatVersionString", # required
    #         status: "ACTIVE", # required, accepts ACTIVE, INACTIVE
    #       }
    #
    # @!attribute [rw] model_id
    #   The model ID of the model version to update.
    #   @return [String]
    #
    # @!attribute [rw] model_type
    #   The model type.
    #   @return [String]
    #
    # @!attribute [rw] model_version_number
    #   The model version number.
    #   @return [String]
    #
    # @!attribute [rw] status
    #   The model version status.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionStatusRequest AWS API Documentation
    #
    class UpdateModelVersionStatusRequest < Struct.new(
      :model_id,
      :model_type,
      :model_version_number,
      :status)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateModelVersionStatusResult AWS API Documentation
    #
    class UpdateModelVersionStatusResult < Aws::EmptyStructure; end

    # @note When making an API call, you may pass UpdateRuleMetadataRequest
    #   data as a hash:
    #
    #       {
    #         rule: { # required
    #           detector_id: "identifier", # required
    #           rule_id: "identifier", # required
    #           rule_version: "wholeNumberVersionString", # required
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
    #           rule_version: "wholeNumberVersionString", # required
    #         },
    #         description: "description",
    #         expression: "ruleExpression", # required
    #         language: "DETECTORPL", # required, accepts DETECTORPL
    #         outcomes: ["string"], # required
    #         tags: [
    #           {
    #             key: "tagKey", # required
    #             value: "tagValue", # required
    #           },
    #         ],
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
    # @!attribute [rw] tags
    #   The tags to assign to the rule version.
    #   @return [Array<Types::Tag>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/frauddetector-2019-11-15/UpdateRuleVersionRequest AWS API Documentation
    #
    class UpdateRuleVersionRequest < Struct.new(
      :rule,
      :description,
      :expression,
      :language,
      :outcomes,
      :tags)
      SENSITIVE = [:expression]
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
    #   The variable type. For more information see [Variable types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
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
    #   The data type of the variable. For more information see [Variable
    #   types][1].
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
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
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL
    #   | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY |
    #   SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP |
    #   USERAGENT `
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
    # @!attribute [rw] arn
    #   The ARN of the variable.
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
      :created_time,
      :arn)
      SENSITIVE = []
      include Aws::Structure
    end

    # A variable in the list of variables for the batch create variable
    # request.
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
    #   The type of the variable. For more information see [Variable
    #   types][1].
    #
    #   Valid Values: `AUTH_CODE | AVS | BILLING_ADDRESS_L1 |
    #   BILLING_ADDRESS_L2 | BILLING_CITY | BILLING_COUNTRY | BILLING_NAME |
    #   BILLING_PHONE | BILLING_STATE | BILLING_ZIP | CARD_BIN | CATEGORICAL
    #   | CURRENCY_CODE | EMAIL_ADDRESS | FINGERPRINT | FRAUD_LABEL |
    #   FREE_FORM_TEXT | IP_ADDRESS | NUMERIC | ORDER_ID | PAYMENT_TYPE |
    #   PHONE_NUMBER | PRICE | PRODUCT_CATEGORY | SHIPPING_ADDRESS_L1 |
    #   SHIPPING_ADDRESS_L2 | SHIPPING_CITY | SHIPPING_COUNTRY |
    #   SHIPPING_NAME | SHIPPING_PHONE | SHIPPING_STATE | SHIPPING_ZIP |
    #   USERAGENT `
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/frauddetector/latest/ug/create-a-variable.html#variable-types
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
