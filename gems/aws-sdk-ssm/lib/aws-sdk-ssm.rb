# WARNING ABOUT GENERATED CODE
#
# This file is generated from a JSON service definition. See the contributing
# guide for more information:
#
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-ssm/types'
require_relative 'aws-sdk-ssm/client_api'
require_relative 'aws-sdk-ssm/client'
require_relative 'aws-sdk-ssm/errors'
require_relative 'aws-sdk-ssm/waiters'
require_relative 'aws-sdk-ssm/resource'

# customizations for generated code
require_relative 'aws-sdk-ssm/customizations.rb'

module Aws
  # This module provides support for Amazon Simple Systems Management Service.
  #
  # # Aws::SSM::Client
  #
  # The {Aws::SSM::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     ssm = Aws::SSM::Client.new
  #     resp = ssm.add_tags_to_resource(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::SSM::Errors
  #
  # Errors returned from Amazon Simple Systems Management Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::SSM::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module SSM

    GEM_VERSION = '1.0.0'

  end
end
