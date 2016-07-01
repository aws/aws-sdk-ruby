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

require_relative 'aws-sdk-emr/types'
require_relative 'aws-sdk-emr/client_api'
require_relative 'aws-sdk-emr/client'
require_relative 'aws-sdk-emr/errors'
require_relative 'aws-sdk-emr/waiters'
require_relative 'aws-sdk-emr/resource'

# customizations for generated code
require_relative 'aws-sdk-emr/customizations.rb'

module Aws
  # This module provides support for Amazon Elastic MapReduce.
  #
  # # Aws::EMR::Client
  #
  # The {Aws::EMR::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     emr = Aws::EMR::Client.new
  #     resp = emr.add_instance_groups(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::EMR::Errors
  #
  # Errors returned from Amazon Elastic MapReduce all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::EMR::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module EMR

    GEM_VERSION = '1.0.0'

  end
end
