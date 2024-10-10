# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::MarketplaceReporting
  module Types

    # You do not have sufficient access to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-reporting-2018-05-10/AccessDeniedException AWS API Documentation
    #
    class AccessDeniedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # The request is malformed, or it contains an error such as an invalid
    # parameter. Ensure the request has all required parameters.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-reporting-2018-05-10/BadRequestException AWS API Documentation
    #
    class BadRequestException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] dashboard_identifier
    #   The ARN of the requested dashboard.
    #   @return [String]
    #
    # @!attribute [rw] embedding_domains
    #   Fully qualified domains that you add to the allow list for access to
    #   the generated URL that is then embedded. You can list up to two
    #   domains or subdomains in each API call. To include all subdomains
    #   under a specific domain, use `*`. For example,
    #   `https://*.amazon.com` includes all subdomains under
    #   `https://aws.amazon.com`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-reporting-2018-05-10/GetBuyerDashboardInput AWS API Documentation
    #
    class GetBuyerDashboardInput < Struct.new(
      :dashboard_identifier,
      :embedding_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # @!attribute [rw] embed_url
    #   The dashboard's embedding URL.
    #   @return [String]
    #
    # @!attribute [rw] dashboard_identifier
    #   The ARN of the returned dashboard.
    #   @return [String]
    #
    # @!attribute [rw] embedding_domains
    #   The fully qualified domains specified in the request. The domains
    #   enable access to the generated URL that is then embedded. You can
    #   list up to two domains or subdomains in each API call. To include
    #   all subdomains under a specific domain, use `*`. For example,
    #   `https://*.amazon.com` includes all subdomains under
    #   `https://aws.amazon.com`.
    #   @return [Array<String>]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-reporting-2018-05-10/GetBuyerDashboardOutput AWS API Documentation
    #
    class GetBuyerDashboardOutput < Struct.new(
      :embed_url,
      :dashboard_identifier,
      :embedding_domains)
      SENSITIVE = []
      include Aws::Structure
    end

    # The operation failed due to a server error.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-reporting-2018-05-10/InternalServerException AWS API Documentation
    #
    class InternalServerException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

    # You do not have permission to perform this action.
    #
    # @!attribute [rw] message
    #   @return [String]
    #
    # @see http://docs.aws.amazon.com/goto/WebAPI/marketplace-reporting-2018-05-10/UnauthorizedException AWS API Documentation
    #
    class UnauthorizedException < Struct.new(
      :message)
      SENSITIVE = []
      include Aws::Structure
    end

  end
end

