# frozen_string_literal: true

# This is generated code!

module Aws::MarketplaceReporting
  # This module contains the types returned by client operations.
  module Types

    # <p>You do not have sufficient access to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class AccessDeniedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The request is malformed, or it contains an error such as an invalid parameter. Ensure the request has all required parameters.</p>
    # @!attribute message
    #   @return [String]
    class BadRequestException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute dashboard_identifier
    #   <p>The ARN of the requested dashboard.</p>
    #   @return [String]
    # @!attribute embedding_domains
    #   <p>Fully qualified domains that you add to the allow list for access to the generated URL that is then embedded. You can list up to two domains or subdomains in each API call.
    #         To include all subdomains under a specific domain, use <code>*</code>. For example, <code>https://*.amazon.com</code> includes all subdomains under 
    #         <code>https://aws.amazon.com</code>.</p>
    #   @return [Array<String>]
    class GetBuyerDashboardInput < Struct.new(
      nil,
      :dashboard_identifier,
      :embedding_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # @!attribute embed_url
    #   <p>The dashboard's embedding URL.</p>
    #   @return [String]
    # @!attribute dashboard_identifier
    #   <p>The ARN of the returned dashboard.</p>
    #   @return [String]
    # @!attribute embedding_domains
    #   <p>The fully qualified domains specified in the request. The domains enable access to the generated URL that is then embedded. You can list up to two domains or subdomains in each API call.
    #         To include all subdomains under a specific domain, use <code>*</code>. For example, <code>https://*.amazon.com</code> includes all subdomains under 
    #         <code>https://aws.amazon.com</code>.</p>
    #   @return [Array<String>]
    class GetBuyerDashboardOutput < Struct.new(
      nil,
      :embed_url,
      :dashboard_identifier,
      :embedding_domains,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>The operation failed due to a server error.</p>
    # @!attribute message
    #   @return [String]
    class InternalServerException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

    # <p>You do not have permission to perform this action.</p>
    # @!attribute message
    #   @return [String]
    class UnauthorizedException < Struct.new(
      nil,
      :message,
      keyword_init: true
    )
      include ::Smithy::Schema::Structure
    end

  end
end
