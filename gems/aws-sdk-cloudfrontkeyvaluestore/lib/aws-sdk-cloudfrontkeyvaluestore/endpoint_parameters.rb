# frozen_string_literal: true

# This is generated code!

module Aws::CloudFrontKeyValueStore
  # Endpoint parameters used to resolve endpoints per request.
  # @!attribute kvs_arn
  #   The ARN of the Key Value Store
  #   @return [String]
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #   @return [String]
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #   @return [Boolean]
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #   @return [String]
  EndpointParameters = Struct.new(
    :kvs_arn,
    :region,
    :use_fips,
    :endpoint,
    keyword_init: true
  ) do
    def initialize(options = {})
      self.kvs_arn = options.fetch(:kvs_arn, nil)
      self.region = options.fetch(:region, nil)
      self.use_fips = options.fetch(:use_fips, false)
      self.endpoint = options.fetch(:endpoint, nil)
    end

    # @api private
    def self.create(context)
      config = context.config
      params = context.params
      operation_params =
        case context.operation_name
        when :delete_key
          {
            kvs_arn: params[:kvs_arn],
          }
        when :describe_key_value_store
          {
            kvs_arn: params[:kvs_arn],
          }
        when :get_key
          {
            kvs_arn: params[:kvs_arn],
          }
        when :list_keys
          {
            kvs_arn: params[:kvs_arn],
          }
        when :put_key
          {
            kvs_arn: params[:kvs_arn],
          }
        when :update_keys
          {
            kvs_arn: params[:kvs_arn],
          }
        else
          {}
        end

      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        endpoint: config.endpoint,
      }.merge(operation_params).compact)
    end
  end
end
