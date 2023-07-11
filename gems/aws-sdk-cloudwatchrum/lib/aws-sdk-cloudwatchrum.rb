# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudwatchrum/types'
require_relative 'aws-sdk-cloudwatchrum/client_api'
require_relative 'aws-sdk-cloudwatchrum/plugins/endpoints.rb'
require_relative 'aws-sdk-cloudwatchrum/client'
require_relative 'aws-sdk-cloudwatchrum/errors'
require_relative 'aws-sdk-cloudwatchrum/resource'
require_relative 'aws-sdk-cloudwatchrum/endpoint_parameters'
require_relative 'aws-sdk-cloudwatchrum/endpoint_provider'
require_relative 'aws-sdk-cloudwatchrum/endpoints'
require_relative 'aws-sdk-cloudwatchrum/customizations'

# This module provides support for CloudWatch RUM. This module is available in the
# `aws-sdk-cloudwatchrum` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch_rum = Aws::CloudWatchRUM::Client.new
#     resp = cloud_watch_rum.batch_create_rum_metric_definitions(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from CloudWatch RUM are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatchRUM::Errors::ServiceError
#       # rescues all CloudWatch RUM API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatchRUM

  GEM_VERSION = '1.14.0'

end
