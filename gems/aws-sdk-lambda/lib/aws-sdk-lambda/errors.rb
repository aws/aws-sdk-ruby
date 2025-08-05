# frozen_string_literal: true

# This is generated code!

module Aws::Lambda
  # When this service returns an error response, the SDK constructs and raises an error.
  # These errors all extend Aws::Lambda::Errors::ServiceError < {Smithy::Client::ServiceError}
  #
  # You can rescue all errors using the ServiceError:
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Lambda::Errors::ServiceError
  #       # rescues all API errors
  #     end
  #
  # ## Request Context
  #
  # ServiceError objects have a {Smithy::Client::ServiceError#context #context} method
  # that returns information about the request that generated the error.
  # See {Smithy::Client::HandlerContext} for more information.
  #
  # ## Error Classes
  #
  # * {CodeSigningConfigNotFoundException}
  # * {CodeStorageExceededException}
  # * {CodeVerificationFailedException}
  # * {EC2AccessDeniedException}
  # * {EC2ThrottledException}
  # * {EC2UnexpectedException}
  # * {EFSIOException}
  # * {EFSMountConnectivityException}
  # * {EFSMountFailureException}
  # * {EFSMountTimeoutException}
  # * {ENILimitReachedException}
  # * {InvalidCodeSignatureException}
  # * {InvalidParameterValueException}
  # * {InvalidRequestContentException}
  # * {InvalidRuntimeException}
  # * {InvalidSecurityGroupIDException}
  # * {InvalidSubnetIDException}
  # * {InvalidZipFileException}
  # * {KMSAccessDeniedException}
  # * {KMSDisabledException}
  # * {KMSInvalidStateException}
  # * {KMSNotFoundException}
  # * {PolicyLengthExceededException}
  # * {PreconditionFailedException}
  # * {ProvisionedConcurrencyConfigNotFoundException}
  # * {RecursiveInvocationException}
  # * {RequestTooLargeException}
  # * {ResourceConflictException}
  # * {ResourceInUseException}
  # * {ResourceNotFoundException}
  # * {ResourceNotReadyException}
  # * {ServiceException}
  # * {SnapStartException}
  # * {SnapStartNotReadyException}
  # * {SnapStartTimeoutException}
  # * {SubnetIPAddressLimitReachedException}
  # * {TooManyRequestsException}
  # * {UnsupportedMediaTypeException}
  #
  # Additionally, error classes are dynamically generated for service errors based on the error code
  # if they are not defined above.
  module Errors
    extend Smithy::Client::DynamicErrors

    # <p>The specified code signing configuration does not exist.</p>
    class CodeSigningConfigNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::CodeSigningConfigNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Your Amazon Web Services account has exceeded its maximum total code size. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    class CodeStorageExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::CodeStorageExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The code signature failed one or more of the validation checks for signature mismatch or expiry, and the code signing policy is set to ENFORCE. Lambda blocks the deployment.</p>
    class CodeVerificationFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::CodeVerificationFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Need additional permissions to configure VPC settings.</p>
    class EC2AccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EC2AccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Amazon EC2 throttled Lambda during Lambda function initialization using the execution role provided for the function.</p>
    class EC2ThrottledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EC2ThrottledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda received an unexpected Amazon EC2 client exception while setting up for the Lambda function.</p>
    class EC2UnexpectedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EC2UnexpectedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end

      def ec2_error_code
        @data[:ec2_error_code]
      end
    end

    # <p>An error occurred when reading from or writing to a connected file system.</p>
    class EFSIOException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EFSIOException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The Lambda function couldn't make a network connection to the configured file system.</p>
    class EFSMountConnectivityException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EFSMountConnectivityException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The Lambda function couldn't mount the configured file system due to a permission or configuration issue.</p>
    class EFSMountFailureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EFSMountFailureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The Lambda function made a network connection to the configured file system, but the mount operation timed out.</p>
    class EFSMountTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::EFSMountTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't create an elastic network interface in the VPC, specified as part of Lambda function configuration, because the limit for network interfaces has been reached. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    class ENILimitReachedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ENILimitReachedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The code signature failed the integrity check. If the integrity check fails, then Lambda blocks deployment, even if the code signing policy is set to WARN.</p>
    class InvalidCodeSignatureException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidCodeSignatureException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>One of the parameters in the request is not valid.</p>
    class InvalidParameterValueException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidParameterValueException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request body could not be parsed as JSON, or a request header is invalid. For example, the 'x-amzn-RequestId' header is not a valid UUID string.</p>
    class InvalidRequestContentException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidRequestContentException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The runtime or runtime version specified is not supported.</p>
    class InvalidRuntimeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidRuntimeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The security group ID provided in the Lambda function VPC configuration is not valid.</p>
    class InvalidSecurityGroupIDException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidSecurityGroupIDException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The subnet ID provided in the Lambda function VPC configuration is not valid.</p>
    class InvalidSubnetIDException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidSubnetIDException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda could not unzip the deployment package.</p>
    class InvalidZipFileException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::InvalidZipFileException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't decrypt the environment variables because KMS access was denied. Check the Lambda function's KMS permissions.</p>
    class KMSAccessDeniedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::KMSAccessDeniedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't decrypt the environment variables because the KMS key used is disabled. Check the Lambda function's KMS key settings.</p>
    class KMSDisabledException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::KMSDisabledException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't decrypt the environment variables because the state of the KMS key used is not valid for Decrypt. Check the function's KMS key settings.</p>
    class KMSInvalidStateException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::KMSInvalidStateException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't decrypt the environment variables because the KMS key was not found. Check the function's KMS key settings.</p>
    class KMSNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::KMSNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The permissions policy for the resource is too large. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    class PolicyLengthExceededException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::PolicyLengthExceededException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The RevisionId provided does not match the latest RevisionId for the Lambda function or alias.</p> <ul> <li> <p> <b>For AddPermission and RemovePermission API operations:</b> Call <code>GetPolicy</code> to retrieve the latest RevisionId for your resource.</p> </li> <li> <p> <b>For all other API operations:</b> Call <code>GetFunction</code> or <code>GetAlias</code> to retrieve the latest RevisionId for your resource.</p> </li> </ul>
    class PreconditionFailedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::PreconditionFailedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The specified configuration does not exist.</p>
    class ProvisionedConcurrencyConfigNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ProvisionedConcurrencyConfigNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda has detected your function being invoked in a recursive loop with other Amazon Web Services resources and stopped your function's invocation.</p>
    class RecursiveInvocationException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::RecursiveInvocationException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The request payload exceeded the <code>Invoke</code> request body JSON input quota. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html">Lambda quotas</a>.</p>
    class RequestTooLargeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::RequestTooLargeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource already exists, or another operation is in progress.</p>
    class ResourceConflictException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ResourceConflictException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The operation conflicts with the resource's availability. For example, you tried to update an event source mapping in the CREATING state, or you tried to delete an event source mapping currently UPDATING.</p>
    class ResourceInUseException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ResourceInUseException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The resource specified in the request does not exist.</p>
    class ResourceNotFoundException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ResourceNotFoundException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The function is inactive and its VPC connection is no longer available. Wait for the VPC connection to reestablish and try again.</p>
    class ResourceNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ResourceNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The exception type.</p>
      def type
        @data[:type]
      end

      # <p>The exception message.</p>
      def message
        @data[:message]
      end
    end

    # <p>The Lambda service encountered an internal error.</p>
    class ServiceException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::ServiceException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The <code>afterRestore()</code> <a href="https://docs.aws.amazon.com/lambda/latest/dg/snapstart-runtime-hooks.html">runtime hook</a> encountered an error. For more information, check the Amazon CloudWatch logs.</p>
    class SnapStartException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::SnapStartException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda is initializing your function. You can invoke the function when the <a href="https://docs.aws.amazon.com/lambda/latest/dg/functions-states.html">function state</a> becomes <code>Active</code>.</p>
    class SnapStartNotReadyException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::SnapStartNotReadyException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't restore the snapshot within the timeout limit.</p>
    class SnapStartTimeoutException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::SnapStartTimeoutException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>Lambda couldn't set up VPC access for the Lambda function because one or more configured subnets has no available IP addresses.</p>
    class SubnetIPAddressLimitReachedException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::SubnetIPAddressLimitReachedException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end

    # <p>The request throughput limit was exceeded. For more information, see <a href="https://docs.aws.amazon.com/lambda/latest/dg/gettingstarted-limits.html#api-requests">Lambda quotas</a>.</p>
    class TooManyRequestsException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::TooManyRequestsException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      # <p>The number of seconds the caller should wait before retrying.</p>
      def retry_after_seconds
        @data[:retry_after_seconds]
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end

      def reason
        @data[:reason]
      end
    end

    # <p>The content type of the <code>Invoke</code> request body is not JSON.</p>
    class UnsupportedMediaTypeException < Smithy::Client::ServiceError
      # @param [Smithy::Client::HandlerContext] context
      # @param [Aws::Lambda::Types::UnsupportedMediaTypeException] data
      def initialize(context, data = Smithy::Schema::EmptyStructure.new)
        super(context, data)
      end

      def type
        @data[:type]
      end

      def message
        @data[:message]
      end
    end
  end
end
