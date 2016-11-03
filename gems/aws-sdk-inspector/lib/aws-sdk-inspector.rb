# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-inspector/types'
require_relative 'aws-sdk-inspector/client_api'
require_relative 'aws-sdk-inspector/client'
require_relative 'aws-sdk-inspector/errors'
require_relative 'aws-sdk-inspector/resource'

module Aws
  # @service
  # This module provides support for Amazon Inspector, which shipped in `aws-sdk-inspector` gem.
  #
  # # Aws::Inspector::Client
  #
  # The {Aws::Inspector::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     inspector = Aws::Inspector::Client.new
  #     resp = inspector.add_attributes_to_findings(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Inspector::Errors
  #
  # Errors returned from Amazon Inspector all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Inspector::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Inspector

    GEM_VERSION = '1.0.0'

  end
end
