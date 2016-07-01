# WARNING ABOUT GENERATED CODE
#
# The AWS SDK for Ruby is largely generated from JSON service definitions. Edits
# made against this file will be lost the next time the SDK updates.  To resolve
# an issue with generated code, a change is likely needed in the generator or
# in one of the service JSON definitions.
#
# * https://github.com/aws/aws-sdk-ruby/tree/master/gems/aws-sdk-code-generator
# * https://github.com/aws/aws-sdk-ruby/tree/master/apis
#
# Open a GitHub issue if you have questions before making changes.  Pull
# requests against this file will be automatically closed.
#
# WARNING ABOUT GENERATED CODE
require 'aws-sdk-core'

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

# customizations for generated code
require_relative 'aws-sdk-iam/customizations.rb'

module Aws
  # This module provides support for AWS Identity and Access Management.
  #
  # # Aws::IAM::Client
  #
  # The {Aws::IAM::Client} class provides one method for each API
  # operation. Operation methods each accept a hash of request parameters
  # and return a response object.
  #
  #     iam = Aws::IAM::Client.new
  #     resp = iam.add_client_id_to_open_id_connect_provider(params)
  #
  #
  # See {Client} for more information.
  #
  # # Aws::IAM::Errors
  #
  # Errors returned from AWS Identity and Access Management all
  # extend {Errors::ServiceError}.
  #
  #     begin
  #       # do stuff
  #     rescue Aws::IAM::Errors::ServiceError
  #       # rescues all service API errors
  #     end
  #
  # See {Errors} for more information.
  module IAM

    GEM_VERSION = '1.0.0'

  end
end
