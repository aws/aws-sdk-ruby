# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-ssoadmin/types'
require_relative 'aws-sdk-ssoadmin/client_api'
require_relative 'aws-sdk-ssoadmin/client'
require_relative 'aws-sdk-ssoadmin/errors'
require_relative 'aws-sdk-ssoadmin/resource'
require_relative 'aws-sdk-ssoadmin/customizations'

# This module provides support for AWS Single Sign-On Admin. This module is available in the
# `aws-sdk-ssoadmin` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     sso_admin = Aws::SSOAdmin::Client.new
#     resp = sso_admin.attach_managed_policy_to_permission_set(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Single Sign-On Admin are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::SSOAdmin::Errors::ServiceError
#       # rescues all AWS Single Sign-On Admin API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::SSOAdmin

  GEM_VERSION = '1.3.0'

end
