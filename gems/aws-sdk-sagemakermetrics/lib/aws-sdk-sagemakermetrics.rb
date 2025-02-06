# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:sagemakermetrics)

# This module provides support for Amazon SageMaker Metrics Service. This module is available in the
# `aws-sdk-sagemakermetrics` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sage_maker_metrics = Aws::SageMakerMetrics::Client.new
#     resp = sage_maker_metrics.batch_get_metrics(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon SageMaker Metrics Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SageMakerMetrics::Errors::ServiceError
#       # rescues all Amazon SageMaker Metrics Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SageMakerMetrics
  autoload :Types, 'aws-sdk-sagemakermetrics/types'
  autoload :ClientApi, 'aws-sdk-sagemakermetrics/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-sagemakermetrics/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-sagemakermetrics/client'
  autoload :Errors, 'aws-sdk-sagemakermetrics/errors'
  autoload :Resource, 'aws-sdk-sagemakermetrics/resource'
  autoload :EndpointParameters, 'aws-sdk-sagemakermetrics/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-sagemakermetrics/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-sagemakermetrics/endpoints'

  GEM_VERSION = '1.28.0'

end

require_relative 'aws-sdk-sagemakermetrics/customizations'
