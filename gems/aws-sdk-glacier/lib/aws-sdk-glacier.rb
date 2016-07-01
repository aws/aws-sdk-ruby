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
