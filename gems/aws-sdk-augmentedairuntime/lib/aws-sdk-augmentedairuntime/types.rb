# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AugmentedAIRuntime
  module Types

    # Your request has the same name as another active human loop but has
    # different input data. You cannot start two human loops with the same
    # name and different input data.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ConflictException AWS API Documentation
    #
    class ConflictException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass DeleteHumanLoopRequest
    #   data as a hash:
    #
    #       {
    #         human_loop_name: "HumanLoopName", # required
    #       }
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop that you want to delete.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DeleteHumanLoopRequest AWS API Documentation
    #
    class DeleteHumanLoopRequest < Struct.new(
      :human_loop_name)
      SENSITIVE = []
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
    #   The name of the human loop that you want information about.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DescribeHumanLoopRequest AWS API Documentation
    #
    class DescribeHumanLoopRequest < Struct.new(
      :human_loop_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] creation_time
    #   The creation time when Amazon Augmented AI created the human loop.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why a human loop failed. The failure reason is returned
    #   when the status of the human loop is `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] failure_code
    #   A failure code that identifies the type of failure.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_status
    #   The status of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop. The name must be lowercase, unique
    #   within the Region in your account, and can have up to 63 characters.
    #   Valid characters: a-z, 0-9, and - (hyphen).
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
    # @!attribute [rw] human_loop_output
    #   An object that contains information about the output of the human
    #   loop.
    #   @return [Types::HumanLoopOutput]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/DescribeHumanLoopResponse AWS API Documentation
    #
    class DescribeHumanLoopResponse < Struct.new(
      :creation_time,
      :failure_reason,
      :failure_code,
      :human_loop_status,
      :human_loop_name,
      :human_loop_arn,
      :flow_definition_arn,
      :human_loop_output)
      SENSITIVE = []
      include Aws::Structure
    end

    # Attributes of the data specified by the customer. Use these to
    # describe the data to be labeled.
    #
    # @note When making an API call, you may pass HumanLoopDataAttributes
    #   data as a hash:
    #
    #       {
    #         content_classifiers: ["FreeOfPersonallyIdentifiableInformation"], # required, accepts FreeOfPersonallyIdentifiableInformation, FreeOfAdultContent
    #       }
    #
    # @!attribute [rw] content_classifiers
    #   Declares that your content is free of personally identifiable
    #   information or adult content.
    #
    #   Amazon SageMaker can restrict the Amazon Mechanical Turk workers who
    #   can view your task based on this information.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopDataAttributes AWS API Documentation
    #
    class HumanLoopDataAttributes < Struct.new(
      :content_classifiers)
      SENSITIVE = []
      include Aws::Structure
    end

    # An object containing the human loop input in JSON format.
    #
    # @note When making an API call, you may pass HumanLoopInput
    #   data as a hash:
    #
    #       {
    #         input_content: "InputContent", # required
    #       }
    #
    # @!attribute [rw] input_content
    #   Serialized input from the human loop. The input must be a string
    #   representation of a file in JSON format.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopInput AWS API Documentation
    #
    class HumanLoopInput < Struct.new(
      :input_content)
      SENSITIVE = []
      include Aws::Structure
    end

    # Information about where the human output will be stored.
    #
    # @!attribute [rw] output_s3_uri
    #   The location of the Amazon S3 object where Amazon Augmented AI
    #   stores your human loop output.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/HumanLoopOutput AWS API Documentation
    #
    class HumanLoopOutput < Struct.new(
      :output_s3_uri)
      SENSITIVE = []
      include Aws::Structure
    end

    # Summary information about the human loop.
    #
    # @!attribute [rw] human_loop_name
    #   The name of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_status
    #   The status of the human loop.
    #   @return [String]
    #
    # @!attribute [rw] creation_time
    #   When Amazon Augmented AI created the human loop.
    #   @return [Time]
    #
    # @!attribute [rw] failure_reason
    #   The reason why the human loop failed. A failure reason is returned
    #   when the status of the human loop is `Failed`.
    #   @return [String]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of the flow definition used to
    #   configure the human loop.
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
      SENSITIVE = []
      include Aws::Structure
    end

    # We couldn't process your request because of an issue with the server.
    # Try again later.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @note When making an API call, you may pass ListHumanLoopsRequest
    #   data as a hash:
    #
    #       {
    #         creation_time_after: Time.now,
    #         creation_time_before: Time.now,
    #         flow_definition_arn: "FlowDefinitionArn", # required
    #         sort_order: "Ascending", # accepts Ascending, Descending
    #         next_token: "NextToken",
    #         max_results: 1,
    #       }
    #
    # @!attribute [rw] creation_time_after
    #   (Optional) The timestamp of the date when you want the human loops
    #   to begin in ISO 8601 format. For example, `2020-02-24`.
    #   @return [Time]
    #
    # @!attribute [rw] creation_time_before
    #   (Optional) The timestamp of the date before which you want the human
    #   loops to begin in ISO 8601 format. For example, `2020-02-24`.
    #   @return [Time]
    #
    # @!attribute [rw] flow_definition_arn
    #   The Amazon Resource Name (ARN) of a flow definition.
    #   @return [String]
    #
    # @!attribute [rw] sort_order
    #   Optional. The order for displaying results. Valid values:
    #   `Ascending` and `Descending`.
    #   @return [String]
    #
    # @!attribute [rw] next_token
    #   A token to display the next page of results.
    #   @return [String]
    #
    # @!attribute [rw] max_results
    #   The total number of items to return. If the total number of
    #   available items is more than the value specified in `MaxResults`,
    #   then a `NextToken` is returned in the output. You can use this token
    #   to display the next page of results.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ListHumanLoopsRequest AWS API Documentation
    #
    class ListHumanLoopsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :flow_definition_arn,
      :sort_order,
      :next_token,
      :max_results)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] human_loop_summaries
    #   An array of objects that contain information about the human loops.
    #   @return [Array<Types::HumanLoopSummary>]
    #
    # @!attribute [rw] next_token
    #   A token to display the next page of results.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ListHumanLoopsResponse AWS API Documentation
    #
    class ListHumanLoopsResponse < Struct.new(
      :human_loop_summaries,
      :next_token)
      SENSITIVE = []
      include Aws::Structure
    end

    # We couldn't find the requested resource.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ResourceNotFoundException AWS API Documentation
    #
    class ResourceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You exceeded your service quota. Delete some resources or request an
    # increase in your service quota.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ServiceQuotaExceededException AWS API Documentation
    #
    class ServiceQuotaExceededException < Struct.new(
      :message)
      SENSITIVE = []
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
    #   The Amazon Resource Name (ARN) of the flow definition associated
    #   with this human loop.
    #   @return [String]
    #
    # @!attribute [rw] human_loop_input
    #   An object that contains information about the human loop.
    #   @return [Types::HumanLoopInput]
    #
    # @!attribute [rw] data_attributes
    #   Attributes of the specified data. Use `DataAttributes` to specify if
    #   your data is free of personally identifiable information and/or free
    #   of adult content.
    #   @return [Types::HumanLoopDataAttributes]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StartHumanLoopRequest AWS API Documentation
    #
    class StartHumanLoopRequest < Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :human_loop_input,
      :data_attributes)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] human_loop_arn
    #   The Amazon Resource Name (ARN) of the human loop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StartHumanLoopResponse AWS API Documentation
    #
    class StartHumanLoopResponse < Struct.new(
      :human_loop_arn)
      SENSITIVE = []
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
    #   The name of the human loop that you want to stop.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StopHumanLoopRequest AWS API Documentation
    #
    class StopHumanLoopRequest < Struct.new(
      :human_loop_name)
      SENSITIVE = []
      include Aws::Structure
    end

    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/StopHumanLoopResponse AWS API Documentation
    #
    class StopHumanLoopResponse < Aws::EmptyStructure; end

    # You exceeded the maximum number of requests.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request isn't valid. Check the syntax and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/sagemaker-a2i-runtime-2019-11-07/ValidationException AWS API Documentation
    #
    class ValidationException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
