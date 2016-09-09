# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-glacier/types'
require_relative 'aws-sdk-glacier/client_api'
require_relative 'aws-sdk-glacier/client'
require_relative 'aws-sdk-glacier/errors'
require_relative 'aws-sdk-glacier/waiters'
require_relative 'aws-sdk-glacier/resource'
require_relative 'aws-sdk-glacier/account'
require_relative 'aws-sdk-glacier/archive'
require_relative 'aws-sdk-glacier/job'
require_relative 'aws-sdk-glacier/multipart_upload'
require_relative 'aws-sdk-glacier/notification'
require_relative 'aws-sdk-glacier/vault'

# customizations for generated code
require_relative 'aws-sdk-glacier/customizations.rb'

module Aws
  # This module provides support for Amazon Glacier.
  #
  # # Aws::Glacier::Client
  #
  # The {Aws::Glacier::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     glacier = Aws::Glacier::Client.new
  #     resp = glacier.abort_multipart_upload(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Glacier::Errors
  #
  # Errors returned from Amazon Glacier all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Glacier::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Glacier

    GEM_VERSION = '1.0.0'

  end
end
