# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AugmentedAIRuntime
  module Types

    # @note When making an API call, you may pass DeleteHumanLoopRequest
    #   data as a hash:
    #
    #       {
    #         human_loop_name: "HumanLoopName", # required
    #       }
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DeleteHumanLoopRequest AWS API Documentation
    #
    class DeleteHumanLoopRequest < Struct.new(
      :human_loop_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DeleteHumanLoopResponse AWS API Documentation
    #
    class DeleteHumanLoopResponse < Aws::EmptyStructure; end

    # @note When making an API call, you may pass DescribeHumanLoopRequest
    #   data as a hash:
    #
    #       {
    #         human_loop_name: "HumanLoopName", # required
    #       }
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DescribeHumanLoopRequest AWS API Documentation
    #
    class DescribeHumanLoopRequest < Struct.new(
      :human_loop_name)
      include Aws::Structure
    end

    # @!attribute [rw] creation_timestamp
    #   The timestamp when Amazon Augmented AI created the human loop.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why a human loop has failed. The failure reason is
    #   returned when the human loop status is `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   A failure code denoting a specific type of failure.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_status
    #   The status of the human loop. Valid values:
    #   @return [String]
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_arn
    #   The Amazon Resource Name (ARN) of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_input
    #   An object containing information about the human loop input.
    #   @return [Types::HumanLoopInputContent]
    #
    # @!attribute [rw] human_loop_output
    #   An object containing information about the output of the human loop.
    #   @return [Types::HumanLoopOutputContent]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DescribeHumanLoopResponse AWS API Documentation
    #
    class DescribeHumanLoopResponse < Struct.new(
      :creation_timestamp,
      :failure_reason,
      :failure_code,
      :human_loop_status,
      :human_loop_name,
      :human_loop_arn,
      :flow_definition_arn,
      :human_loop_input,
      :human_loop_output)
      include Aws::Structure
    end

    # Contains information about why a human loop was triggered. If at least
    # one activation reason is evaluated to be true, the human loop is
    # activated.
    #
    # @!attribute [rw] conditions_matched
    #   True if the specified conditions were matched to trigger the human
    #   loop.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopActivationReason AWS API Documentation
    #
    class HumanLoopActivationReason < Struct.new(
      :conditions_matched)
      include Aws::Structure
    end

    # Information about the corresponding flow definition's human loop
    # activation condition evaluation. Null if `StartHumanLoop` was invoked
    # directly.
    #
    # @!attribute [rw] human_loop_activation_reason
    #   An object containing information about why a human loop was
    #   triggered.
    #   @return [Types::HumanLoopActivationReason]
    #
    # @!attribute [rw] human_loop_activation_conditions_evaluation_results
    #   A copy of the human loop activation conditions of the flow
    #   definition, augmented with the results of evaluating those
    #   conditions on the input provided to the `StartHumanLoop` operation.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopActivationResults AWS API Documentation
    #
    class HumanLoopActivationResults < Struct.new(
      :human_loop_activation_reason,
      :human_loop_activation_conditions_evaluation_results)
      include Aws::Structure
    end

    # An object containing the input.
    #
    # @note When making an API call, you may pass HumanLoopInputContent
    #   data as a hash:
    #
    #       {
    #         input_content: "InputContent", # required
    #       }
    #
    # @!attribute [rw] input_content
    #   Serialized input from the human loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopInputContent AWS API Documentation
    #
    class HumanLoopInputContent < Struct.new(
      :input_content)
      include Aws::Structure
    end

    # Information about where the human output will be stored.
    #
    # @!attribute [rw] output_s3_uri
    #   The location of the Amazon S3 object where Amazon Augmented AI
    #   stores your human loop output. The output is stored at the following
    #   location:
    #   `s3://S3OutputPath/HumanLoopName/CreationTime/output.json`.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopOutputContent AWS API Documentation
    #
    class HumanLoopOutputContent < Struct.new(
      :output_s3_uri)
      include Aws::Structure
    end

    # Summary information about the human loop.
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_status
    #   The status of the human loop. Valid values:
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When Amazon Augmented AI created the human loop.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the human loop failed. A failure reason is returned
    #   only when the status of the human loop is `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopSummary AWS API Documentation
    #
    class HumanLoopSummary < Struct.new(
      :human_loop_name,
      :human_loop_status,
      :creation_time,
      :failure_reason,
      :flow_definition_arn)
      include Aws::Structure
    end

    # Attributes of the data specified by the customer. Use these to
    # describe the data to be labeled.
    #
    # @note When making an API call, you may pass HumanReviewDataAttributes
    #   data as a hash:
    #
    #       {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # required, accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       }
    #
    # @!attribute [rw] content_classifiers
    #   Declares that your content is free of personally identifiable
    #   information or adult content. Amazon SageMaker may restrict the
    #   Amazon Mechanical Turk workers that can view your task based on this
    #   information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanReviewDataAttributes AWS API Documentation
    #
    class HumanReviewDataAttributes < Struct.new(
      :content_classifiers)
      include Aws::Structure
    end

    # Your request could not be processed.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHumanLoopsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   (Optional) The timestamp of the date when you want the human loops
    #   to begin. For example, `1551000000`.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   (Optional) The timestamp of the date before which you want the human
    #   loops to begin. For example, `1550000000`.
    #   @return [Time]
    #
    # @!attribute [rw] sort_order
    #   An optional value that specifies whether you want the results sorted
    #   in `Ascending` or `Descending` order.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. If the total number of
    #   available items is more than the value specified in `MaxResults`,
    #   then a `NextToken` will be provided in the output that you can use
    #   to resume pagination.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ListHumanLoopsRequest AWS API Documentation
    #
    class ListHumanLoopsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :sort_order,
      :next_token,
      :max_results)
      include Aws::Structure
    end

    # @!attribute [rw] human_loop_summaries
    #   An array of objects containing information about the human loops.
    #   @return [Array<Types::HumanLoopSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to resume pagination.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ListHumanLoopsResponse AWS API Documentation
    #
    class ListHumanLoopsResponse < Struct.new(
      :human_loop_summaries,
      :next_token)
      include Aws::Structure
    end

    # We were unable to find the requested resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      include Aws::Structure
    end

    # You have exceeded your service quota. To perform the requested action,
    # remove some of the relevant resources, or request a service quota
    # increase.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StartHumanLoopRequest
    #   data as a hash:
    #
    #       {
    #         human_loop_name: "HumanLoopName", # required
    #         flow_definition_arn: "FlowDefinitionArn", # required
    #         human_loop_input: { # required
    #           input_content: "InputContent", # required
    #         },
    #         data_attributes: {
    #           content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # required, accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #         },
    #       }
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_input
    #   An object containing information about the human loop.
    #   @return [Types::HumanLoopInputContent]
    #
    # @!attribute [rw] data_attributes
    #   Attributes of the data specified by the customer.
    #   @return [Types::HumanReviewDataAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StartHumanLoopRequest AWS API Documentation
    #
    class StartHumanLoopRequest < Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :human_loop_input,
      :data_attributes)
      include Aws::Structure
    end

    # @!attribute [rw] human_loop_arn
    #   The Amazon Resource Name (ARN) of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_activation_results
    #   An object containing information about the human loop activation.
    #   @return [Types::HumanLoopActivationResults]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StartHumanLoopResponse AWS API Documentation
    #
    class StartHumanLoopResponse < Struct.new(
      :human_loop_arn,
      :human_loop_activation_results)
      include Aws::Structure
    end

    # @note When making an API call, you may pass StopHumanLoopRequest
    #   data as a hash:
    #
    #       {
    #         human_loop_name: "HumanLoopName", # required
    #       }
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop you want to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StopHumanLoopRequest AWS API Documentation
    #
    class StopHumanLoopRequest < Struct.new(
      :human_loop_name)
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StopHumanLoopResponse AWS API Documentation
    #
    class StopHumanLoopResponse < Aws::EmptyStructure; end

    # Your request has exceeded the allowed amount of requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      include Aws::Structure
    end

    # Your request was not valid. Check the syntax and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      include Aws::Structure
    end

  end
end
