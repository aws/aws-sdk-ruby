# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3Control
  # Endpoint parameters used to influence endpoints per request.
  #
  # @!attribute region
  #   The AWS region used to dispatch the request.
  #
  #   @return [String]
  #
  # @!attribute use_fips
  #   When true, send this request to the FIPS-compliant regional endpoint. If the configured endpoint does not have a FIPS compliant endpoint, dispatching the request will return an error.
  #
  #   @return [Boolean]
  #
  # @!attribute use_dual_stack
  #   When true, use the dual-stack endpoint. If the configured endpoint does not support dual-stack, dispatching the request MAY return an error.
  #
  #   @return [Boolean]
  #
  # @!attribute endpoint
  #   Override the endpoint used to send this request
  #
  #   @return [String]
  #
  # @!attribute account_id
  #   The Account ID used to send the request. This is an optional parameter that will be set automatically for operations that require it.
  #
  #   @return [String]
  #
  # @!attribute requires_account_id
  #   Internal parameter for operations that require account id host prefix.
  #
  #   @return [Boolean]
  #
  # @!attribute outpost_id
  #   The Outpost ID.  Some operations have an optional OutpostId which should be used in endpoint construction.
  #
  #   @return [String]
  #
  # @!attribute bucket
  #   The S3 bucket used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 bucket.
  #
  #   @return [String]
  #
  # @!attribute access_point_name
  #   The S3 AccessPointName used to send the request. This is an optional parameter that will be set automatically for operations that are scoped to an S3 AccessPoint.
  #
  #   @return [String]
  #
  # @!attribute use_arn_region
  #   When an Access Point ARN is provided and this flag is enabled, the SDK MUST use the ARN&#39;s region when constructing the endpoint instead of the client&#39;s configured region.
  #
  #   @return [Boolean]
  #
  # @!attribute resource_arn
  #   The resource ARN included in the request.  Only set on TagResource, UntagResourceand ListTagsForResource
  #
  #   @return [String]
  #
  # @!attribute use_s3_express_control_endpoint
  #   Internal parameter to indicate whether S3Express operation should use control plane, (ex. ListDirectoryAccessPoints)
  #
  #   @return [Boolean]
  #
  EndpointParameters = Struct.new(
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    :account_id,
    :requires_account_id,
    :outpost_id,
    :bucket,
    :access_point_name,
    :use_arn_region,
    :resource_arn,
    :use_s3_express_control_endpoint,
  ) do
    include Aws::Structure

    # @api private
    class << self
      PARAM_MAP = {
        'Region' => :region,
        'UseFIPS' => :use_fips,
        'UseDualStack' => :use_dual_stack,
        'Endpoint' => :endpoint,
        'AccountId' => :account_id,
        'RequiresAccountId' => :requires_account_id,
        'OutpostId' => :outpost_id,
        'Bucket' => :bucket,
        'AccessPointName' => :access_point_name,
        'UseArnRegion' => :use_arn_region,
        'ResourceArn' => :resource_arn,
        'UseS3ExpressControlEndpoint' => :use_s3_express_control_endpoint,
      }.freeze
    end

    def initialize(options = {})
      self[:region] = options[:region]
      self[:use_fips] = options[:use_fips]
      self[:use_fips] = false if self[:use_fips].nil?
      self[:use_dual_stack] = options[:use_dual_stack]
      self[:use_dual_stack] = false if self[:use_dual_stack].nil?
      self[:endpoint] = options[:endpoint]
      self[:account_id] = options[:account_id]
      self[:requires_account_id] = options[:requires_account_id]
      self[:outpost_id] = options[:outpost_id]
      self[:bucket] = options[:bucket]
      self[:access_point_name] = options[:access_point_name]
      self[:use_arn_region] = options[:use_arn_region]
      self[:resource_arn] = options[:resource_arn]
      self[:use_s3_express_control_endpoint] = options[:use_s3_express_control_endpoint]
    end

    def self.create(config, options={})
      new({
        region: config.region,
        use_fips: config.use_fips_endpoint,
        endpoint: (config.endpoint.to_s unless config.regional_endpoint),
        use_arn_region: config.s3_use_arn_region,
      }.merge(options))
    end
  end
end
