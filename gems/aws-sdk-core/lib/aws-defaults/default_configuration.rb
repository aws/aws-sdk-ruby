# frozen_string_literal: true

require_relative 'defaults_mode_config_resolver'

module Aws

  # A defaults mode determines how certain default configuration options are resolved in the SDK.
  #
  # *Note*: For any mode other than `'legacy'` the vended default values might change as best practices may
  # evolve. As a result, it is encouraged to perform testing when upgrading the SDK if you are using a mode other than
  # `'legacy'`.  While the `'legacy'` defaults mode is specific to Ruby,
  # other modes are standardized across all of the AWS SDKs.
  #
  #  The defaults mode can be configured:
  #
  #  * Directly on a client via `:defaults_mode`
  #
  #  * On a configuration profile via the "defaults_mode" profile file property.
  #
  #  * Globally via the "AWS_DEFAULTS_MODE" environment variable.
  #
  #
  # @code_generation START - documentation
  # The following `:default_mode` values are supported: 
  #
  # * `'standard'` - <p>The STANDARD mode provides the latest recommended default values that should be safe to run in most scenarios</p><p>Note that the default values vended from this mode might change as best practices may evolve. As a result, it is encouraged to perform tests when upgrading the SDK</p>
  #
  # * `'in-region'` - <p>The IN_REGION mode builds on the standard mode and includes optimization tailored for applications which call AWS services from within the same AWS region</p><p>Note that the default values vended from this mode might change as best practices may evolve. As a result, it is encouraged to perform tests when upgrading the SDK</p>
  #
  # * `'cross-region'` - <p>The CROSS_REGION mode builds on the standard mode and includes optimization tailored for applications which call AWS services in a different region</p><p>Note that the default values vended from this mode might change as best practices may evolve. As a result, it is encouraged to perform tests when upgrading the SDK</p>
  #
  # * `'mobile'` - <p>The MOBILE mode builds on the standard mode and includes optimization tailored for mobile applications</p><p>Note that the default values vended from this mode might change as best practices may evolve. As a result, it is encouraged to perform tests when upgrading the SDK</p>
  #
  # * `'auto'` - <p>The AUTO mode is an experimental mode that builds on the standard mode. The SDK will attempt to discover the execution environment to determine the appropriate settings automatically.</p><p>Note that the auto detection is heuristics-based and does not guarantee 100% accuracy. STANDARD mode will be used if the execution environment cannot be determined. The auto detection might query <a href="https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-instance-metadata.html">EC2 Instance Metadata service</a>, which might introduce latency. Therefore we recommend choosing an explicit defaults_mode instead if startup latency is critical to your application</p>
  #
  # * `'legacy'` - <p>The LEGACY mode provides default settings that vary per SDK and were used prior to establishment of defaults_mode</p>
  #
  #
  #  Based on the provided mode, the SDK will vend sensible default values tailored to the mode for the following settings: 
  #
  # * `:retry_mode` - <p>A retry mode specifies how the SDK attempts retries. See <a href="https://docs.aws.amazon.com/sdkref/latest/guide/setting-global-retry_mode.html">Retry Mode</a></p>
  #
  # * `:sts_regional_endpoints` - <p>Specifies how the SDK determines the AWS service endpoint that it uses to talk to the AWS Security Token Service (AWS STS). See <a href="https://docs.aws.amazon.com/sdkref/latest/guide/setting-global-sts_regional_endpoints.html">Setting STS Regional endpoints</a></p>
  #
  # * `:s3_us_east_1_regional_endpoint` - <p>Specifies how the SDK determines the AWS service endpoint that it uses to talk to the Amazon S3 for the us-east-1 region</p>
  #
  # * `:http_open_timeout` - <p>The amount of time after making an initial connection attempt on a socket, where if the client does not receive a completion of the connect handshake, the client gives up and fails the operation</p>
  #
  # * `:ssl_timeout` - <p>The maximum amount of time that a TLS handshake is allowed to take from the time the CLIENT HELLO message is sent to ethe time the client and server have fully negotiated ciphers and exchanged keys</p>
  #
  #
  # All options above can be configured by users, and the overridden value will take precedence. 
  # @code_generation END - documentation
  module DefaultsModeConfiguration
    # @api private
    # @code_generation START - configuration
    SDK_DEFAULT_CONFIGURATION = 
    {
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
    }
    # @code_generation END - configuration
  end
end