# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

require_relative 'aws-sdk-auditmanager/types'
require_relative 'aws-sdk-auditmanager/client_api'
require_relative 'aws-sdk-auditmanager/plugins/endpoints.rb'
require_relative 'aws-sdk-auditmanager/client'
require_relative 'aws-sdk-auditmanager/errors'
require_relative 'aws-sdk-auditmanager/resource'
require_relative 'aws-sdk-auditmanager/endpoint_parameters'
require_relative 'aws-sdk-auditmanager/endpoint_provider'
require_relative 'aws-sdk-auditmanager/endpoints'
require_relative 'aws-sdk-auditmanager/customizations'

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

  GEM_VERSION = '1.36.0'

end
