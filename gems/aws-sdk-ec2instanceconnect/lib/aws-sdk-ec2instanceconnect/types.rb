# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::EC2InstanceConnect
  module Types

    # Indicates that either your AWS credentials are invalid or you do not
    # have access to the EC2 instance.
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

    # Indicates that the instance requested was not found in the given zone.
    # Check that you have provided a valid instance ID and the correct zone.
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

    # Indicates that you provided bad input. Ensure you have a valid
    # instance ID, the correct zone, and a valid SSH public key.
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

    # @note When making an API call, you may pass SendSSHPublicKeyRequest
    #   data as a hash:
    #
    #       {
    #         instance_id: "InstanceId", # required
    #         instance_os_user: "InstanceOSUser", # required
    #         ssh_public_key: "SSHPublicKey", # required
    #         availability_zone: "AvailabilityZone", # required
    #       }
    #
    # @!attribute [rw] instance_id
    #   The EC2 instance you wish to publish the SSH key to.
    #   @return [String]
    #
    # @!attribute [rw] instance_os_user
    #   The OS user on the EC2 instance whom the key may be used to
    #   authenticate as.
    #   @return [String]
    #
    # @!attribute [rw] ssh_public_key
    #   The public key to be published to the instance. To use it after
    #   publication you must have the matching private key.
    #   @return [String]
    #
    # @!attribute [rw] availability_zone
    #   The availability zone the EC2 instance was launched in.
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
    #   The request ID as logged by EC2 Connect. Please provide this when
    #   contacting AWS Support.
    #   @return [String]
    #
    # @!attribute [rw] success
    #   Indicates request success.
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

    # Indicates that the service encountered an error. Follow the message's
    # instructions and try again.
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

    # Indicates you have been making requests too frequently and have been
    # throttled. Wait for a while and try again. If higher call volume is
    # warranted contact AWS Support.
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
