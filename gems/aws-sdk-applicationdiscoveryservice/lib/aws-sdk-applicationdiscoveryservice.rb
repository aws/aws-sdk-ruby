# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

require_relative 'aws-sdk-applicationdiscoveryservice/types'
require_relative 'aws-sdk-applicationdiscoveryservice/client_api'
require_relative 'aws-sdk-applicationdiscoveryservice/client'
require_relative 'aws-sdk-applicationdiscoveryservice/errors'
require_relative 'aws-sdk-applicationdiscoveryservice/waiters'
require_relative 'aws-sdk-applicationdiscoveryservice/resource'

# customizations for generated code
require_relative 'aws-sdk-applicationdiscoveryservice/customizations.rb'

module Aws
  # This module provides support for AWS Application Discovery Service.
  #
  # # Aws::ApplicationDiscoveryService::Client
  #
  # The {Aws::ApplicationDiscoveryService::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     applicationdiscoveryservice = Aws::ApplicationDiscoveryService::Client.new
  #     resp = applicationdiscoveryservice.create_tags(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ApplicationDiscoveryService::Errors
  #
  # Errors returned from AWS Application Discovery Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ApplicationDiscoveryService::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ApplicationDiscoveryService

    GEM_VERSION = '1.0.0'

  end
end
