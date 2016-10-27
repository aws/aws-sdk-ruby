# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-swf/types'
require_relative 'aws-sdk-swf/client_api'
require_relative 'aws-sdk-swf/client'
require_relative 'aws-sdk-swf/errors'
require_relative 'aws-sdk-swf/waiters'
require_relative 'aws-sdk-swf/resource'

module Aws
  # @service
  # This module provides support for Amazon Simple Workflow Service, which shipped in `aws-sdk-swf` gem.
  #
  # # Aws::SWF::Client
  #
  # The {Aws::SWF::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     swf = Aws::SWF::Client.new
  #     resp = swf.count_closed_workflow_executions(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SWF::Errors
  #
  # Errors returned from Amazon Simple Workflow Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SWF::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SWF

    GEM_VERSION = '1.0.0'

  end
end
