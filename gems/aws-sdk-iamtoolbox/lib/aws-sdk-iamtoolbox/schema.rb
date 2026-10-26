# frozen_string_literal: true

# This is generated code!

module Aws::IAMToolbox
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#AccessDeniedException", name: "AccessDeniedException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AttachedTo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#AttachedTo", name: "AttachedTo")
    AttachedToList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iamtoolbox#AttachedToList", name: "AttachedToList")
    AuthorizationContext = ::Smithy::Schema::Shapes::MapShape.new(id: "com.amazonaws.iamtoolbox#AuthorizationContext", name: "AuthorizationContext")
    EvaluatedEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iamtoolbox#EvaluatedEffect", name: "EvaluatedEffect")
    Evaluation = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#Evaluation", name: "Evaluation")
    Evaluations = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iamtoolbox#Evaluations", name: "Evaluations")
    GetRequestAuthorizationDetailsInput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#GetRequestAuthorizationDetailsInput", name: "GetRequestAuthorizationDetailsInput")
    GetRequestAuthorizationDetailsOutput = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#GetRequestAuthorizationDetailsOutput", name: "GetRequestAuthorizationDetailsOutput")
    InternalServerException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#InternalServerException", name: "InternalServerException", traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    MatchedPolicy = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#MatchedPolicy", name: "MatchedPolicy")
    MatchedPolicyList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iamtoolbox#MatchedPolicyList", name: "MatchedPolicyList")
    MatchedStatement = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#MatchedStatement", name: "MatchedStatement")
    MatchedStatementList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iamtoolbox#MatchedStatementList", name: "MatchedStatementList")
    PolicyInfo = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#PolicyInfo", name: "PolicyInfo")
    PolicyInfoList = ::Smithy::Schema::Shapes::ListShape.new(id: "com.amazonaws.iamtoolbox#PolicyInfoList", name: "PolicyInfoList")
    PolicyType = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iamtoolbox#PolicyType", name: "PolicyType")
    ResourceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#ResourceNotFoundException", name: "ResourceNotFoundException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    StatementEffect = ::Smithy::Schema::Shapes::EnumShape.new(id: "com.amazonaws.iamtoolbox#StatementEffect", name: "StatementEffect")
    ValidationException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.iamtoolbox#ValidationException", name: "ValidationException", traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})

    AccessDeniedException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    AccessDeniedException.type = Types::AccessDeniedException
    AttachedTo.add_member(:arn, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "arn", traits: {"smithy.api#pattern" => "^arn:[^:]*:[^:]*:[^:]*:[^:]*:.*$"}))
    AttachedTo.type = Types::AttachedTo
    AttachedToList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedTo, name: "member"))
    AuthorizationContext.add_member(:key, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "key"))
    AuthorizationContext.add_member(:value, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Document, name: "value"))
    EvaluatedEffect.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    EvaluatedEffect.add_member(:explicit_deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "EXPLICIT_DENY", traits: {"smithy.api#enumValue" => "EXPLICIT_DENY"}))
    EvaluatedEffect.add_member(:implicit_deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IMPLICIT_DENY", traits: {"smithy.api#enumValue" => "IMPLICIT_DENY"}))
    Evaluation.add_member(:action, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "action", traits: {"smithy.api#required" => {}}))
    Evaluation.add_member(:resource, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "resource", traits: {"smithy.api#required" => {}}))
    Evaluation.add_member(:context, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationContext, name: "context"))
    Evaluation.add_member(:evaluated_effect, ::Smithy::Schema::Shapes::MemberShape.new(target: EvaluatedEffect, name: "evaluatedEffect"))
    Evaluation.add_member(:matched_policies, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedPolicyList, name: "matchedPolicies"))
    Evaluation.type = Types::Evaluation
    Evaluations.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluation, name: "member"))
    GetRequestAuthorizationDetailsInput.add_member(:authorization_id, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "authorizationId", traits: {"smithy.api#httpLabel" => {}, "smithy.api#pattern" => "^[0123456789abcdefghijklmnopqrstuvwxyz]+$", "smithy.api#required" => {}}))
    GetRequestAuthorizationDetailsInput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken", traits: {"smithy.api#httpQuery" => "nextToken"}))
    GetRequestAuthorizationDetailsInput.type = Types::GetRequestAuthorizationDetailsInput
    GetRequestAuthorizationDetailsOutput.add_member(:request_context, ::Smithy::Schema::Shapes::MemberShape.new(target: AuthorizationContext, name: "requestContext", traits: {"smithy.api#required" => {}}))
    GetRequestAuthorizationDetailsOutput.add_member(:evaluations, ::Smithy::Schema::Shapes::MemberShape.new(target: Evaluations, name: "evaluations", traits: {"smithy.api#required" => {}}))
    GetRequestAuthorizationDetailsOutput.add_member(:policies, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyInfoList, name: "policies", traits: {"smithy.api#required" => {}}))
    GetRequestAuthorizationDetailsOutput.add_member(:next_token, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "nextToken"))
    GetRequestAuthorizationDetailsOutput.type = Types::GetRequestAuthorizationDetailsOutput
    InternalServerException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    InternalServerException.type = Types::InternalServerException
    MatchedPolicy.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri", traits: {"smithy.api#required" => {}}))
    MatchedPolicy.add_member(:matched_statements, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedStatementList, name: "matchedStatements"))
    MatchedPolicy.type = Types::MatchedPolicy
    MatchedPolicyList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedPolicy, name: "member"))
    MatchedStatement.add_member(:sid, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "sid"))
    MatchedStatement.add_member(:evaluated_effect, ::Smithy::Schema::Shapes::MemberShape.new(target: StatementEffect, name: "evaluatedEffect"))
    MatchedStatement.type = Types::MatchedStatement
    MatchedStatementList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: MatchedStatement, name: "member"))
    PolicyInfo.add_member(:type, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyType, name: "type"))
    PolicyInfo.add_member(:inline, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Boolean, name: "inline"))
    PolicyInfo.add_member(:uri, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "uri"))
    PolicyInfo.add_member(:attached_to, ::Smithy::Schema::Shapes::MemberShape.new(target: AttachedToList, name: "attachedTo"))
    PolicyInfo.type = Types::PolicyInfo
    PolicyInfoList.add_member(:member, ::Smithy::Schema::Shapes::MemberShape.new(target: PolicyInfo, name: "member"))
    PolicyType.add_member(:identity_based_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "IDENTITY_BASED_POLICY", traits: {"smithy.api#enumValue" => "IDENTITY_BASED_POLICY"}))
    PolicyType.add_member(:resource_based_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_BASED_POLICY", traits: {"smithy.api#enumValue" => "RESOURCE_BASED_POLICY"}))
    PolicyType.add_member(:permissions_boundary, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "PERMISSIONS_BOUNDARY", traits: {"smithy.api#enumValue" => "PERMISSIONS_BOUNDARY"}))
    PolicyType.add_member(:session_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SESSION_POLICY", traits: {"smithy.api#enumValue" => "SESSION_POLICY"}))
    PolicyType.add_member(:service_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "SERVICE_CONTROL_POLICY", traits: {"smithy.api#enumValue" => "SERVICE_CONTROL_POLICY"}))
    PolicyType.add_member(:resource_control_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "RESOURCE_CONTROL_POLICY", traits: {"smithy.api#enumValue" => "RESOURCE_CONTROL_POLICY"}))
    PolicyType.add_member(:vpc_endpoint_policy, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "VPC_ENDPOINT_POLICY", traits: {"smithy.api#enumValue" => "VPC_ENDPOINT_POLICY"}))
    ResourceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    StatementEffect.add_member(:allow, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "ALLOW", traits: {"smithy.api#enumValue" => "ALLOW"}))
    StatementEffect.add_member(:deny, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::Unit, name: "DENY", traits: {"smithy.api#enumValue" => "DENY"}))
    ValidationException.add_member(:message, ::Smithy::Schema::Shapes::MemberShape.new(target: ::Smithy::Schema::Shapes::Prelude::String, name: "message", traits: {"smithy.api#required" => {}}))
    ValidationException.type = Types::ValidationException

    AuthRequestService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.iamtoolbox#AuthRequestService"
      service.name = "AuthRequestService"
      service.version = "2018-05-10"
      service.traits = {"aws.api#service" => {"sdkId" => "IAM Toolbox", "arnNamespace" => "iam", "cloudTrailEventSource" => "iam-toolbox.amazonaws.com", "endpointPrefix" => "iam-toolbox"}, "aws.auth#sigv4" => {"name" => "iam"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {"additionalAllowedHeaders" => ["*", "authorization", "content-type", "x-amz-date", "x-amz-security-token", "x-amz-user-agent", "amz-sdk-invocation-id", "amz-sdk-request"]}, "smithy.api#title" => "IAM Toolbox (Preview)", "smithy.rules#endpointBdd" => {"version" => "1.1", "parameters" => {"Region" => {"builtIn" => "AWS::Region", "required" => false, "documentation" => "The AWS region used to dispatch the request.", "type" => "string"}, "UseDualStack" => {"builtIn" => "AWS::UseDualStack", "required" => true, "default" => false, "documentation" => "When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.", "type" => "boolean"}, "UseFIPS" => {"builtIn" => "AWS::UseFIPS", "required" => true, "default" => false, "documentation" => "When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.", "type" => "boolean"}, "Endpoint" => {"builtIn" => "SDK::Endpoint", "required" => false, "documentation" => "Override the endpoint used to send this request", "type" => "string"}}, "conditions" => [{"fn" => "isSet", "argv" => [{"ref" => "Endpoint"}]}, {"fn" => "isSet", "argv" => [{"ref" => "Region"}]}, {"fn" => "aws.partition", "argv" => [{"ref" => "Region"}], "assign" => "PartitionResult"}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseFIPS"}, true]}, {"fn" => "booleanEquals", "argv" => [{"ref" => "UseDualStack"}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsDualStack"]}, true]}, {"fn" => "booleanEquals", "argv" => [{"fn" => "getAttr", "argv" => [{"ref" => "PartitionResult"}, "supportsFIPS"]}, true]}], "results" => [{"conditions" => [], "error" => "Invalid Configuration: FIPS and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "error" => "Invalid Configuration: Dualstack and custom endpoint are not supported", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => {"ref" => "Endpoint"}, "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "endpoint" => {"url" => "https://iam-toolbox-fips.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS and DualStack are enabled, but this partition does not support one or both", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://iam-toolbox-fips.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "FIPS is enabled but this partition does not support FIPS", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://iam-toolbox.{Region}.{PartitionResult#dualStackDnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "DualStack is enabled but this partition does not support DualStack", "type" => "error"}, {"conditions" => [], "endpoint" => {"url" => "https://iam-toolbox.{Region}.{PartitionResult#dnsSuffix}", "properties" => {}, "headers" => {}}, "type" => "endpoint"}, {"conditions" => [], "error" => "Invalid Configuration: Missing Region", "type" => "error"}], "root" => 2, "nodeCount" => 13, "nodes" => "/////wAAAAH/////AAAAAAAAAAwAAAADAAAAAQAAAAQF9eELAAAAAgAAAAUF9eELAAAAAwAAAAgAAAAGAAAABAAAAAcF9eEKAAAABQX14QgF9eEJAAAABAAAAAoAAAAJAAAABgX14QYF9eEHAAAABQAAAAsF9eEFAAAABgX14QQF9eEFAAAAAwX14QEAAAANAAAABAX14QIF9eED"}}
      service.add_operation(:get_request_authorization_details, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.iamtoolbox#GetRequestAuthorizationDetails"
        operation.name = "GetRequestAuthorizationDetails"
        operation.input = GetRequestAuthorizationDetailsInput
        operation.output = GetRequestAuthorizationDetailsOutput
        operation.errors << AccessDeniedException
        operation.errors << InternalServerException
        operation.errors << ResourceNotFoundException
        operation.errors << ValidationException
        operation.traits = {"smithy.api#http" => {"method" => "GET", "uri" => "/authorization-details/{authorizationId}"}, "smithy.api#readonly" => {}, "smithy.test#smokeTests" => [{"id" => "GetRequestAuthorizationDetailsInvalidId", "params" => {"authorizationId" => "aaaaaaaaaaaaaaaaaaaa"}, "expect" => {"failure" => {"errorId" => "com.amazonaws.iamtoolbox#ValidationException"}}, "vendorParamsShape" => "aws.test#AwsVendorParams", "vendorParams" => {"region" => "us-east-1"}}]}
        operation[:paginator] = Paginators::GetRequestAuthorizationDetails.new
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
