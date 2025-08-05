# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:backupsearch)

# This module provides support for AWS Backup Search. This module is available in the
# `aws-sdk-backupsearch` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     backup_search = Aws::BackupSearch::Client.new
#     resp = backup_search.get_search_job(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Backup Search are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::BackupSearch::Errors::ServiceError
#       # rescues all AWS Backup Search API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::BackupSearch
  autoload :Types, 'aws-sdk-backupsearch/types'
  autoload :ClientApi, 'aws-sdk-backupsearch/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-backupsearch/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-backupsearch/client'
  autoload :Errors, 'aws-sdk-backupsearch/errors'
  autoload :Waiters, 'aws-sdk-backupsearch/waiters'
  autoload :Resource, 'aws-sdk-backupsearch/resource'
  autoload :EndpointParameters, 'aws-sdk-backupsearch/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-backupsearch/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-backupsearch/endpoints'

  GEM_VERSION = '1.9.0'

end

require_relative 'aws-sdk-backupsearch/customizations'
