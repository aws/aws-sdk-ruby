# frozen_string_literal: true

# This is generated code!

module Aws::SageMakerA2IRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    ContentClassifier = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakera2iruntime#ContentClassifier", name: "ContentClassifier")
    ContentClassifiers = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakera2iruntime#ContentClassifiers", name: "ContentClassifiers", traits: {"smithy.api#length" => {"min" => 0, "max" => 256}})
    DeleteHumanLoopRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#DeleteHumanLoopRequest", name: "DeleteHumanLoopRequest")
    DeleteHumanLoopResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#DeleteHumanLoopResponse", name: "DeleteHumanLoopResponse")
    DescribeHumanLoopRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#DescribeHumanLoopRequest", name: "DescribeHumanLoopRequest")
    DescribeHumanLoopResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#DescribeHumanLoopResponse", name: "DescribeHumanLoopResponse")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#FailureReason", name: "FailureReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    FlowDefinitionArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#FlowDefinitionArn", name: "FlowDefinitionArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:flow-definition/"})
    HumanLoopArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopArn", name: "HumanLoopArn", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:human-loop/"})
    HumanLoopDataAttributes = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopDataAttributes", name: "HumanLoopDataAttributes")
    HumanLoopInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopInput", name: "HumanLoopInput")
    HumanLoopName = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopName", name: "HumanLoopName", traits: {"smithy.api#length" => {"min" => 1, "max" => 63}, "smithy.api#pattern" => "^[a-z0-9](-*[a-z0-9])*$"})
    HumanLoopOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopOutput", name: "HumanLoopOutput")
    HumanLoopStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopStatus", name: "HumanLoopStatus")
    HumanLoopSummaries = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopSummaries", name: "HumanLoopSummaries")
    HumanLoopSummary = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#HumanLoopSummary", name: "HumanLoopSummary")
    InputContent = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#InputContent", name: "InputContent", traits: {"smithy.api#length" => {"min" => 0, "max" => 3145728}})
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    ListHumanLoopsRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ListHumanLoopsRequest", name: "ListHumanLoopsRequest")
    ListHumanLoopsResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ListHumanLoopsResponse", name: "ListHumanLoopsResponse")
    MaxResults = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.sagemakera2iruntime#MaxResults", name: "MaxResults", traits: {"smithy.api#range" => {"min" => 1, "max" => 100}})
    NextToken = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#NextToken", name: "NextToken", traits: {"smithy.api#length" => {"min" => 0, "max" => 8192}, "smithy.api#pattern" => ".*"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    SortOrder = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakera2iruntime#SortOrder", name: "SortOrder")
    StartHumanLoopRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#StartHumanLoopRequest", name: "StartHumanLoopRequest")
    StartHumanLoopResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#StartHumanLoopResponse", name: "StartHumanLoopResponse")
    StopHumanLoopRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#StopHumanLoopRequest", name: "StopHumanLoopRequest")
    StopHumanLoopResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#StopHumanLoopResponse", name: "StopHumanLoopResponse")
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakera2iruntime#String", name: "String")
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})
    Timestamp = ::Smithy::Schema::Shapes::TimestampShape.new(id: "com.amazonaws.sagemakera2iruntime#Timestamp", name: "Timestamp", traits: {"smithy.api#timestampFormat" => "date-time"})
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakera2iruntime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ConflictException.type = Types::ConflictException
    ContentClassifier.add_member(:free_of_personally_identifiable_information, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREE_OF_PERSONALLY_IDENTIFIABLE_INFORMATION", traits: {"smithy.api#enumValue" => "FreeOfPersonallyIdentifiableInformation"}))
    ContentClassifier.add_member(:free_of_adult_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FREE_OF_ADULT_CONTENT", traits: {"smithy.api#enumValue" => "FreeOfAdultContent"}))
    ContentClassifiers.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifier)
    DeleteHumanLoopRequest.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DeleteHumanLoopRequest.type = Types::DeleteHumanLoopRequest
    DeleteHumanLoopResponse.type = Types::DeleteHumanLoopResponse
    DescribeHumanLoopRequest.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName", traits: {"smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    DescribeHumanLoopRequest.type = Types::DescribeHumanLoopRequest
    DescribeHumanLoopResponse.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeHumanLoopResponse.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FailureReason"))
    DescribeHumanLoopResponse.add_member(:failure_code, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "FailureCode"))
    DescribeHumanLoopResponse.add_member(:human_loop_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopStatus, location_name: "HumanLoopStatus", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeHumanLoopResponse.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeHumanLoopResponse.add_member(:human_loop_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: "HumanLoopArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeHumanLoopResponse.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: "FlowDefinitionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    DescribeHumanLoopResponse.add_member(:human_loop_output, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopOutput, location_name: "HumanLoopOutput"))
    DescribeHumanLoopResponse.type = Types::DescribeHumanLoopResponse
    HumanLoopDataAttributes.add_member(:content_classifiers, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ContentClassifiers, location_name: "ContentClassifiers", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    HumanLoopDataAttributes.type = Types::HumanLoopDataAttributes
    HumanLoopInput.add_member(:input_content, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InputContent, location_name: "InputContent", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    HumanLoopInput.type = Types::HumanLoopInput
    HumanLoopOutput.add_member(:output_s3_uri, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "OutputS3Uri", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    HumanLoopOutput.type = Types::HumanLoopOutput
    HumanLoopStatus.add_member(:in_progress, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "IN_PROGRESS", traits: {"smithy.api#enumValue" => "InProgress"}))
    HumanLoopStatus.add_member(:failed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "FAILED", traits: {"smithy.api#enumValue" => "Failed"}))
    HumanLoopStatus.add_member(:completed, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "COMPLETED", traits: {"smithy.api#enumValue" => "Completed"}))
    HumanLoopStatus.add_member(:stopped, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPED", traits: {"smithy.api#enumValue" => "Stopped"}))
    HumanLoopStatus.add_member(:stopping, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "STOPPING", traits: {"smithy.api#enumValue" => "Stopping"}))
    HumanLoopSummaries.member = ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopSummary)
    HumanLoopSummary.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName"))
    HumanLoopSummary.add_member(:human_loop_status, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopStatus, location_name: "HumanLoopStatus"))
    HumanLoopSummary.add_member(:creation_time, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTime"))
    HumanLoopSummary.add_member(:failure_reason, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "FailureReason"))
    HumanLoopSummary.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: "FlowDefinitionArn"))
    HumanLoopSummary.type = Types::HumanLoopSummary
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    InternalServerException.type = Types::InternalServerException
    ListHumanLoopsRequest.add_member(:creation_time_after, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeAfter", traits: {"smithy.api#httpQuery" => "CreationTimeAfter"}))
    ListHumanLoopsRequest.add_member(:creation_time_before, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Timestamp, location_name: "CreationTimeBefore", traits: {"smithy.api#httpQuery" => "CreationTimeBefore"}))
    ListHumanLoopsRequest.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: "FlowDefinitionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#httpQuery" => "FlowDefinitionArn", "smithy.api#required" => {}}))
    ListHumanLoopsRequest.add_member(:sort_order, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SortOrder, location_name: "SortOrder", traits: {"smithy.api#httpQuery" => "SortOrder"}))
    ListHumanLoopsRequest.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken", traits: {"smithy.api#httpQuery" => "NextToken"}))
    ListHumanLoopsRequest.add_member(:max_results, ::Smithy::Schema::Shapes::ShapeRef.new(shape: MaxResults, location_name: "MaxResults", traits: {"smithy.api#httpQuery" => "MaxResults"}))
    ListHumanLoopsRequest.type = Types::ListHumanLoopsRequest
    ListHumanLoopsResponse.add_member(:human_loop_summaries, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopSummaries, location_name: "HumanLoopSummaries", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    ListHumanLoopsResponse.add_member(:next_token, ::Smithy::Schema::Shapes::ShapeRef.new(shape: NextToken, location_name: "NextToken"))
    ListHumanLoopsResponse.type = Types::ListHumanLoopsResponse
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    SortOrder.add_member(:ascending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "ASCENDING", traits: {"smithy.api#enumValue" => "Ascending"}))
    SortOrder.add_member(:descending, ::Smithy::Schema::Shapes::ShapeRef.new(shape: ::Smithy::Schema::Shapes::Prelude::Unit, location_name: "DESCENDING", traits: {"smithy.api#enumValue" => "Descending"}))
    StartHumanLoopRequest.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartHumanLoopRequest.add_member(:flow_definition_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FlowDefinitionArn, location_name: "FlowDefinitionArn", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartHumanLoopRequest.add_member(:human_loop_input, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopInput, location_name: "HumanLoopInput", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StartHumanLoopRequest.add_member(:data_attributes, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopDataAttributes, location_name: "DataAttributes"))
    StartHumanLoopRequest.type = Types::StartHumanLoopRequest
    StartHumanLoopResponse.add_member(:human_loop_arn, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopArn, location_name: "HumanLoopArn"))
    StartHumanLoopResponse.type = Types::StartHumanLoopResponse
    StopHumanLoopRequest.add_member(:human_loop_name, ::Smithy::Schema::Shapes::ShapeRef.new(shape: HumanLoopName, location_name: "HumanLoopName", traits: {"smithy.api#clientOptional" => {}, "smithy.api#required" => {}}))
    StopHumanLoopRequest.type = Types::StopHumanLoopRequest
    StopHumanLoopResponse.type = Types::StopHumanLoopResponse
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: FailureReason, location_name: "Message"))
    ValidationException.type = Types::ValidationException

    AmazonSageMakerA2IRuntime = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakera2iruntime#AmazonSageMakerA2IRuntime"
      service.name = "AmazonSageMakerA2IRuntime"
      service.version = "2019-11-07"
      service.traits = {"aws.api#service" => {"sdkId" => "SageMaker A2I Runtime", "arnNamespace" => "sagemaker", "cloudFormationName" => "SageMakerA2IRuntime", "cloudTrailEventSource" => "sagemakera2iruntime.amazonaws.com", "endpointPrefix" => "a2i-runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Amazon Augmented AI Runtime"}
      service.add_operation(:delete_human_loop, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakera2iruntime#DeleteHumanLoop"
        operation.name = "DeleteHumanLoop"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHumanLoopRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DeleteHumanLoopResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "DELETE", "uri" => "/human-loops/{HumanLoopName}", "code" => 200}}
      end)
      service.add_operation(:describe_human_loop, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakera2iruntime#DescribeHumanLoop"
        operation.name = "DescribeHumanLoop"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHumanLoopRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: DescribeHumanLoopResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/human-loops/{HumanLoopName}", "code" => 200}}
      end)
      service.add_operation(:list_human_loops, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakera2iruntime#ListHumanLoops"
        operation.name = "ListHumanLoops"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHumanLoopsRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: ListHumanLoopsResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/human-loops", "code" => 200}}
        operation[:paginator] = Paginators::ListHumanLoops.new
      end)
      service.add_operation(:start_human_loop, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakera2iruntime#StartHumanLoop"
        operation.name = "StartHumanLoop"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartHumanLoopRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StartHumanLoopResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ConflictException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceQuotaExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/human-loops", "code" => 200}}
      end)
      service.add_operation(:stop_human_loop, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakera2iruntime#StopHumanLoop"
        operation.name = "StopHumanLoop"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopHumanLoopRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: StopHumanLoopResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ValidationException)
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/human-loops/stop", "code" => 200}}
      end)
    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(::Smithy::Schema::Shapes::StructureShape) }
        @type_registry = ::Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
