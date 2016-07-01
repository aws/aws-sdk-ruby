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

require_relative 'aws-sdk-importexport/types'
require_relative 'aws-sdk-importexport/client_api'
require_relative 'aws-sdk-importexport/client'
require_relative 'aws-sdk-importexport/errors'
require_relative 'aws-sdk-importexport/waiters'
require_relative 'aws-sdk-importexport/resource'

# customizations for generated code
require_relative 'aws-sdk-importexport/customizations.rb'

module Aws
  # This module provides support for AWS Import/Export.
  #
  # # Aws::ImportExport::Client
  #
  # The {Aws::ImportExport::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     importexport = Aws::ImportExport::Client.new
  #     resp = importexport.cancel_job(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::ImportExport::Errors
  #
  # Errors returned from AWS Import/Export all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::ImportExport::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module ImportExport

    GEM_VERSION = '1.0.0'

  end
end
