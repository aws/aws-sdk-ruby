# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::IAMToolbox
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AttachedTo = Shapes::StructureShape.new(name: 'AttachedTo')
    AttachedToArnString = Shapes::StringShape.new(name: 'AttachedToArnString')
    AttachedToList = Shapes::ListShape.new(name: 'AttachedToList')
    AuthorizationContext = Shapes::MapShape.new(name: 'AuthorizationContext')
    Boolean = Shapes::BooleanShape.new(name: 'Boolean')
    Document = Shapes::DocumentShape.new(name: 'Document', document: true)
    EvaluatedEffect = Shapes::StringShape.new(name: 'EvaluatedEffect')
    Evaluation = Shapes::StructureShape.new(name: 'Evaluation')
    Evaluations = Shapes::ListShape.new(name: 'Evaluations')
    GetRequestAuthorizationDetailsInput = Shapes::StructureShape.new(name: 'GetRequestAuthorizationDetailsInput')
    GetRequestAuthorizationDetailsInputAuthorizationIdString = Shapes::StringShape.new(name: 'GetRequestAuthorizationDetailsInputAuthorizationIdString')
    GetRequestAuthorizationDetailsOutput = Shapes::StructureShape.new(name: 'GetRequestAuthorizationDetailsOutput')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    MatchedPolicy = Shapes::StructureShape.new(name: 'MatchedPolicy')
    MatchedPolicyList = Shapes::ListShape.new(name: 'MatchedPolicyList')
    MatchedStatement = Shapes::StructureShape.new(name: 'MatchedStatement')
    MatchedStatementList = Shapes::ListShape.new(name: 'MatchedStatementList')
    PolicyInfo = Shapes::StructureShape.new(name: 'PolicyInfo')
    PolicyInfoList = Shapes::ListShape.new(name: 'PolicyInfoList')
    PolicyType = Shapes::StringShape.new(name: 'PolicyType')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    StatementEffect = Shapes::StringShape.new(name: 'StatementEffect')
    String = Shapes::StringShape.new(name: 'String')
    ValidationException = Shapes::StructureShape.new(name: 'ValidationException')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AttachedTo.add_member(:arn, Shapes::ShapeRef.new(shape: AttachedToArnString, location_name: "arn"))
    AttachedTo.struct_class = Types::AttachedTo

    AttachedToList.member = Shapes::ShapeRef.new(shape: AttachedTo)

    AuthorizationContext.key = Shapes::ShapeRef.new(shape: String)
    AuthorizationContext.value = Shapes::ShapeRef.new(shape: Document)

    Evaluation.add_member(:action, Shapes::ShapeRef.new(shape: String, required: true, location_name: "action"))
    Evaluation.add_member(:resource, Shapes::ShapeRef.new(shape: String, required: true, location_name: "resource"))
    Evaluation.add_member(:context, Shapes::ShapeRef.new(shape: AuthorizationContext, location_name: "context"))
    Evaluation.add_member(:evaluated_effect, Shapes::ShapeRef.new(shape: EvaluatedEffect, location_name: "evaluatedEffect"))
    Evaluation.add_member(:matched_policies, Shapes::ShapeRef.new(shape: MatchedPolicyList, location_name: "matchedPolicies"))
    Evaluation.struct_class = Types::Evaluation

    Evaluations.member = Shapes::ShapeRef.new(shape: Evaluation)

    GetRequestAuthorizationDetailsInput.add_member(:authorization_id, Shapes::ShapeRef.new(shape: GetRequestAuthorizationDetailsInputAuthorizationIdString, required: true, location: "uri", location_name: "authorizationId"))
    GetRequestAuthorizationDetailsInput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location: "querystring", location_name: "nextToken"))
    GetRequestAuthorizationDetailsInput.struct_class = Types::GetRequestAuthorizationDetailsInput

    GetRequestAuthorizationDetailsOutput.add_member(:request_context, Shapes::ShapeRef.new(shape: AuthorizationContext, required: true, location_name: "requestContext"))
    GetRequestAuthorizationDetailsOutput.add_member(:evaluations, Shapes::ShapeRef.new(shape: Evaluations, required: true, location_name: "evaluations"))
    GetRequestAuthorizationDetailsOutput.add_member(:policies, Shapes::ShapeRef.new(shape: PolicyInfoList, required: true, location_name: "policies"))
    GetRequestAuthorizationDetailsOutput.add_member(:next_token, Shapes::ShapeRef.new(shape: String, location_name: "nextToken"))
    GetRequestAuthorizationDetailsOutput.struct_class = Types::GetRequestAuthorizationDetailsOutput

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    MatchedPolicy.add_member(:uri, Shapes::ShapeRef.new(shape: String, required: true, location_name: "uri"))
    MatchedPolicy.add_member(:matched_statements, Shapes::ShapeRef.new(shape: MatchedStatementList, location_name: "matchedStatements"))
    MatchedPolicy.struct_class = Types::MatchedPolicy

    MatchedPolicyList.member = Shapes::ShapeRef.new(shape: MatchedPolicy)

    MatchedStatement.add_member(:sid, Shapes::ShapeRef.new(shape: String, location_name: "sid"))
    MatchedStatement.add_member(:evaluated_effect, Shapes::ShapeRef.new(shape: StatementEffect, location_name: "evaluatedEffect"))
    MatchedStatement.struct_class = Types::MatchedStatement

    MatchedStatementList.member = Shapes::ShapeRef.new(shape: MatchedStatement)

    PolicyInfo.add_member(:type, Shapes::ShapeRef.new(shape: PolicyType, location_name: "type"))
    PolicyInfo.add_member(:inline, Shapes::ShapeRef.new(shape: Boolean, location_name: "inline"))
    PolicyInfo.add_member(:uri, Shapes::ShapeRef.new(shape: String, location_name: "uri"))
    PolicyInfo.add_member(:attached_to, Shapes::ShapeRef.new(shape: AttachedToList, location_name: "attachedTo"))
    PolicyInfo.struct_class = Types::PolicyInfo

    PolicyInfoList.member = Shapes::ShapeRef.new(shape: PolicyInfo)

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ValidationException.add_member(:message, Shapes::ShapeRef.new(shape: String, required: true, location_name: "message"))
    ValidationException.struct_class = Types::ValidationException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-05-10"

      api.metadata = {
        "apiVersion" => "2018-05-10",
        "auth" => ["aws.auth#sigv4"],
        "endpointPrefix" => "iam-toolbox",
        "protocol" => "rest-json",
        "protocols" => ["rest-json"],
        "serviceFullName" => "IAM Toolbox (Preview)",
        "serviceId" => "IAM Toolbox",
        "signatureVersion" => "v4",
        "signingName" => "iam",
        "uid" => "iam-toolbox-2018-05-10",
      }

      api.add_operation(:get_request_authorization_details, Seahorse::Model::Operation.new.tap do |o|
        o.name = "GetRequestAuthorizationDetails"
        o.http_method = "GET"
        o.http_request_uri = "/authorization-details/{authorizationId}"
        o.input = Shapes::ShapeRef.new(shape: GetRequestAuthorizationDetailsInput)
        o.output = Shapes::ShapeRef.new(shape: GetRequestAuthorizationDetailsOutput)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ValidationException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o[:pager] = Aws::Pager.new(
          tokens: {
            "next_token" => "next_token"
          }
        )
      end)
    end

  end
end
