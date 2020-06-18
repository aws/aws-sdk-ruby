# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::AugmentedAIRuntime
  # @api private
  module ClientApi

    include Seahorse::Model

    ConflictException = Shapes::StructureShape.new(name: 'ConflictException')
    ContentClassifier = Shapes::StringShape.new(name: 'ContentClassifier')
    ContentClassifiers = Shapes::ListShape.new(name: 'ContentClassifiers')
    DeleteHumanLoopRequest = Shapes::StructureShape.new(name: 'DeleteHumanLoopRequest')
    DeleteHumanLoopResponse = Shapes::StructureShape.new(name: 'DeleteHumanLoopResponse')
    DescribeHumanLoopRequest = Shapes::StructureShape.new(name: 'DescribeHumanLoopRequest')
    DescribeHumanLoopResponse = Shapes::StructureShape.new(name: 'DescribeHumanLoopResponse')
    FailureReason = Shapes::StringShape.new(name: 'FailureReason')
    FlowDefinitionArn = Shapes::StringShape.new(name: 'FlowDefinitionArn')
    HumanLoopArn = Shapes::StringShape.new(name: 'HumanLoopArn')
    HumanLoopDataAttributes = Shapes::StructureShape.new(name: 'HumanLoopDataAttributes')
    HumanLoopInput = Shapes::StructureShape.new(name: 'HumanLoopInput')
    HumanLoopName = Shapes::StringShape.new(name: 'HumanLoopName')
    HumanLoopOutput = Shapes::StructureShape.new(name: 'HumanLoopOutput')
    HumanLoopStatus = Shapes::StringShape.new(name: 'HumanLoopStatus')
    HumanLoopSummaries = Shapes::ListShape.new(name: 'HumanLoopSummaries')
    HumanLoopSummary = Shapes::StructureShape.new(name: 'HumanLoopSummary')
    InputContent = Shapes::StringShape.new(name: 'InputContent')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    ListHumanLoopsRequest = Shapes::StructureShape.new(name: 'ListHumanLoopsRequest')
    ListHumanLoopsResponse = Shapes::StructureShape.new(name: 'ListHumanLoopsResponse')
    MaxResults = Shapes::IntegerShape.new(name: 'MaxResults')
    NextToken = Shapes::StringShape.new(name: 'NextToken')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceQuotaExceededException = Shapes::StructureShape.new(name: 'ServiceQuotaExceededException')
    SortOrder = Shapes::StringShape.new(name: 'SortOrder')
    StartHumanLoopRequest = Shapes::StructureShape.new(name: 'StartHumanLoopRequest')
    StartHumanLoopResponse = Shapes::StructureShape.new(name: 'StartHumanLoopResponse')
    StopHumanLoopRequest = Shapes::StructureShape.new(name: 'StopHumanLoopRequest')
    StopHumanLoopResponse = Shapes::StructureShape.new(name: 'StopHumanLoopResponse')
    String = Shapes::StringShape.new(name: 'String')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    ConflictException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ConflictException.struct_class = Types::ConflictException

    ContentClassifiers.member = Shapes::ShapeRef.new(shape: ContentClassifier)

    DeleteHumanLoopRequest.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location: "uri", location_name: "HumanLoopName"))
    DeleteHumanLoopRequest.struct_class = Types::DeleteHumanLoopRequest

    DeleteHumanLoopResponse.struct_class = Types::DeleteHumanLoopResponse

    DescribeHumanLoopRequest.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location: "uri", location_name: "HumanLoopName"))
    DescribeHumanLoopRequest.struct_class = Types::DescribeHumanLoopRequest

    DescribeHumanLoopResponse.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "CreationTime"))
    DescribeHumanLoopResponse.add_member(:failure_reason, Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    DescribeHumanLoopResponse.add_member(:failure_code, Shapes::ShapeRef.new(shape: String, location_name: "FailureCode"))
    DescribeHumanLoopResponse.add_member(:human_loop_status, Shapes::ShapeRef.new(shape: HumanLoopStatus, required: true, location_name: "HumanLoopStatus"))
    DescribeHumanLoopResponse.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location_name: "HumanLoopName"))
    DescribeHumanLoopResponse.add_member(:human_loop_arn, Shapes::ShapeRef.new(shape: HumanLoopArn, required: true, location_name: "HumanLoopArn"))
    DescribeHumanLoopResponse.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    DescribeHumanLoopResponse.add_member(:human_loop_output, Shapes::ShapeRef.new(shape: HumanLoopOutput, location_name: "HumanLoopOutput"))
    DescribeHumanLoopResponse.struct_class = Types::DescribeHumanLoopResponse

    HumanLoopDataAttributes.add_member(:content_classifiers, Shapes::ShapeRef.new(shape: ContentClassifiers, required: true, location_name: "ContentClassifiers"))
    HumanLoopDataAttributes.struct_class = Types::HumanLoopDataAttributes

    HumanLoopInput.add_member(:input_content, Shapes::ShapeRef.new(shape: InputContent, required: true, location_name: "InputContent"))
    HumanLoopInput.struct_class = Types::HumanLoopInput

    HumanLoopOutput.add_member(:output_s3_uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "OutputS3Uri"))
    HumanLoopOutput.struct_class = Types::HumanLoopOutput

    HumanLoopSummaries.member = Shapes::ShapeRef.new(shape: HumanLoopSummary)

    HumanLoopSummary.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName"))
    HumanLoopSummary.add_member(:human_loop_status, Shapes::ShapeRef.new(shape: HumanLoopStatus, location_name: "HumanLoopStatus"))
    HumanLoopSummary.add_member(:creation_time, Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    HumanLoopSummary.add_member(:failure_reason, Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    HumanLoopSummary.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: "FlowDefinitionArn"))
    HumanLoopSummary.struct_class = Types::HumanLoopSummary

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    InternalServerException.struct_class = Types::InternalServerException

    ListHumanLoopsRequest.add_member(:creation_time_after, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "CreationTimeAfter"))
    ListHumanLoopsRequest.add_member(:creation_time_before, Shapes::ShapeRef.new(shape: Timestamp, location: "querystring", location_name: "CreationTimeBefore"))
    ListHumanLoopsRequest.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location: "querystring", location_name: "FlowDefinitionArn"))
    ListHumanLoopsRequest.add_member(:sort_order, Shapes::ShapeRef.new(shape: SortOrder, location: "querystring", location_name: "SortOrder"))
    ListHumanLoopsRequest.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location: "querystring", location_name: "NextToken"))
    ListHumanLoopsRequest.add_member(:max_results, Shapes::ShapeRef.new(shape: MaxResults, location: "querystring", location_name: "MaxResults", metadata: {"box"=>true}))
    ListHumanLoopsRequest.struct_class = Types::ListHumanLoopsRequest

    ListHumanLoopsResponse.add_member(:human_loop_summaries, Shapes::ShapeRef.new(shape: HumanLoopSummaries, required: true, location_name: "HumanLoopSummaries"))
    ListHumanLoopsResponse.add_member(:next_token, Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHumanLoopsResponse.struct_class = Types::ListHumanLoopsResponse

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceQuotaExceededException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ServiceQuotaExceededException.struct_class = Types::ServiceQuotaExceededException

    StartHumanLoopRequest.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location_name: "HumanLoopName"))
    StartHumanLoopRequest.add_member(:flow_definition_arn, Shapes::ShapeRef.new(shape: FlowDefinitionArn, required: true, location_name: "FlowDefinitionArn"))
    StartHumanLoopRequest.add_member(:human_loop_input, Shapes::ShapeRef.new(shape: HumanLoopInput, required: true, location_name: "HumanLoopInput"))
    StartHumanLoopRequest.add_member(:data_attributes, Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: "DataAttributes"))
    StartHumanLoopRequest.struct_class = Types::StartHumanLoopRequest

    StartHumanLoopResponse.add_member(:human_loop_arn, Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: "HumanLoopArn"))
    StartHumanLoopResponse.struct_class = Types::StartHumanLoopResponse

    StopHumanLoopRequest.add_member(:human_loop_name, Shapes::ShapeRef.new(shape: HumanLoopName, required: true, location_name: "HumanLoopName"))
    StopHumanLoopRequest.struct_class = Types::StopHumanLoopRequest

    StopHumanLoopResponse.struct_class = Types::StopHumanLoopResponse

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2019-11-07"

      api.metadata = {
        "apiVersion" => "2019-11-07",
        "endpointPrefix" => "a2i-runtime.sagemaker",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon Augmented AI Runtime",
        "serviceId" => "SageMaker A2I Runtime",
        "signatureVersion" => "v4",
        "signingName" => "sagemaker",
        "uid" => "sagemaker-a2i-runtime-2019-11-07",
      }

      api.add_operation(:delete_human_loop, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DeleteHumanLoop"
        o.http_method = "DELETE"
        o.http_request_uri = "/human-loops/{HumanLoopName}"
        o.input = Shapes::ShapeRef.new(shape: DeleteHumanLoopRequest)
        o.output = Shapes::ShapeRef.new(shape: DeleteHumanLoopResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:describe_human_loop, Seahorse::Model::Operation.new.tap do |o|
        o.name = "DescribeHumanLoop"
        o.http_method = "GET"
        o.http_request_uri = "/human-loops/{HumanLoopName}"
        o.input = Shapes::ShapeRef.new(shape: DescribeHumanLoopRequest)
        o.output = Shapes::ShapeRef.new(shape: DescribeHumanLoopResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)

      api.add_operation(:list_human_loops, Seahorse::Model::Operation.new.tap do |o|
        o.name = "ListHumanLoops"
        o.http_method = "GET"
        o.http_request_uri = "/human-loops"
        o.input = Shapes::ShapeRef.new(shape: ListHumanLoopsRequest)
        o.output = Shapes::ShapeRef.new(shape: ListHumanLoopsResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          limit_key: "max_results",
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)

      api.add_operation(:start_human_loop, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StartHumanLoop"
        o.http_method = "POST"
        o.http_request_uri = "/human-loops"
        o.input = Shapes::ShapeRef.new(shape: StartHumanLoopRequest)
        o.output = Shapes::ShapeRef.new(shape: StartHumanLoopResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: ConflictException)
      end)

      api.add_operation(:stop_human_loop, Seahorse::Model::Operation.new.tap do |o|
        o.name = "StopHumanLoop"
        o.http_method = "POST"
        o.http_request_uri = "/human-loops/stop"
        o.input = Shapes::ShapeRef.new(shape: StopHumanLoopRequest)
        o.output = Shapes::ShapeRef.new(shape: StopHumanLoopResponse)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
      end)
    end

  end
end
