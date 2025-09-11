# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('AuditManager', Module.new) unless Aws.const_defined?('AuditManager')

# @title AWS Audit Manager
# <p>Welcome to the Audit Manager API reference. This guide is for developers who
#          need detailed information about the Audit Manager API operations, data types, and
#          errors. </p>
#          <p>Audit Manager is a service that provides automated evidence collection so that you
#          can continually audit your Amazon Web Services usage. You can use it to assess the
#          effectiveness of your controls, manage risk, and simplify compliance.</p>
#          <p>Audit Manager provides prebuilt frameworks that structure and automate assessments
#          for a given compliance standard. Frameworks include a prebuilt collection of controls with
#          descriptions and testing procedures. These controls are grouped according to the
#          requirements of the specified compliance standard or regulation. You can also customize
#          frameworks and controls to support internal audits with specific requirements. </p>
#          <p>Use the following links to get started with the Audit Manager API:</p>
#          <ul>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Operations.html">Actions</a>: An
#                alphabetical list of all Audit Manager API operations.</p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/API_Types.html">Data types</a>: An alphabetical list of all Audit Manager data
#                types.</p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonParameters.html">Common
#                   parameters</a>: Parameters that all operations can use.</p>
#             </li>
#             <li>
#                <p>
#                   <a href="https://docs.aws.amazon.com/audit-manager/latest/APIReference/CommonErrors.html">Common errors</a>:
#                Client and server errors that all operations can return.</p>
#             </li>
#          </ul>
#          <p>If you're new to Audit Manager, we recommend that you review the <a href="https://docs.aws.amazon.com/audit-manager/latest/userguide/what-is.html">
#             Audit Manager User Guide</a>.</p>
module Aws::AuditManager
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-auditmanager/types'
require_relative 'aws-sdk-auditmanager/paginators'
require_relative 'aws-sdk-auditmanager/schema'
require_relative 'aws-sdk-auditmanager/auth_parameters'
require_relative 'aws-sdk-auditmanager/auth_resolver'
require_relative 'aws-sdk-auditmanager/client'
require_relative 'aws-sdk-auditmanager/customizations'
require_relative 'aws-sdk-auditmanager/errors'
require_relative 'aws-sdk-auditmanager/endpoint_parameters'
require_relative 'aws-sdk-auditmanager/endpoint_provider'
require_relative 'aws-sdk-auditmanager/waiters'
