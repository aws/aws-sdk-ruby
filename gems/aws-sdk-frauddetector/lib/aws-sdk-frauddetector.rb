# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:frauddetector)

# This module provides support for Amazon Fraud Detector. This module is available in the
# `aws-sdk-frauddetector` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     fraud_detector = Aws::FraudDetector::Client.new
#     resp = fraud_detector.batch_create_variable(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Fraud Detector are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::FraudDetector::Errors::ServiceError
#       # rescues all Amazon Fraud Detector API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::FraudDetector
  autoload :Types, 'aws-sdk-frauddetector/types'
  autoload :ClientApi, 'aws-sdk-frauddetector/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-frauddetector/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-frauddetector/client'
  autoload :Errors, 'aws-sdk-frauddetector/errors'
  autoload :Resource, 'aws-sdk-frauddetector/resource'
  autoload :EndpointParameters, 'aws-sdk-frauddetector/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-frauddetector/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-frauddetector/endpoints'

  GEM_VERSION = '1.74.0'

end

require_relative 'aws-sdk-frauddetector/customizations'
