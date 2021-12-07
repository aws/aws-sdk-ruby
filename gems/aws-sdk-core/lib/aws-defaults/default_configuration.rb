# frozen_string_literal: true

# TODO: Generate this file - it is currently hand coded

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require_relative 'configuration_mode_defaults_resolver'

module Aws
  module ConfigurationDefaults
    # Code generation documentation here
    # Modes
    #   * Standard - description from file
    #   * in-region - other description from file
    module Defaults

      # @api private
      SDK_DEFAULT_CONFIGURATION = {
        "version" => 1,
        "base" => {
          "retryMode" => "standard",
          "stsRegionalEndpoints" => "regional",
          "s3UsEast1RegionalEndpoints" => "regional",
          "connectTimeoutInMillis" => 1100,
          "tlsNegotiationTimeoutInMillis" => 1100
        },
        "modes" => {
          "standard" => {
            "connectTimeoutInMillis" => {
              "override" => 3100
            },
            "tlsNegotiationTimeoutInMillis" => {
              "override" => 3100
            }
          },
          "in-region" => {
          },
          "cross-region" => {
            "connectTimeoutInMillis" => {
              "override" => 3100
            },
            "tlsNegotiationTimeoutInMillis" => {
              "override" => 3100
            }
          },
          "mobile" => {
            "connectTimeoutInMillis" => {
              "override" => 30000
            },
            "tlsNegotiationTimeoutInMillis" => {
              "override" => 30000
            }
          }
        }
      }.freeze

    end
  end
end