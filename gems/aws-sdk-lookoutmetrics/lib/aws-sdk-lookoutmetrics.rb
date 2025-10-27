# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:lookoutmetrics)

# This module provides support for Amazon Lookout for Metrics. This module is available in the
# `aws-sdk-lookoutmetrics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lookout_metrics = Aws::LookoutMetrics::Client.new
#     resp = lookout_metrics.activate_anomaly_detector(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Lookout for Metrics are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LookoutMetrics::Errors::ServiceError
#       # rescues all Amazon Lookout for Metrics API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LookoutMetrics
  autoload :Types, 'aws-sdk-lookoutmetrics/types'
  autoload :ClientApi, 'aws-sdk-lookoutmetrics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-lookoutmetrics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-lookoutmetrics/client'
  autoload :Errors, 'aws-sdk-lookoutmetrics/errors'
  autoload :Resource, 'aws-sdk-lookoutmetrics/resource'
  autoload :EndpointParameters, 'aws-sdk-lookoutmetrics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-lookoutmetrics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-lookoutmetrics/endpoints'

  GEM_VERSION = '1.60.0'

end

require_relative 'aws-sdk-lookoutmetrics/customizations'
