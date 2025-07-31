# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:s3control)

# This module provides support for AWS S3 Control. This module is available in the
# `aws-sdk-s3control` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     s3_control = Aws::S3Control::Client.new
#     resp = s3_control.associate_access_grants_identity_center(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS S3 Control are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::S3Control::Errors::ServiceError
#       # rescues all AWS S3 Control API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::S3Control
  autoload :Types, 'aws-sdk-s3control/types'
  autoload :ClientApi, 'aws-sdk-s3control/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-s3control/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-s3control/client'
  autoload :Errors, 'aws-sdk-s3control/errors'
  autoload :Resource, 'aws-sdk-s3control/resource'
  autoload :EndpointParameters, 'aws-sdk-s3control/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-s3control/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-s3control/endpoints'

  GEM_VERSION = '1.114.0'

end

require_relative 'aws-sdk-s3control/customizations'
