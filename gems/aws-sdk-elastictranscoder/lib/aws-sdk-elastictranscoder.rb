# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:elastictranscoder)

# This module provides support for Amazon Elastic Transcoder. This module is available in the
# `aws-sdk-elastictranscoder` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     elastic_transcoder = Aws::ElasticTranscoder::Client.new
#     resp = elastic_transcoder.cancel_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Elastic Transcoder are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ElasticTranscoder::Errors::ServiceError
#       # rescues all Amazon Elastic Transcoder API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ElasticTranscoder
  autoload :Types, 'aws-sdk-elastictranscoder/types'
  autoload :ClientApi, 'aws-sdk-elastictranscoder/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-elastictranscoder/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-elastictranscoder/client'
  autoload :Errors, 'aws-sdk-elastictranscoder/errors'
  autoload :Waiters, 'aws-sdk-elastictranscoder/waiters'
  autoload :Resource, 'aws-sdk-elastictranscoder/resource'
  autoload :EndpointParameters, 'aws-sdk-elastictranscoder/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-elastictranscoder/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-elastictranscoder/endpoints'

  GEM_VERSION = '1.73.0'

end

require_relative 'aws-sdk-elastictranscoder/customizations'
