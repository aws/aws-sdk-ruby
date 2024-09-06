# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-lambdapreview/customizations'
require_relative 'aws-sdk-lambdapreview/railtie' if defined?(Rails::Railtie)

# This module provides support for AWS Lambda. This module is available in the
# `aws-sdk-lambdapreview` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     lambda_preview = Aws::LambdaPreview::Client.new
#     resp = lambda_preview.add_event_source(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Lambda are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::LambdaPreview::Errors::ServiceError
#       # rescues all AWS Lambda API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::LambdaPreview
  autoload :Types, 'aws-sdk-lambdapreview/types'
  autoload :ClientApi, 'aws-sdk-lambdapreview/client_api'
  autoload :Client, 'aws-sdk-lambdapreview/client'
  autoload :Errors, 'aws-sdk-lambdapreview/errors'
  autoload :Resource, 'aws-sdk-lambdapreview/resource'

  GEM_VERSION = '1.49.0'

end
