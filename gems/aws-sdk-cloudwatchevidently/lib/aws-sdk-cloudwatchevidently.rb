# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:cloudwatchevidently)

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
  autoload :Types, 'aws-sdk-cloudwatchevidently/types'
  autoload :ClientApi, 'aws-sdk-cloudwatchevidently/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-cloudwatchevidently/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-cloudwatchevidently/client'
  autoload :Errors, 'aws-sdk-cloudwatchevidently/errors'
  autoload :Resource, 'aws-sdk-cloudwatchevidently/resource'
  autoload :EndpointParameters, 'aws-sdk-cloudwatchevidently/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-cloudwatchevidently/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-cloudwatchevidently/endpoints'

  GEM_VERSION = '1.44.0'

end

require_relative 'aws-sdk-cloudwatchevidently/customizations'
