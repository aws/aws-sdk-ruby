# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-sms/types'
require_relative 'aws-sdk-sms/client_api'
require_relative 'aws-sdk-sms/client'
require_relative 'aws-sdk-sms/errors'
require_relative 'aws-sdk-sms/resource'

module Aws
  # @service
  # This module provides support for AWS Server Migration Service, which shipped in `aws-sdk-sms` gem.
  #
  # # Aws::SMS::Client
  #
  # The {Aws::SMS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     sms = Aws::SMS::Client.new
  #     resp = sms.create_replication_job(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SMS::Errors
  #
  # Errors returned from AWS Server Migration Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SMS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SMS

    GEM_VERSION = '1.0.0.rc1'

  end
end
