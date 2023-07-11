# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudwatchevidently/types'
require_relative 'aws-sdk-cloudwatchevidently/client_api'
require_relative 'aws-sdk-cloudwatchevidently/plugins/endpoints.rb'
require_relative 'aws-sdk-cloudwatchevidently/client'
require_relative 'aws-sdk-cloudwatchevidently/errors'
require_relative 'aws-sdk-cloudwatchevidently/resource'
require_relative 'aws-sdk-cloudwatchevidently/endpoint_parameters'
require_relative 'aws-sdk-cloudwatchevidently/endpoint_provider'
require_relative 'aws-sdk-cloudwatchevidently/endpoints'
require_relative 'aws-sdk-cloudwatchevidently/customizations'

# This module provides support for Amazon CloudWatch Evidently. This module is available in the
# `aws-sdk-cloudwatchevidently` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_watch_evidently = Aws::CloudWatchEvidently::Client.new
#     resp = cloud_watch_evidently.batch_evaluate_feature(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudWatch Evidently are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudWatchEvidently::Errors::ServiceError
#       # rescues all Amazon CloudWatch Evidently API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudWatchEvidently

  GEM_VERSION = '1.17.0'

end
