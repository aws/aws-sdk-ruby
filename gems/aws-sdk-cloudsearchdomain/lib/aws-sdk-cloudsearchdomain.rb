# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudsearchdomain/types'
require_relative 'aws-sdk-cloudsearchdomain/client_api'
require_relative 'aws-sdk-cloudsearchdomain/client'
require_relative 'aws-sdk-cloudsearchdomain/errors'
require_relative 'aws-sdk-cloudsearchdomain/resource'
require_relative 'aws-sdk-cloudsearchdomain/customizations'

# This module provides support for Amazon CloudSearch Domain. This module is available in the
# `aws-sdk-cloudsearchdomain` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_search_domain = Aws::CloudSearchDomain::Client.new
#     resp = cloud_search_domain.search(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudSearch Domain are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudSearchDomain::Errors::ServiceError
#       # rescues all Amazon CloudSearch Domain API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudSearchDomain

  GEM_VERSION = '1.22.0'

end
