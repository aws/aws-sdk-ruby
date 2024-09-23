# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


module Aws::EKSAuth
  # @api private
  module ClientApi

    include Seahorse::Model

    AccessDeniedException = Shapes::StructureShape.new(name: 'AccessDeniedException')
    AssumeRoleForPodIdentityRequest = Shapes::StructureShape.new(name: 'AssumeRoleForPodIdentityRequest')
    AssumeRoleForPodIdentityResponse = Shapes::StructureShape.new(name: 'AssumeRoleForPodIdentityResponse')
    AssumedRoleUser = Shapes::StructureShape.new(name: 'AssumedRoleUser')
    ClusterName = Shapes::StringShape.new(name: 'ClusterName')
    Credentials = Shapes::StructureShape.new(name: 'Credentials')
    ExpiredTokenException = Shapes::StructureShape.new(name: 'ExpiredTokenException')
    InternalServerException = Shapes::StructureShape.new(name: 'InternalServerException')
    InvalidParameterException = Shapes::StructureShape.new(name: 'InvalidParameterException')
    InvalidRequestException = Shapes::StructureShape.new(name: 'InvalidRequestException')
    InvalidTokenException = Shapes::StructureShape.new(name: 'InvalidTokenException')
    JwtToken = Shapes::StringShape.new(name: 'JwtToken')
    PodIdentityAssociation = Shapes::StructureShape.new(name: 'PodIdentityAssociation')
    ResourceNotFoundException = Shapes::StructureShape.new(name: 'ResourceNotFoundException')
    ServiceUnavailableException = Shapes::StructureShape.new(name: 'ServiceUnavailableException')
    String = Shapes::StringShape.new(name: 'String')
    Subject = Shapes::StructureShape.new(name: 'Subject')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')
    Timestamp = Shapes::TimestampShape.new(name: 'Timestamp')

    AccessDeniedException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    AccessDeniedException.struct_class = Types::AccessDeniedException

    AssumeRoleForPodIdentityRequest.add_member(:cluster_name, Shapes::ShapeRef.new(shape: ClusterName, required: true, location: "uri", location_name: "clusterName"))
    AssumeRoleForPodIdentityRequest.add_member(:token, Shapes::ShapeRef.new(shape: JwtToken, required: true, location_name: "token"))
    AssumeRoleForPodIdentityRequest.struct_class = Types::AssumeRoleForPodIdentityRequest

    AssumeRoleForPodIdentityResponse.add_member(:subject, Shapes::ShapeRef.new(shape: Subject, required: true, location_name: "subject"))
    AssumeRoleForPodIdentityResponse.add_member(:audience, Shapes::ShapeRef.new(shape: String, required: true, location_name: "audience"))
    AssumeRoleForPodIdentityResponse.add_member(:pod_identity_association, Shapes::ShapeRef.new(shape: PodIdentityAssociation, required: true, location_name: "podIdentityAssociation"))
    AssumeRoleForPodIdentityResponse.add_member(:assumed_role_user, Shapes::ShapeRef.new(shape: AssumedRoleUser, required: true, location_name: "assumedRoleUser"))
    AssumeRoleForPodIdentityResponse.add_member(:credentials, Shapes::ShapeRef.new(shape: Credentials, required: true, location_name: "credentials"))
    AssumeRoleForPodIdentityResponse.struct_class = Types::AssumeRoleForPodIdentityResponse

    AssumedRoleUser.add_member(:arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "arn"))
    AssumedRoleUser.add_member(:assume_role_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "assumeRoleId"))
    AssumedRoleUser.struct_class = Types::AssumedRoleUser

    Credentials.add_member(:session_token, Shapes::ShapeRef.new(shape: String, required: true, location_name: "sessionToken"))
    Credentials.add_member(:secret_access_key, Shapes::ShapeRef.new(shape: String, required: true, location_name: "secretAccessKey"))
    Credentials.add_member(:access_key_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "accessKeyId"))
    Credentials.add_member(:expiration, Shapes::ShapeRef.new(shape: Timestamp, required: true, location_name: "expiration"))
    Credentials.struct_class = Types::Credentials

    ExpiredTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ExpiredTokenException.struct_class = Types::ExpiredTokenException

    InternalServerException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InternalServerException.struct_class = Types::InternalServerException

    InvalidParameterException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidParameterException.struct_class = Types::InvalidParameterException

    InvalidRequestException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidRequestException.struct_class = Types::InvalidRequestException

    InvalidTokenException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    InvalidTokenException.struct_class = Types::InvalidTokenException

    PodIdentityAssociation.add_member(:association_arn, Shapes::ShapeRef.new(shape: String, required: true, location_name: "associationArn"))
    PodIdentityAssociation.add_member(:association_id, Shapes::ShapeRef.new(shape: String, required: true, location_name: "associationId"))
    PodIdentityAssociation.struct_class = Types::PodIdentityAssociation

    ResourceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ResourceNotFoundException.struct_class = Types::ResourceNotFoundException

    ServiceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ServiceUnavailableException.struct_class = Types::ServiceUnavailableException

    Subject.add_member(:namespace, Shapes::ShapeRef.new(shape: String, required: true, location_name: "namespace"))
    Subject.add_member(:service_account, Shapes::ShapeRef.new(shape: String, required: true, location_name: "serviceAccount"))
    Subject.struct_class = Types::Subject

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "message"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2023-11-26"

      api.metadata = {
        "apiVersion" => "2023-11-26",
        "endpointPrefix" => "eks-auth",
        "jsonVersion" => "1.1",
        "protocol" => "rest-json",
        "serviceFullName" => "Amazon EKS Auth",
        "serviceId" => "EKS Auth",
        "signatureVersion" => "v4",
        "signingName" => "eks-auth",
        "uid" => "eks-auth-2023-11-26",
      }

      api.add_operation(:assume_role_for_pod_identity, Seahorse::Model::Operation.new.tap do |o|
        o.name = "AssumeRoleForPodIdentity"
        o.http_method = "POST"
        o.http_request_uri = "/clusters/{clusterName}/assume-role-for-pod-identity"
        o.input = Shapes::ShapeRef.new(shape: AssumeRoleForPodIdentityRequest)
        o.output = Shapes::ShapeRef.new(shape: AssumeRoleForPodIdentityResponse)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidRequestException)
        o.errors << Shapes::ShapeRef.new(shape: AccessDeniedException)
        o.errors << Shapes::ShapeRef.new(shape: InternalServerException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidTokenException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidParameterException)
        o.errors << Shapes::ShapeRef.new(shape: ExpiredTokenException)
        o.errors << Shapes::ShapeRef.new(shape: ResourceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceUnavailableException)
      end)
    end

  end
end
