# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerA2IRuntime
  # This module contains the types returned by client operations.
  module Types

    # <p>Your request has the same name as another active human loop but has different input data. You cannot start two 
    #     human loops with the same name and different input data.</p>
    # @!attribute message
    #   @return [String]
    class ConflictException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute human_loop_name
    #   <p>The name of the human loop that you want to delete.</p>
    #   @return [String]
    class DeleteHumanLoopRequest < Struct.new(
      :human_loop_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class DeleteHumanLoopResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute human_loop_name
    #   <p>The name of the human loop that you want information about.</p>
    #   @return [String]
    class DescribeHumanLoopRequest < Struct.new(
      :human_loop_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time
    #   <p>The creation time when Amazon Augmented AI created the human loop.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason why a human loop failed. The failure reason is returned when the status of the
    #         human loop is <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute failure_code
    #   <p>A failure code that identifies the type of failure.</p>
    #            <p>Possible values: <code>ValidationError</code>, <code>Expired</code>,
    #           <code>InternalError</code>
    #            </p>
    #   @return [String]
    # @!attribute human_loop_status
    #   <p>The status of the human loop. </p>
    #   @return [String]
    # @!attribute human_loop_name
    #   <p>The name of the human loop. The name must be lowercase, unique within the Region in your
    #         account, and can have up to 63 characters. Valid characters: a-z, 0-9, and - (hyphen).</p>
    #   @return [String]
    # @!attribute human_loop_arn
    #   <p>The Amazon Resource Name (ARN) of the human loop.</p>
    #   @return [String]
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition.</p>
    #   @return [String]
    # @!attribute human_loop_output
    #   <p>An object that contains information about the output of the human loop.</p>
    #   @return [Types::HumanLoopOutput]
    class DescribeHumanLoopResponse < Struct.new(
      :creation_time,
      :failure_reason,
      :failure_code,
      :human_loop_status,
      :human_loop_name,
      :human_loop_arn,
      :flow_definition_arn,
      :human_loop_output,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Attributes of the data specified by the customer. Use these to describe the data to be labeled.</p>
    # @!attribute content_classifiers
    #   <p>Declares that your content is free of personally identifiable information or adult content.</p>
    #            <p>Amazon SageMaker can restrict the Amazon Mechanical Turk workers who can view your task based on this information.</p>
    #   @return [Array<String>]
    class HumanLoopDataAttributes < Struct.new(
      :content_classifiers,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>An object containing the human loop input in JSON format.</p>
    # @!attribute input_content
    #   <p>Serialized input from the human loop. The input must be a string representation of a file in JSON format.</p>
    #   @return [String]
    class HumanLoopInput < Struct.new(
      :input_content,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Information about where the human output will be stored.</p>
    # @!attribute output_s3_uri
    #   <p>The location of the Amazon S3 object where Amazon Augmented AI stores your human loop output.</p>
    #   @return [String]
    class HumanLoopOutput < Struct.new(
      :output_s3_uri,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>Summary information about the human loop.</p>
    # @!attribute human_loop_name
    #   <p>The name of the human loop.</p>
    #   @return [String]
    # @!attribute human_loop_status
    #   <p>The status of the human loop. </p>
    #   @return [String]
    # @!attribute creation_time
    #   <p>When Amazon Augmented AI created the human loop.</p>
    #   @return [Time]
    # @!attribute failure_reason
    #   <p>The reason why the human loop failed. A failure reason is returned when the status of the
    #         human loop is <code>Failed</code>.</p>
    #   @return [String]
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition used to configure the human
    #         loop.</p>
    #   @return [String]
    class HumanLoopSummary < Struct.new(
      :human_loop_name,
      :human_loop_status,
      :creation_time,
      :failure_reason,
      :flow_definition_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We couldn't process your request because of an issue with the server. Try again
    #       later.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute creation_time_after
    #   <p>(Optional) The timestamp of the date when you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>
    #   @return [Time]
    # @!attribute creation_time_before
    #   <p>(Optional) The timestamp of the date before which you want the human loops to begin in ISO 8601 format. For example, <code>2020-02-24</code>.</p>
    #   @return [Time]
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of a flow definition.</p>
    #   @return [String]
    # @!attribute sort_order
    #   <p>Optional. The order for displaying results. Valid values: <code>Ascending</code> and
    #           <code>Descending</code>.</p>
    #   @return [String]
    # @!attribute next_token
    #   <p>A token to display the next page of results.</p>
    #   @return [String]
    # @!attribute max_results
    #   <p>The total number of items to return. If the total number of available items is more than
    #         the value specified in <code>MaxResults</code>, then a <code>NextToken</code> is returned in
    #         the output. You can use this token to display the next page of results. </p>
    #   @return [Integer]
    class ListHumanLoopsRequest < Struct.new(
      :creation_time_after,
      :creation_time_before,
      :flow_definition_arn,
      :sort_order,
      :next_token,
      :max_results,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute human_loop_summaries
    #   <p>An array of objects that contain information about the human loops.</p>
    #   @return [Array<Types::HumanLoopSummary>]
    # @!attribute next_token
    #   <p>A token to display the next page of results.</p>
    #   @return [String]
    class ListHumanLoopsResponse < Struct.new(
      :human_loop_summaries,
      :next_token,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>We couldn't find the requested resource. Check that your resources exists and were created
    #       in the same AWS Region as your request, and try your request again. </p>
    # @!attribute message
    #   @return [String]
    class ResourceNotFoundException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You exceeded your service quota. Service quotas, also referred to as limits, are the
    #       maximum number of service resources or operations for your AWS account. For a list of
    #       Amazon A2I service quotes, see <a href="https://docs.aws.amazon.com/general/latest/gr/a2i.html">Amazon Augmented AI Service Quotes</a>. Delete some resources or request an increase in your
    #       service quota. You can request a quota increase using Service Quotas or the AWS Support
    #       Center. To request an increase, see <a href="https://docs.aws.amazon.com/general/latest/gr/aws_service_limits.html">AWS Service Quotas</a> in the
    #         <i>AWS General Reference</i>.</p>
    # @!attribute message
    #   @return [String]
    class ServiceQuotaExceededException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute human_loop_name
    #   <p>The name of the human loop.</p>
    #   @return [String]
    # @!attribute flow_definition_arn
    #   <p>The Amazon Resource Name (ARN) of the flow definition associated with this human
    #         loop.</p>
    #   @return [String]
    # @!attribute human_loop_input
    #   <p>An object that contains information about the human loop.</p>
    #   @return [Types::HumanLoopInput]
    # @!attribute data_attributes
    #   <p>Attributes of the specified data. Use <code>DataAttributes</code> to specify if your data
    #         is free of personally identifiable information and/or free of adult content.</p>
    #   @return [Types::HumanLoopDataAttributes]
    class StartHumanLoopRequest < Struct.new(
      :human_loop_name,
      :flow_definition_arn,
      :human_loop_input,
      :data_attributes,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute human_loop_arn
    #   <p>The Amazon Resource Name (ARN) of the human loop.</p>
    #   @return [String]
    class StartHumanLoopResponse < Struct.new(
      :human_loop_arn,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute human_loop_name
    #   <p>The name of the human loop that you want to stop.</p>
    #   @return [String]
    class StopHumanLoopRequest < Struct.new(
      :human_loop_name,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    class StopHumanLoopResponse < Struct.new(
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You exceeded
    #       the
    #       maximum number of requests.</p>
    # @!attribute message
    #   @return [String]
    class ThrottlingException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The
    #       request isn't valid. Check the syntax and try again.</p>
    # @!attribute message
    #   @return [String]
    class ValidationException < Struct.new(
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
