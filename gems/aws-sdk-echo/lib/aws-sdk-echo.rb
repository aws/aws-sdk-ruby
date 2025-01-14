# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:echo)

# This module provides support for Echo Service. This module is available in the
# `aws-sdk-echo` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     echo = Aws::Echo::Client.new
#     resp = echo.echo_operation(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Echo Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::Echo::Errors::ServiceError
#       # rescues all Echo Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::Echo
  autoload :Types, 'aws-sdk-echo/types'
  autoload :ClientApi, 'aws-sdk-echo/client_api'
  autoload :Client, 'aws-sdk-echo/client'
  autoload :Errors, 'aws-sdk-echo/errors'
  autoload :Resource, 'aws-sdk-echo/resource'

  GEM_VERSION = '1.0.0'

end

require_relative 'aws-sdk-echo/customizations'
