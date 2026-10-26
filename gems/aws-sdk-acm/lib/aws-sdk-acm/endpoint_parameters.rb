# frozen_string_literal: true

# This is generated code!

module Aws::ACM
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute region
  #   The AWS region to send requests to.
  #   @return [String]
  # @!attribute endpoint
  #   Override the endpoint used to send requests.
  #   @return [String]
  # @!attribute use_fips
  #   Use FIPS endpoints.
  #   @return [Boolean]
  # @!attribute use_dual_stack
  #   Use dual-stack endpoints.
  #   @return [Boolean]
  # @!attribute service_type
  #   The service type: ACM or ACM-ACME. Injected via @staticContextParams.
  #   @return [String]
  EndpointParameters = Struct.new(
    nil,
    :region,
    :endpoint,
    :use_fips,
    :use_dual_stack,
    :service_type,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.region = options.fetch(:region, nil)
      self.endpoint = options.fetch(:endpoint, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.use_dual_stack = options.fetch(:use_dual_stack, false)
      self.service_type = options.fetch(:service_type, nil)
      raise ArgumentError, "missing required parameter: :region" if region.nil?
      raise ArgumentError, "missing required parameter: :service_type" if service_type.nil?
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :add_tags_to_certificate
          {
            service_type: "ACM",
          }
        when :create_acme_domain_validation
          {
            service_type: "ACM-ACME",
          }
        when :create_acme_endpoint
          {
            service_type: "ACM-ACME",
          }
        when :create_acme_external_account_binding
          {
            service_type: "ACM-ACME",
          }
        when :delete_acme_domain_validation
          {
            service_type: "ACM-ACME",
          }
        when :delete_acme_endpoint
          {
            service_type: "ACM-ACME",
          }
        when :delete_acme_external_account_binding
          {
            service_type: "ACM-ACME",
          }
        when :delete_certificate
          {
            service_type: "ACM",
          }
        when :describe_acme_account
          {
            service_type: "ACM-ACME",
          }
        when :describe_acme_domain_validation
          {
            service_type: "ACM-ACME",
          }
        when :describe_acme_endpoint
          {
            service_type: "ACM-ACME",
          }
        when :describe_acme_external_account_binding
          {
            service_type: "ACM-ACME",
          }
        when :describe_certificate
          {
            service_type: "ACM",
          }
        when :export_certificate
          {
            service_type: "ACM",
          }
        when :get_account_configuration
          {
            service_type: "ACM",
          }
        when :get_acme_external_account_binding_credentials
          {
            service_type: "ACM-ACME",
          }
        when :get_certificate
          {
            service_type: "ACM",
          }
        when :import_certificate
          {
            service_type: "ACM",
          }
        when :list_acme_accounts
          {
            service_type: "ACM-ACME",
          }
        when :list_acme_domain_validations
          {
            service_type: "ACM-ACME",
          }
        when :list_acme_endpoints
          {
            service_type: "ACM-ACME",
          }
        when :list_acme_external_account_bindings
          {
            service_type: "ACM-ACME",
          }
        when :list_certificate_domain_validations
          {
            service_type: "ACM",
          }
        when :list_certificates
          {
            service_type: "ACM",
          }
        when :list_tags_for_certificate
          {
            service_type: "ACM",
          }
        when :list_tags_for_resource
          {
            service_type: "ACM",
          }
        when :put_account_configuration
          {
            service_type: "ACM",
          }
        when :remove_tags_from_certificate
          {
            service_type: "ACM",
          }
        when :renew_certificate
          {
            service_type: "ACM",
          }
        when :request_certificate
          {
            service_type: "ACM",
          }
        when :resend_validation_email
          {
            service_type: "ACM",
          }
        when :revoke_acme_account
          {
            service_type: "ACM-ACME",
          }
        when :revoke_acme_external_account_binding
          {
            service_type: "ACM-ACME",
          }
        when :revoke_certificate
          {
            service_type: "ACM",
          }
        when :search_certificates
          {
            service_type: "ACM",
          }
        when :tag_resource
          {
            service_type: "ACM",
          }
        when :untag_resource
          {
            service_type: "ACM",
          }
        when :update_acme_domain_validation
          {
            service_type: "ACM-ACME",
          }
        when :update_acme_endpoint
          {
            service_type: "ACM-ACME",
          }
        when :update_certificate_options
          {
            service_type: "ACM",
          }
        else
          {}
        end

      new({
        region: config.region,
        endpoint: config.endpoint,
        use_fips: config.use_fips_endpoint,
        use_dual_stack: config.use_dualstack_endpoint,
        service_type: config.service_type,
      }.merge(operation_params).compact)
    end
  end
end
