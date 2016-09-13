# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require_relative 'aws-sdk-redshift/types'
require_relative 'aws-sdk-redshift/client_api'
require_relative 'aws-sdk-redshift/client'
require_relative 'aws-sdk-redshift/errors'
require_relative 'aws-sdk-redshift/waiters'
require_relative 'aws-sdk-redshift/resource'

module Aws
  # This module provides support for Amazon Redshift.
  #
  # # Aws::Redshift::Client
  #
  # The {Aws::Redshift::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     redshift = Aws::Redshift::Client.new
  #     resp = redshift.authorize_cluster_security_group_ingress(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::Redshift::Errors
  #
  # Errors returned from Amazon Redshift all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::Redshift::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module Redshift

    GEM_VERSION = '1.0.0'

  end
end
