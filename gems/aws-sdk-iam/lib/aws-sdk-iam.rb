# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:iam)

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
# @!group service
module Aws::IAM
  autoload :Types, 'aws-sdk-iam/types'
  autoload :ClientApi, 'aws-sdk-iam/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-iam/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-iam/client'
  autoload :Errors, 'aws-sdk-iam/errors'
  autoload :Waiters, 'aws-sdk-iam/waiters'
  autoload :Resource, 'aws-sdk-iam/resource'
  autoload :EndpointParameters, 'aws-sdk-iam/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-iam/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-iam/endpoints'
  autoload :AccessKey, 'aws-sdk-iam/access_key'
  autoload :AccessKeyPair, 'aws-sdk-iam/access_key_pair'
  autoload :AccountPasswordPolicy, 'aws-sdk-iam/account_password_policy'
  autoload :AccountSummary, 'aws-sdk-iam/account_summary'
  autoload :AssumeRolePolicy, 'aws-sdk-iam/assume_role_policy'
  autoload :CurrentUser, 'aws-sdk-iam/current_user'
  autoload :Group, 'aws-sdk-iam/group'
  autoload :GroupPolicy, 'aws-sdk-iam/group_policy'
  autoload :InstanceProfile, 'aws-sdk-iam/instance_profile'
  autoload :LoginProfile, 'aws-sdk-iam/login_profile'
  autoload :MfaDevice, 'aws-sdk-iam/mfa_device'
  autoload :Policy, 'aws-sdk-iam/policy'
  autoload :PolicyVersion, 'aws-sdk-iam/policy_version'
  autoload :Role, 'aws-sdk-iam/role'
  autoload :RolePolicy, 'aws-sdk-iam/role_policy'
  autoload :SamlProvider, 'aws-sdk-iam/saml_provider'
  autoload :ServerCertificate, 'aws-sdk-iam/server_certificate'
  autoload :SigningCertificate, 'aws-sdk-iam/signing_certificate'
  autoload :User, 'aws-sdk-iam/user'
  autoload :UserPolicy, 'aws-sdk-iam/user_policy'
  autoload :VirtualMfaDevice, 'aws-sdk-iam/virtual_mfa_device'

  GEM_VERSION = '1.127.0'

end

require_relative 'aws-sdk-iam/customizations'
