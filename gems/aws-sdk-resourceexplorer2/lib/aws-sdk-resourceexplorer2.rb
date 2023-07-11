# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-resourceexplorer2/types'
require_relative 'aws-sdk-resourceexplorer2/client_api'
require_relative 'aws-sdk-resourceexplorer2/plugins/endpoints.rb'
require_relative 'aws-sdk-resourceexplorer2/client'
require_relative 'aws-sdk-resourceexplorer2/errors'
require_relative 'aws-sdk-resourceexplorer2/resource'
require_relative 'aws-sdk-resourceexplorer2/endpoint_parameters'
require_relative 'aws-sdk-resourceexplorer2/endpoint_provider'
require_relative 'aws-sdk-resourceexplorer2/endpoints'
require_relative 'aws-sdk-resourceexplorer2/customizations'

# This module provides support for AWS Resource Explorer. This module is available in the
# `aws-sdk-resourceexplorer2` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resource_explorer_2 = Aws::ResourceExplorer2::Client.new
#     resp = resource_explorer_2.associate_default_view(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resource Explorer are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ResourceExplorer2::Errors::ServiceError
#       # rescues all AWS Resource Explorer API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ResourceExplorer2

  GEM_VERSION = '1.9.0'

end
