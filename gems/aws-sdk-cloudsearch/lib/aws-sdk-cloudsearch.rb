# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-cloudsearch/types'
require_relative 'aws-sdk-cloudsearch/client_api'
require_relative 'aws-sdk-cloudsearch/client'
require_relative 'aws-sdk-cloudsearch/errors'
require_relative 'aws-sdk-cloudsearch/resource'
require_relative 'aws-sdk-cloudsearch/customizations'

# This module provides support for Amazon CloudSearch. This module is available in the
# `aws-sdk-cloudsearch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     cloud_search = Aws::CloudSearch::Client.new
#     resp = cloud_search.build_suggesters(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon CloudSearch are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::CloudSearch::Errors::ServiceError
#       # rescues all Amazon CloudSearch API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::CloudSearch

  GEM_VERSION = '1.26.0'

end
