# frozen_string_literal: true

# This is generated code!

module Aws::EC2InstanceConnect
  # This module contains a schema composed of shapes used by the client.
  module Schema

    AuthException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#AuthException", name: "AuthException", traits: {"aws.protocols#awsQueryError" => {"code" => "Forbidden", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    AvailabilityZone = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ec2instanceconnect#AvailabilityZone", name: "AvailabilityZone", traits: {"smithy.api#length" => {"min" => 6, "max" => 32}, "smithy.api#pattern" => "^(\\w+-){2,3}\\d+\\w+$"})
    EC2InstanceNotFoundException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#EC2InstanceNotFoundException", name: "EC2InstanceNotFoundException", traits: {"aws.protocols#awsQueryError" => {"code" => "EC2InstanceNotFound", "httpResponseCode" => 404}, "smithy.api#error" => "client", "smithy.api#httpError" => 404})
    EC2InstanceStateInvalidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#EC2InstanceStateInvalidException", name: "EC2InstanceStateInvalidException", traits: {"aws.protocols#awsQueryError" => {"code" => "EC2InstanceStateInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EC2InstanceTypeInvalidException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#EC2InstanceTypeInvalidException", name: "EC2InstanceTypeInvalidException", traits: {"aws.protocols#awsQueryError" => {"code" => "EC2InstanceTypeInvalid", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    EC2InstanceUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#EC2InstanceUnavailableException", name: "EC2InstanceUnavailableException", traits: {"aws.protocols#awsQueryError" => {"code" => "EC2InstanceUnavailable", "httpResponseCode" => 503}, "smithy.api#error" => "server", "smithy.api#httpError" => 503})
    InstanceId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ec2instanceconnect#InstanceId", name: "InstanceId", traits: {"smithy.api#length" => {"min" => 10, "max" => 32}, "smithy.api#pattern" => "^i-[a-f0-9]+$"})
    InstanceOSUser = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ec2instanceconnect#InstanceOSUser", name: "InstanceOSUser", traits: {"smithy.api#length" => {"min" => 1, "max" => 32}, "smithy.api#pattern" => "^(^[A-Za-z_][A-Za-z0-9\\@\\._-]{0,30}[A-Za-z0-9\\$_-]?$)|(^(?=.{2,32}$)[0-9]{1,32}[A-Za-z\\@\\._-][A-Za-z0-9\\@\\._-]*[A-Za-z0-9\\$_-]?$)$"})
    InvalidArgsException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#InvalidArgsException", name: "InvalidArgsException", traits: {"aws.protocols#awsQueryError" => {"code" => "InvalidArguments", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    RequestId = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ec2instanceconnect#RequestId", name: "RequestId")
    SSHPublicKey = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ec2instanceconnect#SSHPublicKey", name: "SSHPublicKey", traits: {"smithy.api#length" => {"min" => 80, "max" => 4096}})
    SendSSHPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SendSSHPublicKeyRequest", name: "SendSSHPublicKeyRequest")
    SendSSHPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SendSSHPublicKeyResponse", name: "SendSSHPublicKeyResponse")
    SendSerialConsoleSSHPublicKeyRequest = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SendSerialConsoleSSHPublicKeyRequest", name: "SendSerialConsoleSSHPublicKeyRequest")
    SendSerialConsoleSSHPublicKeyResponse = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SendSerialConsoleSSHPublicKeyResponse", name: "SendSerialConsoleSSHPublicKeyResponse")
    SerialConsoleAccessDisabledException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SerialConsoleAccessDisabledException", name: "SerialConsoleAccessDisabledException", traits: {"aws.protocols#awsQueryError" => {"code" => "SerialConsoleAccessDisabled", "httpResponseCode" => 403}, "smithy.api#error" => "client", "smithy.api#httpError" => 403})
    SerialConsoleSessionLimitExceededException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SerialConsoleSessionLimitExceededException", name: "SerialConsoleSessionLimitExceededException", traits: {"aws.protocols#awsQueryError" => {"code" => "SerialConsoleSessionLimitExceeded", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SerialConsoleSessionUnavailableException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SerialConsoleSessionUnavailableException", name: "SerialConsoleSessionUnavailableException", traits: {"aws.protocols#awsQueryError" => {"code" => "SerialConsoleSessionUnavailable", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    SerialConsoleSessionUnsupportedException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#SerialConsoleSessionUnsupportedException", name: "SerialConsoleSessionUnsupportedException", traits: {"aws.protocols#awsQueryError" => {"code" => "SerialConsoleSessionUnsupported", "httpResponseCode" => 400}, "smithy.api#error" => "client", "smithy.api#httpError" => 400})
    SerialPort = ::Smithy::Schema::Shapes::IntegerShape.new(id: "com.amazonaws.ec2instanceconnect#SerialPort", name: "SerialPort", traits: {"smithy.api#default" => 0, "smithy.api#range" => {"min" => 0, "max" => 0}})
    ServiceException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#ServiceException", name: "ServiceException", traits: {"aws.protocols#awsQueryError" => {"code" => "InternalServerError", "httpResponseCode" => 500}, "smithy.api#error" => "server", "smithy.api#httpError" => 500})
    String = ::Smithy::Schema::Shapes::StringShape.new(id: "com.amazonaws.ec2instanceconnect#String", name: "String")
    Success = ::Smithy::Schema::Shapes::BooleanShape.new(id: "com.amazonaws.ec2instanceconnect#Success", name: "Success", traits: {"smithy.api#default" => false})
    ThrottlingException = ::Smithy::Schema::Shapes::StructureShape.new(id: "com.amazonaws.ec2instanceconnect#ThrottlingException", name: "ThrottlingException", traits: {"aws.protocols#awsQueryError" => {"code" => "TooManyRequests", "httpResponseCode" => 429}, "smithy.api#error" => "client", "smithy.api#httpError" => 429})

    AuthException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AuthException.type = Types::AuthException
    EC2InstanceNotFoundException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceNotFoundException.type = Types::EC2InstanceNotFoundException
    EC2InstanceStateInvalidException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceStateInvalidException.type = Types::EC2InstanceStateInvalidException
    EC2InstanceTypeInvalidException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceTypeInvalidException.type = Types::EC2InstanceTypeInvalidException
    EC2InstanceUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceUnavailableException.type = Types::EC2InstanceUnavailableException
    InvalidArgsException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidArgsException.type = Types::InvalidArgsException
    SendSSHPublicKeyRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId", traits: {"smithy.api#required" => {}}))
    SendSSHPublicKeyRequest.add_member(:instance_os_user, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceOSUser, location_name: "InstanceOSUser", traits: {"smithy.api#required" => {}}))
    SendSSHPublicKeyRequest.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSHPublicKey, location_name: "SSHPublicKey", traits: {"smithy.api#required" => {}}))
    SendSSHPublicKeyRequest.add_member(:availability_zone, ::Smithy::Schema::Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    SendSSHPublicKeyRequest.type = Types::SendSSHPublicKeyRequest
    SendSSHPublicKeyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    SendSSHPublicKeyResponse.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Success, location_name: "Success", traits: {"smithy.api#default" => false}))
    SendSSHPublicKeyResponse.type = Types::SendSSHPublicKeyResponse
    SendSerialConsoleSSHPublicKeyRequest.add_member(:instance_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: InstanceId, location_name: "InstanceId", traits: {"smithy.api#required" => {}}))
    SendSerialConsoleSSHPublicKeyRequest.add_member(:serial_port, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SerialPort, location_name: "SerialPort", traits: {"smithy.api#default" => 0}))
    SendSerialConsoleSSHPublicKeyRequest.add_member(:ssh_public_key, ::Smithy::Schema::Shapes::ShapeRef.new(shape: SSHPublicKey, location_name: "SSHPublicKey", traits: {"smithy.api#required" => {}}))
    SendSerialConsoleSSHPublicKeyRequest.type = Types::SendSerialConsoleSSHPublicKeyRequest
    SendSerialConsoleSSHPublicKeyResponse.add_member(:request_id, ::Smithy::Schema::Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    SendSerialConsoleSSHPublicKeyResponse.add_member(:success, ::Smithy::Schema::Shapes::ShapeRef.new(shape: Success, location_name: "Success", traits: {"smithy.api#default" => false}))
    SendSerialConsoleSSHPublicKeyResponse.type = Types::SendSerialConsoleSSHPublicKeyResponse
    SerialConsoleAccessDisabledException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleAccessDisabledException.type = Types::SerialConsoleAccessDisabledException
    SerialConsoleSessionLimitExceededException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleSessionLimitExceededException.type = Types::SerialConsoleSessionLimitExceededException
    SerialConsoleSessionUnavailableException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleSessionUnavailableException.type = Types::SerialConsoleSessionUnavailableException
    SerialConsoleSessionUnsupportedException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleSessionUnsupportedException.type = Types::SerialConsoleSessionUnsupportedException
    ServiceException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceException.type = Types::ServiceException
    ThrottlingException.add_member(:message, ::Smithy::Schema::Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.type = Types::ThrottlingException

    AWSEC2InstanceConnectService = ::Smithy::Schema::Shapes::ServiceShape.new do |service|
      service.id = "com.amazonaws.ec2instanceconnect#AWSEC2InstanceConnectService"
      service.name = "AWSEC2InstanceConnectService"
      service.version = "2018-04-02"
      service.traits = {"aws.api#service" => {"sdkId" => "EC2 Instance Connect", "arnNamespace" => "ec2-instance-connect", "cloudFormationName" => "EC2InstanceConnect", "cloudTrailEventSource" => "ec2instanceconnect.amazonaws.com", "endpointPrefix" => "ec2-instance-connect"}, "aws.auth#sigv4" => {"name" => "ec2-instance-connect"}, "aws.protocols#awsJson1_1" => {}, "smithy.api#title" => "AWS EC2 Instance Connect"}
      service.add_operation(:send_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ec2instanceconnect#SendSSHPublicKey"
        operation.name = "SendSSHPublicKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendSSHPublicKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendSSHPublicKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceStateInvalidException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
      end)
      service.add_operation(:send_serial_console_ssh_public_key, ::Smithy::Schema::Shapes::OperationShape.new do |operation|
        operation.id = "com.amazonaws.ec2instanceconnect#SendSerialConsoleSSHPublicKey"
        operation.name = "SendSerialConsoleSSHPublicKey"
        operation.input = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendSerialConsoleSSHPublicKeyRequest)
        operation.output = ::Smithy::Schema::Shapes::ShapeRef.new(shape: SendSerialConsoleSSHPublicKeyResponse)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: AuthException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceNotFoundException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceStateInvalidException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceTypeInvalidException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: EC2InstanceUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: InvalidArgsException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SerialConsoleAccessDisabledException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SerialConsoleSessionLimitExceededException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SerialConsoleSessionUnavailableException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: SerialConsoleSessionUnsupportedException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ServiceException)
        operation.errors << ::Smithy::Schema::Shapes::ShapeRef.new(shape: ThrottlingException)
        operation.traits = {}
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
