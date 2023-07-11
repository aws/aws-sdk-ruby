# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-sagemakermetrics/types'
require_relative 'aws-sdk-sagemakermetrics/client_api'
require_relative 'aws-sdk-sagemakermetrics/plugins/endpoints.rb'
require_relative 'aws-sdk-sagemakermetrics/client'
require_relative 'aws-sdk-sagemakermetrics/errors'
require_relative 'aws-sdk-sagemakermetrics/resource'
require_relative 'aws-sdk-sagemakermetrics/endpoint_parameters'
require_relative 'aws-sdk-sagemakermetrics/endpoint_provider'
require_relative 'aws-sdk-sagemakermetrics/endpoints'
require_relative 'aws-sdk-sagemakermetrics/customizations'

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
#     resp = sage_maker_metrics.batch_put_metrics(params)
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

  GEM_VERSION = '1.7.0'

end
