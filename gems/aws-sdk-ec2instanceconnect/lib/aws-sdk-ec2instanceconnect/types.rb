# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2InstanceConnect
  module Types

    # Either your AWS credentials are not valid or you do not have access to
    # the EC2 instance.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/AuthException AWS API Documentation
    #
    class AuthException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The specified instance was not found.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/EC2InstanceNotFoundException AWS API Documentation
    #
    class EC2InstanceNotFoundException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to connect because the instance is not in a valid state.
    # Connecting to a stopped or terminated instance is not supported. If
    # the instance is stopped, start your instance, and try to connect
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/EC2InstanceStateInvalidException AWS API Documentation
    #
    class EC2InstanceStateInvalidException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance type is not supported for connecting via the serial
    # console. Only Nitro instance types are currently supported.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/EC2InstanceTypeInvalidException AWS API Documentation
    #
    class EC2InstanceTypeInvalidException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance is currently unavailable. Wait a few minutes and try
    # again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/EC2InstanceUnavailableException AWS API Documentation
    #
    class EC2InstanceUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # One of the parameters is not valid.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/InvalidArgsException AWS API Documentation
    #
    class InvalidArgsException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] instance_os_user
    #   The OS user on the EC2 instance for whom the key can be used to
    #   authenticate.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The public key material. To use the public key, you must have the
    #   matching private key.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The Availability Zone in which the EC2 instance was launched.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SendSSHPublicKeyRequest AWS API Documentation
    #
    class SendSSHPublicKeyRequest < Struct.new(
      :instance_id,
      :instance_os_user,
      :ssh_public_key,
      :availability_zone)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The ID of the request. Please provide this ID when contacting AWS
    #   Support for assistance.
    #   @return [String]
    #
    # @!attribute [rw] success
    #   Is true if the request succeeds and an error otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SendSSHPublicKeyResponse AWS API Documentation
    #
    class SendSSHPublicKeyResponse < Struct.new(
      :request_id,
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] instance_id
    #   The ID of the EC2 instance.
    #   @return [String]
    #
    # @!attribute [rw] serial_port
    #   The serial port of the EC2 instance. Currently only port 0 is
    #   supported.
    #
    #   Default: 0
    #   @return [Integer]
    #
    # @!attribute [rw] ssh_public_key
    #   The public key material. To use the public key, you must have the
    #   matching private key. For information about the supported key
    #   formats and lengths, see [Requirements for key pairs][1] in the
    #   *Amazon EC2 User Guide*.
    #
    #
    #
    #   [1]: https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html#how-to-generate-your-own-key-and-import-it-to-aws
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SendSerialConsoleSSHPublicKeyRequest AWS API Documentation
    #
    class SendSerialConsoleSSHPublicKeyRequest < Struct.new(
      :instance_id,
      :serial_port,
      :ssh_public_key)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] request_id
    #   The ID of the request. Please provide this ID when contacting AWS
    #   Support for assistance.
    #   @return [String]
    #
    # @!attribute [rw] success
    #   Is true if the request succeeds and an error otherwise.
    #   @return [Boolean]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SendSerialConsoleSSHPublicKeyResponse AWS API Documentation
    #
    class SendSerialConsoleSSHPublicKeyResponse < Struct.new(
      :request_id,
      :success)
      SENSITIVE = []
      include Aws::Structure
    end

    # Your account is not authorized to use the EC2 Serial Console. To
    # authorize your account, run the EnableSerialConsoleAccess API. For
    # more information, see [EnableSerialConsoleAccess][1] in the *Amazon
    # EC2 API Reference*.
    #
    #
    #
    # [1]: https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_EnableSerialConsoleAccess.html
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SerialConsoleAccessDisabledException AWS API Documentation
    #
    class SerialConsoleAccessDisabledException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The instance currently has 1 active serial console session. Only 1
    # session is supported at a time.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SerialConsoleSessionLimitExceededException AWS API Documentation
    #
    class SerialConsoleSessionLimitExceededException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # Unable to start a serial console session. Please try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/SerialConsoleSessionUnavailableException AWS API Documentation
    #
    class SerialConsoleSessionUnavailableException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The service encountered an error. Follow the instructions in the error
    # message and try again.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/ServiceException AWS API Documentation
    #
    class ServiceException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The requests were made too frequently and have been throttled. Wait a
    # while and try again. To increase the limit on your request frequency,
    # contact AWS Support.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/ec2-instance-connect-2018-04-02/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end
