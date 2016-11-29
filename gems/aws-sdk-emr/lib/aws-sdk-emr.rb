# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-emr/types'
require_relative 'aws-sdk-emr/client_api'
require_relative 'aws-sdk-emr/client'
require_relative 'aws-sdk-emr/errors'
require_relative 'aws-sdk-emr/waiters'
require_relative 'aws-sdk-emr/resource'
require_relative 'aws-sdk-emr/customizations'

module Aws
  # @service
  # This module provides support for Amazon Elastic MapReduce, which shipped in `aws-sdk-emr` gem.
  #
  # # Aws::EMR::Client
  #
  # The {Aws::EMR::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     emr = Aws::EMR::Client.new
  #     resp = emr.add_instance_groups(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::EMR::Errors
  #
  # Errors returned from Amazon Elastic MapReduce all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EMR::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module EMR

    GEM_VERSION = '1.0.0.rc1'

  end
end
