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

require_relative 'aws-sdk-snowball/types'
require_relative 'aws-sdk-snowball/client_api'
require_relative 'aws-sdk-snowball/client'
require_relative 'aws-sdk-snowball/errors'
require_relative 'aws-sdk-snowball/waiters'
require_relative 'aws-sdk-snowball/resource'

# customizations for generated code
require_relative 'aws-sdk-snowball/customizations.rb'

module Aws
  # This module provides support for Amazon Import/Export Snowball.
  #
  # # Aws::Snowball::Client
  #
  # The {Aws::Snowball::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     snowball = Aws::Snowball::Client.new
  #     resp = snowball.cancel_job(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Snowball::Errors
  #
  # Errors returned from Amazon Import/Export Snowball all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Snowball::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Snowball

    GEM_VERSION = '1.0.0'

  end
end
