# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-medicalimaging/types'
require_relative 'aws-sdk-medicalimaging/client_api'
require_relative 'aws-sdk-medicalimaging/plugins/endpoints.rb'
require_relative 'aws-sdk-medicalimaging/client'
require_relative 'aws-sdk-medicalimaging/errors'
require_relative 'aws-sdk-medicalimaging/waiters'
require_relative 'aws-sdk-medicalimaging/resource'
require_relative 'aws-sdk-medicalimaging/endpoint_parameters'
require_relative 'aws-sdk-medicalimaging/endpoint_provider'
require_relative 'aws-sdk-medicalimaging/endpoints'
require_relative 'aws-sdk-medicalimaging/customizations'

# This module provides support for AWS Health Imaging. This module is available in the
# `aws-sdk-medicalimaging` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     medical_imaging = Aws::MedicalImaging::Client.new
#     resp = medical_imaging.copy_image_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Health Imaging are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::MedicalImaging::Errors::ServiceError
#       # rescues all AWS Health Imaging API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::MedicalImaging

  GEM_VERSION = '1.6.0'

end
