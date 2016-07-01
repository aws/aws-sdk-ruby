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

require_relative 'aws-sdk-route53/types'
require_relative 'aws-sdk-route53/client_api'
require_relative 'aws-sdk-route53/client'
require_relative 'aws-sdk-route53/errors'
require_relative 'aws-sdk-route53/waiters'
require_relative 'aws-sdk-route53/resource'

# customizations for generated code
require_relative 'aws-sdk-route53/customizations.rb'

module Aws
  # This module provides support for Amazon Route 53.
  #
  # # Aws::Route53::Client
  #
  # The {Aws::Route53::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     route53 = Aws::Route53::Client.new
  #     resp = route53.associate_vpc_with_hosted_zone(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Route53::Errors
  #
  # Errors returned from Amazon Route 53 all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Route53

    GEM_VERSION = '1.0.0'

  end
end
