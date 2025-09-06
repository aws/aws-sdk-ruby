# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('SSM', Module.new) unless Aws.const_defined?('SSM')

# @title Amazon Simple Systems Manager (SSM)
# <p>Amazon Web Services Systems Manager is the operations hub for your Amazon Web Services applications and resources and a secure
#    end-to-end management solution for hybrid cloud environments that enables safe and secure
#    operations at scale.</p>
#          <p>This reference is intended to be used with the <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/">Amazon Web Services Systems Manager User Guide</a>. To get started, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up-console.html">Setting up
#     Amazon Web Services Systems Manager</a>.</p>
#          <p class="title">
#             <b>Related resources</b>
#          </p>
#          <ul>
#             <li>
#                <p>For information about each of the tools that comprise Systems Manager, see <a href="https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-tools.html">Using
#       Systems Manager tools</a> in the <i>Amazon Web Services Systems Manager User Guide</i>.</p>
#             </li>
#             <li>
#                <p>For details about predefined runbooks for Automation, a tool in Amazon Web Services Systems Manager, see the
#        <i>
#                      <a href="https://docs.aws.amazon.com/systems-manager-automation-runbooks/latest/userguide/automation-runbook-reference.html">Systems Manager Automation Runbook Reference</a>
#                   </i>.</p>
#             </li>
#             <li>
#                <p>For information about AppConfig, a tool in Systems Manager, see the <i>
#                      <a href="https://docs.aws.amazon.com/appconfig/latest/userguide/">AppConfig User Guide</a>
#                   </i>
#      and the <i>
#                      <a href="https://docs.aws.amazon.com/appconfig/2019-10-09/APIReference/">AppConfig
#        API Reference</a>
#                   </i>.</p>
#             </li>
#             <li>
#                <p>For information about Incident Manager, a tool in Systems Manager, see the <i>
#                      <a href="https://docs.aws.amazon.com/incident-manager/latest/userguide/">Systems Manager Incident Manager User
#        Guide</a>
#                   </i> and the <i>
#                      <a href="https://docs.aws.amazon.com/incident-manager/latest/APIReference/">Systems Manager Incident Manager API
#      Reference</a>
#                   </i>.</p>
#             </li>
#          </ul>
module Aws::SSM
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-ssm/types'
require_relative 'aws-sdk-ssm/paginators'
require_relative 'aws-sdk-ssm/schema'
require_relative 'aws-sdk-ssm/auth_parameters'
require_relative 'aws-sdk-ssm/auth_resolver'
require_relative 'aws-sdk-ssm/client'
require_relative 'aws-sdk-ssm/customizations'
require_relative 'aws-sdk-ssm/errors'
require_relative 'aws-sdk-ssm/endpoint_parameters'
require_relative 'aws-sdk-ssm/endpoint_provider'
require_relative 'aws-sdk-ssm/waiters'
