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

require_relative 'aws-sdk-directconnect/types'
require_relative 'aws-sdk-directconnect/client_api'
require_relative 'aws-sdk-directconnect/client'
require_relative 'aws-sdk-directconnect/errors'
require_relative 'aws-sdk-directconnect/waiters'
require_relative 'aws-sdk-directconnect/resource'

# customizations for generated code
require_relative 'aws-sdk-directconnect/customizations.rb'

module Aws
  # This module provides support for AWS Direct Connect.
  #
  # # Aws::DirectConnect::Client
  #
  # The {Aws::DirectConnect::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     directconnect = Aws::DirectConnect::Client.new
  #     resp = directconnect.allocate_connection_on_interconnect(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::DirectConnect::Errors
  #
  # Errors returned from AWS Direct Connect all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::DirectConnect::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module DirectConnect

    GEM_VERSION = '1.0.0'

  end
end
