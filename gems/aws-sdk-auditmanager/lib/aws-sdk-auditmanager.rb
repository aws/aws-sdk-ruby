# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:auditmanager)

# This module provides support for AWS Audit Manager. This module is available in the
# `aws-sdk-auditmanager` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     audit_manager = Aws::AuditManager::Client.new
#     resp = audit_manager.associate_assessment_report_evidence_folder(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from AWS Audit Manager are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::AuditManager::Errors::ServiceError
#       # rescues all AWS Audit Manager API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::AuditManager
  autoload :Types, 'aws-sdk-auditmanager/types'
  autoload :ClientApi, 'aws-sdk-auditmanager/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-auditmanager/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-auditmanager/client'
  autoload :Errors, 'aws-sdk-auditmanager/errors'
  autoload :Resource, 'aws-sdk-auditmanager/resource'
  autoload :EndpointParameters, 'aws-sdk-auditmanager/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-auditmanager/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-auditmanager/endpoints'

  GEM_VERSION = '1.74.0'

end

require_relative 'aws-sdk-auditmanager/customizations'
