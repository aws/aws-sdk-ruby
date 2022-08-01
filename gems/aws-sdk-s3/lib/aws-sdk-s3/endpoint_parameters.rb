# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

module Aws::S3

  # TODO - better documentation
  # Structure generated with all Endpoint Parameters.
  #
  #  @!attribute bucket
  #
  #  @return [String]
  #

  #  @!attribute region
  #
  #  @return [String]
  #

  #  @!attribute use_fips
  #
  #  @return [Boolean]
  #

  #  @!attribute use_dual_stack
  #
  #  @return [Boolean]
  #

  #  @!attribute endpoint
  #
  #  @return [String]
  #

  #  @!attribute force_path_style
  #
  #  @return [Boolean]
  #

  #  @!attribute accelerate
  #
  #  @return [Boolean]
  #

  #  @!attribute disable_access_points
  #
  #  @return [Boolean]
  #

  #  @!attribute disable_mrap
  #
  #  @return [Boolean]
  #

  EndpointParameters = Struct.new(
    :bucket,
    :region,
    :use_fips,
    :use_dual_stack,
    :endpoint,
    :force_path_style,
    :accelerate,
    :disable_access_points,
    :disable_mrap,
  ) do
    include Aws::Structure
    PARAM_MAP = {
      'Bucket' => :bucket,
      'Region' => :region,
      'UseFIPS' => :use_fips,
      'UseDualStack' => :use_dual_stack,
      'Endpoint' => :endpoint,
      'ForcePathStyle' => :force_path_style,
      'Accelerate' => :accelerate,
      'DisableAccessPoints' => :disable_access_points,
      'DisableMRAP' => :disable_mrap,
    }.freeze

    def initialize(options = {})
        self[:bucket] = options[:bucket]
        self[:region] = options[:region]
        self[:use_fips] = options[:use_fips] || false
        if self[:use_fips].nil?
          raise ArgumentError, "Missing required EndpointParameter: :use_fips"
        end
        self[:use_dual_stack] = options[:use_dual_stack] || false
        if self[:use_dual_stack].nil?
          raise ArgumentError, "Missing required EndpointParameter: :use_dual_stack"
        end
        self[:endpoint] = options[:endpoint]
        self[:force_path_style] = options[:force_path_style]
        self[:accelerate] = options[:accelerate] || false
        if self[:accelerate].nil?
          raise ArgumentError, "Missing required EndpointParameter: :accelerate"
        end
        self[:disable_access_points] = options[:disable_access_points]
        self[:disable_mrap] = options[:disable_mrap]
    end
  end
end