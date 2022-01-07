# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-appregistry/types'
require_relative 'aws-sdk-appregistry/client_api'
require_relative 'aws-sdk-appregistry/client'
require_relative 'aws-sdk-appregistry/errors'
require_relative 'aws-sdk-appregistry/resource'
require_relative 'aws-sdk-appregistry/customizations'

# This module provides support for AWS Service Catalog App Registry. This module is available in the
# `aws-sdk-appregistry` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     app_registry = Aws::AppRegistry::Client.new
#     resp = app_registry.associate_attribute_group(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Service Catalog App Registry are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AppRegistry::Errors::ServiceError
#       # rescues all AWS Service Catalog App Registry API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AppRegistry

  GEM_VERSION = '1.12.0'

end
