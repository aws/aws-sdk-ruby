# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-elastictranscoder/types'
require_relative 'aws-sdk-elastictranscoder/client_api'
require_relative 'aws-sdk-elastictranscoder/client'
require_relative 'aws-sdk-elastictranscoder/errors'
require_relative 'aws-sdk-elastictranscoder/waiters'
require_relative 'aws-sdk-elastictranscoder/resource'

# customizations for generated code
require_relative 'aws-sdk-elastictranscoder/customizations.rb'

module Aws
  # This module provides support for Amazon Elastic Transcoder.
  #
  # # Aws::ElasticTranscoder::Client
  #
  # The {Aws::ElasticTranscoder::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     elastictranscoder = Aws::ElasticTranscoder::Client.new
  #     resp = elastictranscoder.cancel_job(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ElasticTranscoder::Errors
  #
  # Errors returned from Amazon Elastic Transcoder all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ElasticTranscoder::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ElasticTranscoder

    GEM_VERSION = '1.0.0'

  end
end
