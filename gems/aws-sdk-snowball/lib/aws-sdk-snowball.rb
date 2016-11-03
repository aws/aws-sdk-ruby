# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'
require_relative 'aws-sdk-snowball/types'
require_relative 'aws-sdk-snowball/client_api'
require_relative 'aws-sdk-snowball/client'
require_relative 'aws-sdk-snowball/errors'
require_relative 'aws-sdk-snowball/resource'

module Aws
  # @service
  # This module provides support for Amazon Import/Export Snowball, which shipped in `aws-sdk-snowball` gem.
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
