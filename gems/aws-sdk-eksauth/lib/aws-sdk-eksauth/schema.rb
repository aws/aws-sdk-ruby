# frozen_string_literal: true

# This is generated code!

module Aws::EKSAuth
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AccessDeniedException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#AccessDeniedException', name: 'AccessDeniedException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    AssumeRoleForPodIdentityRequest = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#AssumeRoleForPodIdentityRequest', name: 'AssumeRoleForPodIdentityRequest')
    AssumeRoleForPodIdentityResponse = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#AssumeRoleForPodIdentityResponse', name: 'AssumeRoleForPodIdentityResponse')
    AssumedRoleUser = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#AssumedRoleUser', name: 'AssumedRoleUser')
    ClusterName = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eksauth#ClusterName', name: 'ClusterName', traits: {"smithy.api#length" => {"min" => 1, "max" => 100}, "smithy.api#pattern" => "^[0-9A-Za-z][A-Za-z0-9\\-_]*$"})
    Credentials = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#Credentials', name: 'Credentials', traits: {"smithy.api#sensitive" => {}})
    ExpiredTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#ExpiredTokenException', name: 'ExpiredTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InternalServerException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#InternalServerException', name: 'InternalServerException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 500})
    InvalidParameterException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#InvalidParameterException', name: 'InvalidParameterException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidRequestException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#InvalidRequestException', name: 'InvalidRequestException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    InvalidTokenException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#InvalidTokenException', name: 'InvalidTokenException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 400})
    JwtToken = Smithy::Schema::Shapes::StringShape.new(id: 'com.amazonaws.eksauth#JwtToken', name: 'JwtToken', traits: {"smithy.api#length" => {"min" => 1}, "smithy.api#pattern" => "^[A-Za-z0-9-_=]+\\.[A-Za-z0-9-_=]+\\.[A-Za-z0-9-_=]+$", "smithy.api#sensitive" => {}})
    PodIdentityAssociation = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#PodIdentityAssociation', name: 'PodIdentityAssociation')
    ResourceNotFoundException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#ResourceNotFoundException', name: 'ResourceNotFoundException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 404})
    ServiceUnavailableException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#ServiceUnavailableException', name: 'ServiceUnavailableException', traits: {"smithy.api#error" => "server", "smithy.api#httpError" => 503})
    Subject = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#Subject', name: 'Subject')
    ThrottlingException = Smithy::Schema::Shapes::StructureShape.new(id: 'com.amazonaws.eksauth#ThrottlingException', name: 'ThrottlingException', traits: {"smithy.api#error" => "client", "smithy.api#httpError" => 429})

    AccessDeniedException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    AccessDeniedException.type = Types::AccessDeniedException
    AssumeRoleForPodIdentityRequest.add_member(:cluster_name, Smithy::Schema::Shapes::ShapeRef.new(shape: ClusterName, location_name: 'clusterName', traits: {"smithy.api#documentation" => "<p>The name of the cluster for the request.</p>", "smithy.api#httpLabel" => {}, "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityRequest.add_member(:token, Smithy::Schema::Shapes::ShapeRef.new(shape: JwtToken, location_name: 'token', traits: {"smithy.api#documentation" => "<p>The token of the Kubernetes service account for the pod.</p>", "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityRequest.type = Types::AssumeRoleForPodIdentityRequest
    AssumeRoleForPodIdentityResponse.add_member(:subject, Smithy::Schema::Shapes::ShapeRef.new(shape: Subject, location_name: 'subject', traits: {"smithy.api#documentation" => "<p>The name of the Kubernetes service account inside the cluster to associate the IAM\n            credentials with.</p>", "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityResponse.add_member(:audience, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'audience', traits: {"smithy.api#documentation" => "<p>The identity that is allowed to use the credentials. This value is always\n                <code>pods.eks.amazonaws.com</code>.</p>", "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityResponse.add_member(:pod_identity_association, Smithy::Schema::Shapes::ShapeRef.new(shape: PodIdentityAssociation, location_name: 'podIdentityAssociation', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) and ID of the EKS Pod Identity association.</p>", "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityResponse.add_member(:assumed_role_user, Smithy::Schema::Shapes::ShapeRef.new(shape: AssumedRoleUser, location_name: 'assumedRoleUser', traits: {"smithy.api#documentation" => "<p>An object with the permanent IAM role identity and the temporary session\n            name.</p>\n         <p>The ARN of the IAM role that the temporary credentials authenticate to.</p>\n         <p>The session name of the temporary session requested to STS. The value\n            is a unique identifier that contains the role ID, a colon (<code>:</code>), and the role\n            session name of the role that is being assumed. The role ID is generated by IAM when\n            the role is created. The role session name part of the value follows this format:\n                    <code>eks-<i>clustername</i>-<i>podname</i>-<i>random\n                    UUID</i>\n            </code>\n         </p>", "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityResponse.add_member(:credentials, Smithy::Schema::Shapes::ShapeRef.new(shape: Credentials, location_name: 'credentials', traits: {"smithy.api#documentation" => "<p>The <i>Amazon Web Services Signature Version 4</i> type of temporary\n            credentials.</p>", "smithy.api#required" => {}}))
    AssumeRoleForPodIdentityResponse.type = Types::AssumeRoleForPodIdentityResponse
    AssumedRoleUser.add_member(:arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'arn', traits: {"smithy.api#documentation" => "<p>The ARN of the IAM role that the temporary credentials authenticate to.</p>", "smithy.api#required" => {}}))
    AssumedRoleUser.add_member(:assume_role_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'assumeRoleId', traits: {"smithy.api#documentation" => "<p>The session name of the temporary session requested to STS. The value\n            is a unique identifier that contains the role ID, a colon (<code>:</code>), and the role\n            session name of the role that is being assumed. The role ID is generated by IAM when\n            the role is created. The role session name part of the value follows this format:\n                    <code>eks-<i>clustername</i>-<i>podname</i>-<i>random\n                    UUID</i>\n            </code>\n         </p>", "smithy.api#required" => {}}))
    AssumedRoleUser.type = Types::AssumedRoleUser
    Credentials.add_member(:session_token, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'sessionToken', traits: {"smithy.api#documentation" => "<p>The token that applications inside the pods must pass to any service API to use the\n            temporary credentials.</p>", "smithy.api#required" => {}}))
    Credentials.add_member(:secret_access_key, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'secretAccessKey', traits: {"smithy.api#documentation" => "<p>The secret access key that applications inside the pods use to sign requests.</p>", "smithy.api#required" => {}}))
    Credentials.add_member(:access_key_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'accessKeyId', traits: {"smithy.api#documentation" => "<p>The access key ID that identifies the temporary security credentials.</p>", "smithy.api#required" => {}}))
    Credentials.add_member(:expiration, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::Timestamp, location_name: 'expiration', traits: {"smithy.api#documentation" => "<p>The Unix epoch timestamp in seconds when the current credentials expire.</p>", "smithy.api#required" => {}}))
    Credentials.type = Types::Credentials
    ExpiredTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ExpiredTokenException.type = Types::ExpiredTokenException
    InternalServerException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InternalServerException.type = Types::InternalServerException
    InvalidParameterException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidParameterException.type = Types::InvalidParameterException
    InvalidRequestException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidRequestException.type = Types::InvalidRequestException
    InvalidTokenException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    InvalidTokenException.type = Types::InvalidTokenException
    PodIdentityAssociation.add_member(:association_arn, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'associationArn', traits: {"smithy.api#documentation" => "<p>The Amazon Resource Name (ARN) of the EKS Pod Identity association.</p>", "smithy.api#required" => {}}))
    PodIdentityAssociation.add_member(:association_id, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'associationId', traits: {"smithy.api#documentation" => "<p>The ID of the association.</p>", "smithy.api#required" => {}}))
    PodIdentityAssociation.type = Types::PodIdentityAssociation
    ResourceNotFoundException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ResourceNotFoundException.type = Types::ResourceNotFoundException
    ServiceUnavailableException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ServiceUnavailableException.type = Types::ServiceUnavailableException
    Subject.add_member(:namespace, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'namespace', traits: {"smithy.api#documentation" => "<p>The name of the Kubernetes namespace inside the cluster to create the association in. The\n            service account and the pods that use the service account must be in this\n            namespace.</p>", "smithy.api#required" => {}}))
    Subject.add_member(:service_account, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'serviceAccount', traits: {"smithy.api#documentation" => "<p>The name of the Kubernetes service account inside the cluster to associate the IAM\n            credentials with.</p>", "smithy.api#required" => {}}))
    Subject.type = Types::Subject
    ThrottlingException.add_member(:message, Smithy::Schema::Shapes::ShapeRef.new(shape: Smithy::Schema::Shapes::Prelude::String, location_name: 'message'))
    ThrottlingException.type = Types::ThrottlingException

    EKSAuthFrontend = Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.eksauth#EKSAuthFrontend"
      service.name = "EKSAuthFrontend"
      service.version = "2023-11-26"
      service.traits = {"aws.api#service" => {"sdkId" => "EKS Auth", "arnNamespace" => "eks-auth", "endpointPrefix" => "eks-auth"}, "aws.auth#sigv4" => {"name" => "eks-auth"}, "aws.protocols#restJson1" => {}, "smithy.api#cors" => {}, "smithy.api#title" => "Amazon EKS Auth"}
      service.add_operation(:assume_role_for_pod_identity, Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.eksauth#AssumeRoleForPodIdentity"
        operation.name = "AssumeRoleForPodIdentity"
        operation.input = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeRoleForPodIdentityRequest)
        operation.output = Smithy::Schema::Shapes::ShapeRef.new(shape: AssumeRoleForPodIdentityResponse)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: AccessDeniedException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ExpiredTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InternalServerException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidParameterException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidRequestException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidTokenException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceUnavailableException)
        operation.errors << Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {"smithy.api#http" => {"code" => 200, "method" => "POST", "uri" => "/clusters/{clusterName}/assume-role-for-pod-identity"}}
      end)

    end

    class << self
      def type_registry
        return @type_registry if @type_registry

        shapes = constants.map { |sym| const_get(sym) }.select { |const| const.is_a?(Smithy::Schema::Shapes::StructureShape) }
        @type_registry = Smithy::Schema::TypeRegistry.new(shapes)
      end
    end
  end
end
