# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-comprehendmedical/types'
require_relative 'aws-sdk-comprehendmedical/client_api'
require_relative 'aws-sdk-comprehendmedical/client'
require_relative 'aws-sdk-comprehendmedical/errors'
require_relative 'aws-sdk-comprehendmedical/resource'
require_relative 'aws-sdk-comprehendmedical/customizations'

# This module provides support for AWS Comprehend Medical. This module is available in the
# `aws-sdk-comprehendmedical` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     comprehend_medical = Aws::ComprehendMedical::Client.new
#     resp = comprehend_medical.describe_entities_detection_v2_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Comprehend Medical are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ComprehendMedical::Errors::ServiceError
#       # rescues all AWS Comprehend Medical API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ComprehendMedical

  GEM_VERSION = '1.23.0'

end
