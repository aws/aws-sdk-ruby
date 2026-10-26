# frozen_string_literal: true

# This is generated code!

module Aws::SagemakerJobRuntime
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    CompleteRolloutRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#CompleteRolloutRequest", name: "CompleteRolloutRequest")
    CompleteRolloutResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#CompleteRolloutResponse", name: "CompleteRolloutResponse")
    CompletionStatus = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.sagemakerjobruntime#CompletionStatus", name: "CompletionStatus")
    ConflictException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#ConflictException", name: "ConflictException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 409})
    DoubleList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.sagemakerjobruntime#DoubleList", name: "DoubleList")
    FailureReason = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerjobruntime#FailureReason", name: "FailureReason", traits: {"smithy.api#length" => {"min" => 0, "max" => 1024}})
    InferenceRequestBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakerjobruntime#InferenceRequestBody", name: "InferenceRequestBody", traits: {"smithy.api#sensitive" => {}})
    InferenceResponseBody = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakerjobruntime#InferenceResponseBody", name: "InferenceResponseBody", traits: {"smithy.api#sensitive" => {}})
    InternalServiceError = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#InternalServiceError", name: "InternalServiceError", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500, "smithy.api#retryable" => {}})
    JobArn = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerjobruntime#JobArn", name: "JobArn", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}, "smithy.api#pattern" => "^arn:aws[a-z\\-]*:sagemaker:[a-z0-9\\-]*:[0-9]{12}:job/[a-zA-Z0-9_\\-]+/[a-zA-Z0-9](-*[a-zA-Z0-9]){0,62}$"})
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ResponseStream = ::Smithy::Schema::Shapes::BlobShape.new(id: "com.amazonaws.sagemakerjobruntime#ResponseStream", name: "ResponseStream", traits: {"smithy.api#sensitive" => {}, "smithy.api#streaming" => {}})
    SampleRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#SampleRequest", name: "SampleRequest")
    SampleResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#SampleResponse", name: "SampleResponse")
    SampleWithResponseStreamRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#SampleWithResponseStreamRequest", name: "SampleWithResponseStreamRequest")
    SampleWithResponseStreamResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#SampleWithResponseStreamResponse", name: "SampleWithResponseStreamResponse")
    ServiceQuotaExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#ServiceQuotaExceededException", name: "ServiceQuotaExceededException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 402})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#ThrottlingException", name: "ThrottlingException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429, "smithy.api#retryable" => {}})
    TrajectoryId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.sagemakerjobruntime#TrajectoryId", name: "TrajectoryId", traits: {"smithy.api#length" => {"min" => 1, "max" => 256}})
    UpdateRewardRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#UpdateRewardRequest", name: "UpdateRewardRequest")
    UpdateRewardResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#UpdateRewardResponse", name: "UpdateRewardResponse")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.sagemakerjobruntime#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    CompleteRolloutRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "JobArn", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Job-Arn", "smithy.api#required" => {}}))
    CompleteRolloutRequest.add_member(:trajectory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrajectoryId, name: "TrajectoryId", traits: {"smithy.api#required" => {}}))
    CompleteRolloutRequest.add_member(:status, ::Smithy::Schema::Shapes::MemberShape.new(target: CompletionStatus, name: "Status"))
    CompleteRolloutRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    CompleteRolloutRequest.type = Types::CompleteRolloutRequest
    CompleteRolloutResponse.type = Types::CompleteRolloutResponse
    CompletionStatus.add_member(:ready, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "READY", traits: {"smithy.api#enumValue" => "ready"}))
    CompletionStatus.add_member(:failed, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "FAILED", traits: {"smithy.api#enumValue" => "failed"}))
    ConflictException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    ConflictException.type = Types::ConflictException
    DoubleList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Double, name: "member"))
    InternalServiceError.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    InternalServiceError.type = Types::InternalServiceError
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    SampleRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "JobArn", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Job-Arn", "smithy.api#required" => {}}))
    SampleRequest.add_member(:trajectory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrajectoryId, name: "TrajectoryId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Trajectory-Id", "smithy.api#required" => {}}))
    SampleRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceRequestBody, name: "Body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SampleRequest[:http_payload] = :body
    SampleRequest[:http_payload_member] = SampleRequest.member(:body)
    SampleRequest.type = Types::SampleRequest
    SampleResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SampleResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceResponseBody, name: "Body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SampleResponse[:http_payload] = :body
    SampleResponse[:http_payload_member] = SampleResponse.member(:body)
    SampleResponse.type = Types::SampleResponse
    SampleWithResponseStreamRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "JobArn", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Job-Arn", "smithy.api#required" => {}}))
    SampleWithResponseStreamRequest.add_member(:trajectory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrajectoryId, name: "TrajectoryId", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Trajectory-Id", "smithy.api#required" => {}}))
    SampleWithResponseStreamRequest.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: InferenceRequestBody, name: "Body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SampleWithResponseStreamRequest[:http_payload] = :body
    SampleWithResponseStreamRequest[:http_payload_member] = SampleWithResponseStreamRequest.member(:body)
    SampleWithResponseStreamRequest.type = Types::SampleWithResponseStreamRequest
    SampleWithResponseStreamResponse.add_member(:content_type, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ContentType", traits: {"smithy.api#httpHeader" => "Content-Type"}))
    SampleWithResponseStreamResponse.add_member(:body, ::Smithy::Schema::Shapes::MemberShape.new(target: ResponseStream, name: "Body", traits: {"smithy.api#httpPayload" => {}, "smithy.api#required" => {}}))
    SampleWithResponseStreamResponse[:http_payload] = :body
    SampleWithResponseStreamResponse[:http_payload_member] = SampleWithResponseStreamResponse.member(:body)
    SampleWithResponseStreamResponse.type = Types::SampleWithResponseStreamResponse
    ServiceQuotaExceededException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    ServiceQuotaExceededException.type = Types::ServiceQuotaExceededException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    ThrottlingException.type = Types::ThrottlingException
    UpdateRewardRequest.add_member(:job_arn, ::Smithy::Schema::Shapes::MemberShape.new(target: JobArn, name: "JobArn", traits: {"smithy.api#httpHeader" => "X-Amzn-SageMaker-Job-Arn", "smithy.api#required" => {}}))
    UpdateRewardRequest.add_member(:trajectory_id, ::Smithy::Schema::Shapes::MemberShape.new(target: TrajectoryId, name: "TrajectoryId", traits: {"smithy.api#required" => {}}))
    UpdateRewardRequest.add_member(:rewards, ::Smithy::Schema::Shapes::MemberShape.new(target: DoubleList, name: "Rewards", traits: {"smithy.api#required" => {}}))
    UpdateRewardRequest.add_member(:client_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "ClientToken", traits: {"smithy.api#idempotencyToken" => {}}))
    UpdateRewardRequest.type = Types::UpdateRewardRequest
    UpdateRewardResponse.type = Types::UpdateRewardResponse
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: FailureReason, name: "Message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AgenticRFTRuntimeService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.sagemakerjobruntime#AgenticRFTRuntimeService"
      service.name = "AgenticRFTRuntimeService"
      service.version = "2026-02-01"
      service.traits = {"aws.api#service" => {"sdkId" => "SagemakerJobRuntime", "arnNamespace" => "sagemaker", "endpointPrefix" => "job-runtime.sagemaker"}, "aws.auth#sigv4" => {"name" => "sagemaker"}, "aws.endpoints#dualStackOnlyEndpoints" => {}, "aws.endpoints#standardRegionalEndpoints" => {"partitionSpecialCases" => {"aws" => [{"endpoint" => "https://job-runtime.sagemaker.{region}.{dualStackDnsSuffix}", "dualStack" => true}], "aws-cn" => [{"endpoint" => "https://job-runtime.sagemaker.{region}.{dualStackDnsSuffix}", "dualStack" => true}], "aws-us-gov" => [{"endpoint" => "https://job-runtime.sagemaker.{region}.{dualStackDnsSuffix}", "dualStack" => true}]}}, "aws.protocols#restJson1" => {}, "smithy.api#title" => "Sagemaker Job Runtime Service", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}, "Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://job-runtime.sagemaker.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://job-runtime.sagemaker-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 6, "nodes" => "/////wAAAAH/////AAAAAAAAAAYAAAADAAAAAQAAAAQF9eEFAAAAAgAAAAUF9eEFAAAAAwX14QQF9eEDAAAAAwX14QEF9eEC"}}
      service.add_operation(:complete_rollout, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerjobruntime#CompleteRollout"
        operation.name = "CompleteRollout"
        operation.input = CompleteRolloutRequest
        operation.output = CompleteRolloutResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceError
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/complete-rollout", "code" => 200}, "smithy.api#idempotent" => {}}
      end)
      service.add_operation(:sample, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerjobruntime#Sample"
        operation.name = "Sample"
        operation.input = SampleRequest
        operation.output = SampleResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sample", "code" => 200}}
      end)
      service.add_operation(:sample_with_response_stream, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerjobruntime#SampleWithResponseStream"
        operation.name = "SampleWithResponseStream"
        operation.input = SampleWithResponseStreamRequest
        operation.output = SampleWithResponseStreamResponse
        operation.errors << AccessDeniedException
        operation.errors << InternalServiceError
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/sample-with-response-stream", "code" => 200}}
      end)
      service.add_operation(:update_reward, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.sagemakerjobruntime#UpdateReward"
        operation.name = "UpdateReward"
        operation.input = UpdateRewardRequest
        operation.output = UpdateRewardResponse
        operation.errors << AccessDeniedException
        operation.errors << ConflictException
        operation.errors << InternalServiceError
        operation.errors << ResourceNotFoundException
        operation.errors << ServiceQuotaExceededException
        operation.errors << ThrottlingException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "POST", "uri" => "/update-reward", "code" => 200}, "smithy.api#idempotent" => {}, "smithy.test#smokeTests" => [{"id" => "UpdateRewardFailure", "params" => {"JobArn" => "arn:aws:sagemaker:us-east-1:123456789012:job/AgentRFT/nonexistent-job", "TrajectoryId" => "nonexistent-trajectory", "Rewards" => [1.0]}, "expect" => {"failure" => {"errorId" => "com.amazonaws.sagemakerjobruntime#AccessDeniedException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
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
