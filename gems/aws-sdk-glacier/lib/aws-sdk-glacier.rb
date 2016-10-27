# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
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

module Aws
  # @service
  # This module provides support for Amazon Glacier, which shipped in `aws-sdk-glacier` gem.
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
