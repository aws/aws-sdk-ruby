# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-devopsguru/types'
require_relative 'aws-sdk-devopsguru/client_api'
require_relative 'aws-sdk-devopsguru/plugins/endpoints.rb'
require_relative 'aws-sdk-devopsguru/client'
require_relative 'aws-sdk-devopsguru/errors'
require_relative 'aws-sdk-devopsguru/resource'
require_relative 'aws-sdk-devopsguru/endpoint_parameters'
require_relative 'aws-sdk-devopsguru/endpoint_provider'
require_relative 'aws-sdk-devopsguru/endpoints'
require_relative 'aws-sdk-devopsguru/customizations'

# This module provides support for Amazon DevOps Guru. This module is available in the
# `aws-sdk-devopsguru` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     dev_ops_guru = Aws::DevOpsGuru::Client.new
#     resp = dev_ops_guru.add_notification_channel(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon DevOps Guru are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::DevOpsGuru::Errors::ServiceError
#       # rescues all Amazon DevOps Guru API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::DevOpsGuru

  GEM_VERSION = '1.36.0'

end
