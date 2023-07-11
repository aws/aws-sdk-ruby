# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-elastictranscoder/types'
require_relative 'aws-sdk-elastictranscoder/client_api'
require_relative 'aws-sdk-elastictranscoder/plugins/endpoints.rb'
require_relative 'aws-sdk-elastictranscoder/client'
require_relative 'aws-sdk-elastictranscoder/errors'
require_relative 'aws-sdk-elastictranscoder/waiters'
require_relative 'aws-sdk-elastictranscoder/resource'
require_relative 'aws-sdk-elastictranscoder/endpoint_parameters'
require_relative 'aws-sdk-elastictranscoder/endpoint_provider'
require_relative 'aws-sdk-elastictranscoder/endpoints'
require_relative 'aws-sdk-elastictranscoder/customizations'

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

  GEM_VERSION = '1.45.0'

end
