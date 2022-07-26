# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2InstanceConnect
  # @api private
  module ClientApi

    include Seahorse::Model

    AuthException = Shapes::StructureShape.new(name: 'AuthException')
    AvailabilityZone = Shapes::StringShape.new(name: 'AvailabilityZone')
    EC2InstanceNotFoundException = Shapes::StructureShape.new(name: 'EC2InstanceNotFoundException')
    EC2InstanceStateInvalidException = Shapes::StructureShape.new(name: 'EC2InstanceStateInvalidException')
    EC2InstanceTypeInvalidException = Shapes::StructureShape.new(name: 'EC2InstanceTypeInvalidException')
    EC2InstanceUnavailableException = Shapes::StructureShape.new(name: 'EC2InstanceUnavailableException')
    InstanceId = Shapes::StringShape.new(name: 'InstanceId')
    InstanceOSUser = Shapes::StringShape.new(name: 'InstanceOSUser')
    InvalidArgsException = Shapes::StructureShape.new(name: 'InvalidArgsException')
    RequestId = Shapes::StringShape.new(name: 'RequestId')
    SSHPublicKey = Shapes::StringShape.new(name: 'SSHPublicKey')
    SendSSHPublicKeyRequest = Shapes::StructureShape.new(name: 'SendSSHPublicKeyRequest')
    SendSSHPublicKeyResponse = Shapes::StructureShape.new(name: 'SendSSHPublicKeyResponse')
    SendSerialConsoleSSHPublicKeyRequest = Shapes::StructureShape.new(name: 'SendSerialConsoleSSHPublicKeyRequest')
    SendSerialConsoleSSHPublicKeyResponse = Shapes::StructureShape.new(name: 'SendSerialConsoleSSHPublicKeyResponse')
    SerialConsoleAccessDisabledException = Shapes::StructureShape.new(name: 'SerialConsoleAccessDisabledException')
    SerialConsoleSessionLimitExceededException = Shapes::StructureShape.new(name: 'SerialConsoleSessionLimitExceededException')
    SerialConsoleSessionUnavailableException = Shapes::StructureShape.new(name: 'SerialConsoleSessionUnavailableException')
    SerialPort = Shapes::IntegerShape.new(name: 'SerialPort')
    ServiceException = Shapes::StructureShape.new(name: 'ServiceException')
    String = Shapes::StringShape.new(name: 'String')
    Success = Shapes::BooleanShape.new(name: 'Success')
    ThrottlingException = Shapes::StructureShape.new(name: 'ThrottlingException')

    AuthException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    AuthException.struct_class = Types::AuthException

    EC2InstanceNotFoundException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceNotFoundException.struct_class = Types::EC2InstanceNotFoundException

    EC2InstanceStateInvalidException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceStateInvalidException.struct_class = Types::EC2InstanceStateInvalidException

    EC2InstanceTypeInvalidException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceTypeInvalidException.struct_class = Types::EC2InstanceTypeInvalidException

    EC2InstanceUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    EC2InstanceUnavailableException.struct_class = Types::EC2InstanceUnavailableException

    InvalidArgsException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    InvalidArgsException.struct_class = Types::InvalidArgsException

    SendSSHPublicKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SendSSHPublicKeyRequest.add_member(:instance_os_user, Shapes::ShapeRef.new(shape: InstanceOSUser, required: true, location_name: "InstanceOSUser"))
    SendSSHPublicKeyRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SSHPublicKey, required: true, location_name: "SSHPublicKey"))
    SendSSHPublicKeyRequest.add_member(:availability_zone, Shapes::ShapeRef.new(shape: AvailabilityZone, location_name: "AvailabilityZone"))
    SendSSHPublicKeyRequest.struct_class = Types::SendSSHPublicKeyRequest

    SendSSHPublicKeyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    SendSSHPublicKeyResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "Success"))
    SendSSHPublicKeyResponse.struct_class = Types::SendSSHPublicKeyResponse

    SendSerialConsoleSSHPublicKeyRequest.add_member(:instance_id, Shapes::ShapeRef.new(shape: InstanceId, required: true, location_name: "InstanceId"))
    SendSerialConsoleSSHPublicKeyRequest.add_member(:serial_port, Shapes::ShapeRef.new(shape: SerialPort, location_name: "SerialPort"))
    SendSerialConsoleSSHPublicKeyRequest.add_member(:ssh_public_key, Shapes::ShapeRef.new(shape: SSHPublicKey, required: true, location_name: "SSHPublicKey"))
    SendSerialConsoleSSHPublicKeyRequest.struct_class = Types::SendSerialConsoleSSHPublicKeyRequest

    SendSerialConsoleSSHPublicKeyResponse.add_member(:request_id, Shapes::ShapeRef.new(shape: RequestId, location_name: "RequestId"))
    SendSerialConsoleSSHPublicKeyResponse.add_member(:success, Shapes::ShapeRef.new(shape: Success, location_name: "Success"))
    SendSerialConsoleSSHPublicKeyResponse.struct_class = Types::SendSerialConsoleSSHPublicKeyResponse

    SerialConsoleAccessDisabledException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleAccessDisabledException.struct_class = Types::SerialConsoleAccessDisabledException

    SerialConsoleSessionLimitExceededException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleSessionLimitExceededException.struct_class = Types::SerialConsoleSessionLimitExceededException

    SerialConsoleSessionUnavailableException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    SerialConsoleSessionUnavailableException.struct_class = Types::SerialConsoleSessionUnavailableException

    ServiceException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ServiceException.struct_class = Types::ServiceException

    ThrottlingException.add_member(:message, Shapes::ShapeRef.new(shape: String, location_name: "Message"))
    ThrottlingException.struct_class = Types::ThrottlingException


    # @api private
    API = Seahorse::Model::Api.new.tap do |api|

      api.version = "2018-04-02"

      api.metadata = {
        "apiVersion" => "2018-04-02",
        "endpointPrefix" => "ec2-instance-connect",
        "jsonVersion" => "1.1",
        "protocol" => "json",
        "serviceAbbreviation" => "EC2 Instance Connect",
        "serviceFullName" => "AWS EC2 Instance Connect",
        "serviceId" => "EC2 Instance Connect",
        "signatureVersion" => "v4",
        "targetPrefix" => "AWSEC2InstanceConnectService",
        "uid" => "ec2-instance-connect-2018-04-02",
      }

      api.add_operation(:send_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendSSHPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendSSHPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: SendSSHPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceStateInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceUnavailableException)
      end)

      api.add_operation(:send_serial_console_ssh_public_key, Seahorse::Model::Operation.new.tap do |o|
        o.name = "SendSerialConsoleSSHPublicKey"
        o.http_method = "POST"
        o.http_request_uri = "/"
        o.input = Shapes::ShapeRef.new(shape: SendSerialConsoleSSHPublicKeyRequest)
        o.output = Shapes::ShapeRef.new(shape: SendSerialConsoleSSHPublicKeyResponse)
        o.errors << Shapes::ShapeRef.new(shape: AuthException)
        o.errors << Shapes::ShapeRef.new(shape: SerialConsoleAccessDisabledException)
        o.errors << Shapes::ShapeRef.new(shape: InvalidArgsException)
        o.errors << Shapes::ShapeRef.new(shape: ServiceException)
        o.errors << Shapes::ShapeRef.new(shape: ThrottlingException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceNotFoundException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceTypeInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: SerialConsoleSessionLimitExceededException)
        o.errors << Shapes::ShapeRef.new(shape: SerialConsoleSessionUnavailableException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceStateInvalidException)
        o.errors << Shapes::ShapeRef.new(shape: EC2InstanceUnavailableException)
      end)
    end

  end
end
