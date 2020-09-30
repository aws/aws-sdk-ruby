# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-frauddetector/types'
require_relative 'aws-sdk-frauddetector/client_api'
require_relative 'aws-sdk-frauddetector/client'
require_relative 'aws-sdk-frauddetector/errors'
require_relative 'aws-sdk-frauddetector/resource'
require_relative 'aws-sdk-frauddetector/customizations'

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

  GEM_VERSION = '1.13.0'

end
