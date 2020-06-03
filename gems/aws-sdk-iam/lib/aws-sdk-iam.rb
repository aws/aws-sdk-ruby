# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-iam/types'
require_relative 'aws-sdk-iam/client_api'
require_relative 'aws-sdk-iam/client'
require_relative 'aws-sdk-iam/errors'
require_relative 'aws-sdk-iam/waiters'
require_relative 'aws-sdk-iam/resource'
require_relative 'aws-sdk-iam/access_key'
require_relative 'aws-sdk-iam/access_key_pair'
require_relative 'aws-sdk-iam/account_password_policy'
require_relative 'aws-sdk-iam/account_summary'
require_relative 'aws-sdk-iam/assume_role_policy'
require_relative 'aws-sdk-iam/current_user'
require_relative 'aws-sdk-iam/group'
require_relative 'aws-sdk-iam/group_policy'
require_relative 'aws-sdk-iam/instance_profile'
require_relative 'aws-sdk-iam/login_profile'
require_relative 'aws-sdk-iam/mfa_device'
require_relative 'aws-sdk-iam/policy'
require_relative 'aws-sdk-iam/policy_version'
require_relative 'aws-sdk-iam/role'
require_relative 'aws-sdk-iam/role_policy'
require_relative 'aws-sdk-iam/saml_provider'
require_relative 'aws-sdk-iam/server_certificate'
require_relative 'aws-sdk-iam/signing_certificate'
require_relative 'aws-sdk-iam/user'
require_relative 'aws-sdk-iam/user_policy'
require_relative 'aws-sdk-iam/virtual_mfa_device'
require_relative 'aws-sdk-iam/customizations'

# This module provides support for AWS Identity and Access Management. This module is available in the
# `aws-sdk-iam` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     iam = Aws::IAM::Client.new
#     resp = iam.add_client_id_to_open_id_connect_provider(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Identity and Access Management are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::IAM::Errors::ServiceError
#       # rescues all AWS Identity and Access Management API errors
#     end
#
# See {Errors} for more information.
#
# @service
module Aws::IAM

  GEM_VERSION = '1.39.0'

end
