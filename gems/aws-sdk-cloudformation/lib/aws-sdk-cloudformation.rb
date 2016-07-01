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

require_relative 'aws-sdk-cloudformation/types'
require_relative 'aws-sdk-cloudformation/client_api'
require_relative 'aws-sdk-cloudformation/client'
require_relative 'aws-sdk-cloudformation/errors'
require_relative 'aws-sdk-cloudformation/waiters'
require_relative 'aws-sdk-cloudformation/resource'
require_relative 'aws-sdk-cloudformation/event'
require_relative 'aws-sdk-cloudformation/stack'
require_relative 'aws-sdk-cloudformation/stack_resource'
require_relative 'aws-sdk-cloudformation/stack_resource_summary'

# customizations for generated code
require_relative 'aws-sdk-cloudformation/customizations.rb'

module Aws
  # This module provides support for AWS CloudFormation.
  #
  # # Aws::CloudFormation::Client
  #
  # The {Aws::CloudFormation::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudformation = Aws::CloudFormation::Client.new
  #     resp = cloudformation.cancel_update_stack(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudFormation::Errors
  #
  # Errors returned from AWS CloudFormation all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudFormation::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudFormation

    GEM_VERSION = '1.0.0'

  end
end
