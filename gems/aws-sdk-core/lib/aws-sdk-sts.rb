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

require_relative 'aws-sdk-sts/types'
require_relative 'aws-sdk-sts/client_api'
require_relative 'aws-sdk-sts/client'
require_relative 'aws-sdk-sts/errors'
require_relative 'aws-sdk-sts/waiters'
require_relative 'aws-sdk-sts/resource'

module Aws
  # This module provides support for AWS Security Token Service.
  #
  # # Aws::STS::Client
  #
  # The {Aws::STS::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     sts = Aws::STS::Client.new
  #     resp = sts.assume_role(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::STS::Errors
  #
  # Errors returned from AWS Security Token Service all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::STS::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module STS; end
end
