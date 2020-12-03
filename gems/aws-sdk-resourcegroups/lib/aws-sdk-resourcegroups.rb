# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-resourcegroups/types'
require_relative 'aws-sdk-resourcegroups/client_api'
require_relative 'aws-sdk-resourcegroups/client'
require_relative 'aws-sdk-resourcegroups/errors'
require_relative 'aws-sdk-resourcegroups/resource'
require_relative 'aws-sdk-resourcegroups/customizations'

# This module provides support for AWS Resource Groups. This module is available in the
# `aws-sdk-resourcegroups` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     resource_groups = Aws::ResourceGroups::Client.new
#     resp = resource_groups.create_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Resource Groups are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ResourceGroups::Errors::ServiceError
#       # rescues all AWS Resource Groups API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ResourceGroups

  GEM_VERSION = '1.32.0'

end
