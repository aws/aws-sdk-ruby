# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::LambdaWeb
  module Types

    # You do not have sufficient permissions to perform this operation.
    #
    # @!attribute [rw] message
    #   A message describing the access denied error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The quotas that apply to web functions in your account in the current
    # AWS Region.
    #
    # @!attribute [rw] max_total_arm_v_cpus
    #   The maximum total number of Arm vCPUs that you can allocate across
    #   all of your web functions in the current AWS Region.
    #   @return [Integer]
    #
    # @!attribute [rw] max_total_rate_limit
    #   The maximum number of requests per second allowed across all of your
    #   web function endpoints in your account in the current AWS Region.
    #   @return [Integer]
    #
    # @!attribute [rw] max_revisions_per_function
    #   The maximum number of revisions that a single web function can have.
    #   @return [Integer]
    #
    # @!attribute [rw] max_endpoints_per_function
    #   The maximum number of endpoints that a single web function can have.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/AccountQuotas AWS API Documentation
    #
    class AccountQuotas < Struct.new(
      :max_total_arm_v_cpus,
      :max_total_rate_limit,
      :max_revisions_per_function,
      :max_endpoints_per_function)
      SENSITIVE = []
      include Aws::Structure
    end

    # Contains your current web function usage for the current AWS Region.
    #
    # @!attribute [rw] function_count
    #   The number of web functions in your account in the current AWS
    #   Region.
    #   @return [Integer]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/AccountUsage AWS API Documentation
    #
    class AccountUsage < Struct.new(
      :function_count)
      SENSITIVE = []
      include Aws::Structure
    end

    # @api private
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebAccountSettingsRequest AWS API Documentation
    #
    class GetWebAccountSettingsRequest < Aws::EmptyStructure; end

    # Contains your AWS Lambda Web Functions account quotas and usage for
    # the current AWS Region.
    #
    # @!attribute [rw] account_quotas
    #   The quotas that apply to web functions in your account in the
    #   current AWS Region.
    #   @return [Types::AccountQuotas]
    #
    # @!attribute [rw] account_usage
    #   The current web function usage for your account in the current AWS
    #   Region.
    #   @return [Types::AccountUsage]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/GetWebAccountSettingsResponse AWS API Documentation
    #
    class GetWebAccountSettingsResponse < Struct.new(
      :account_quotas,
      :account_usage)
      SENSITIVE = []
      include Aws::Structure
    end

    # An internal server error occurred. Try again later.
    #
    # @!attribute [rw] message
    #   A message describing the internal error.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request was throttled. Reduce the frequency of requests and try
    # again.
    #
    # @!attribute [rw] message
    #   A message describing the throttling error.
    #   @return [String]
    #
    # @!attribute [rw] retry_after_seconds
    #   The number of seconds to wait before retrying the request.
    #   @return [Integer]
    #
    # @!attribute [rw] service_code
    #   The service code of the throttled service.
    #   @return [String]
    #
    # @!attribute [rw] quota_code
    #   The quota code that was exceeded, if applicable.
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/lambda-web-2025-03-07/ThrottlingException AWS API Documentation
    #
    class ThrottlingException < Struct.new(
      :message,
      :retry_after_seconds,
      :service_code,
      :quota_code)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

