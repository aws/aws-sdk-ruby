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

require_relative 'aws-sdk-route53domains/types'
require_relative 'aws-sdk-route53domains/client_api'
require_relative 'aws-sdk-route53domains/client'
require_relative 'aws-sdk-route53domains/errors'
require_relative 'aws-sdk-route53domains/waiters'
require_relative 'aws-sdk-route53domains/resource'

# customizations for generated code
require_relative 'aws-sdk-route53domains/customizations.rb'

module Aws
  # This module provides support for Amazon Route 53 Domains.
  #
  # # Aws::Route53Domains::Client
  #
  # The {Aws::Route53Domains::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     route53domains = Aws::Route53Domains::Client.new
  #     resp = route53domains.check_domain_availability(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Route53Domains::Errors
  #
  # Errors returned from Amazon Route 53 Domains all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Route53Domains::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Route53Domains

    GEM_VERSION = '1.0.0'

  end
end
