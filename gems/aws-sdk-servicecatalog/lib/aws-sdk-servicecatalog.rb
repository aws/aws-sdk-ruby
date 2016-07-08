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

require_relative 'aws-sdk-servicecatalog/types'
require_relative 'aws-sdk-servicecatalog/client_api'
require_relative 'aws-sdk-servicecatalog/client'
require_relative 'aws-sdk-servicecatalog/errors'
require_relative 'aws-sdk-servicecatalog/waiters'
require_relative 'aws-sdk-servicecatalog/resource'

# customizations for generated code
require_relative 'aws-sdk-servicecatalog/customizations.rb'

module Aws
  # This module provides support for AWS Service Catalog.
  #
  # # Aws::ServiceCatalog::Client
  #
  # The {Aws::ServiceCatalog::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     servicecatalog = Aws::ServiceCatalog::Client.new
  #     resp = servicecatalog.describe_product(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ServiceCatalog::Errors
  #
  # Errors returned from AWS Service Catalog all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ServiceCatalog::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ServiceCatalog

    GEM_VERSION = '1.0.0'

  end
end
