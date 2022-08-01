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
  end
end