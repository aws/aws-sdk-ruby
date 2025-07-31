# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv2'

Aws::Plugins::GlobalConfiguration.add_identifier(:importexport)

# This module provides support for AWS Import/Export. This module is available in the
# `aws-sdk-importexport` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     import_export = Aws::ImportExport::Client.new
#     resp = import_export.cancel_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Import/Export are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::ImportExport::Errors::ServiceError
#       # rescues all AWS Import/Export API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::ImportExport
  autoload :Types, 'aws-sdk-importexport/types'
  autoload :ClientApi, 'aws-sdk-importexport/client_api'
  autoload :Client, 'aws-sdk-importexport/client'
  autoload :Errors, 'aws-sdk-importexport/errors'
  autoload :Resource, 'aws-sdk-importexport/resource'

  GEM_VERSION = '1.63.0'

end

require_relative 'aws-sdk-importexport/customizations'
