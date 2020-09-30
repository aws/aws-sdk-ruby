# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-redshift/types'
require_relative 'aws-sdk-redshift/client_api'
require_relative 'aws-sdk-redshift/client'
require_relative 'aws-sdk-redshift/errors'
require_relative 'aws-sdk-redshift/waiters'
require_relative 'aws-sdk-redshift/resource'
require_relative 'aws-sdk-redshift/customizations'

# This module provides support for Amazon Redshift. This module is available in the
# `aws-sdk-redshift` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     redshift = Aws::Redshift::Client.new
#     resp = redshift.accept_reserved_node_exchange(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Redshift are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Redshift::Errors::ServiceError
#       # rescues all Amazon Redshift API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Redshift

  GEM_VERSION = '1.50.0'

end
