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

require_relative 'aws-sdk-cloudwatch/types'
require_relative 'aws-sdk-cloudwatch/client_api'
require_relative 'aws-sdk-cloudwatch/client'
require_relative 'aws-sdk-cloudwatch/errors'
require_relative 'aws-sdk-cloudwatch/waiters'
require_relative 'aws-sdk-cloudwatch/resource'
require_relative 'aws-sdk-cloudwatch/alarm'
require_relative 'aws-sdk-cloudwatch/metric'

# customizations for generated code
require_relative 'aws-sdk-cloudwatch/customizations.rb'

module Aws
  # This module provides support for Amazon CloudWatch.
  #
  # # Aws::CloudWatch::Client
  #
  # The {Aws::CloudWatch::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     cloudwatch = Aws::CloudWatch::Client.new
  #     resp = cloudwatch.delete_alarms(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::CloudWatch::Errors
  #
  # Errors returned from Amazon CloudWatch all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::CloudWatch::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module CloudWatch

    GEM_VERSION = '1.0.0'

  end
end
