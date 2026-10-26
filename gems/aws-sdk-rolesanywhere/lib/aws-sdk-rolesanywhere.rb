# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('RolesAnywhere', Module.new) unless Aws.const_defined?('RolesAnywhere')

# @title IAM Roles Anywhere
# <p>Identity and Access Management Roles Anywhere provides a secure way for your workloads such as servers, containers, and applications that run outside of Amazon Web Services to obtain temporary Amazon Web Services credentials. Your workloads can use the same IAM policies and roles you have for native Amazon Web Services applications to access Amazon Web Services resources. Using IAM Roles Anywhere eliminates the need to manage long-term credentials for workloads running outside of Amazon Web Services.</p> <p> To use IAM Roles Anywhere, your workloads must use X.509 certificates issued by their certificate authority (CA). You register the CA with IAM Roles Anywhere as a trust anchor to establish trust between your public key infrastructure (PKI) and IAM Roles Anywhere. If you don't manage your own PKI system, you can use Private Certificate Authority to create a CA and then use that to establish trust with IAM Roles Anywhere. </p> <p>This guide describes the IAM Roles Anywhere operations that you can call programmatically. For more information about IAM Roles Anywhere, see the <a href="https://docs.aws.amazon.com/rolesanywhere/latest/userguide/introduction.html">IAM Roles Anywhere User Guide</a>.</p>
module Aws::RolesAnywhere
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-rolesanywhere/types'
require_relative 'aws-sdk-rolesanywhere/paginators'
require_relative 'aws-sdk-rolesanywhere/schema'
require_relative 'aws-sdk-rolesanywhere/auth_parameters'
require_relative 'aws-sdk-rolesanywhere/auth_resolver'
require_relative 'aws-sdk-rolesanywhere/client'
require_relative 'aws-sdk-rolesanywhere/errors'
require_relative 'aws-sdk-rolesanywhere/endpoint_parameters'
require_relative 'aws-sdk-rolesanywhere/endpoint_provider'
require_relative 'aws-sdk-rolesanywhere/waiters'
require_relative 'aws-sdk-rolesanywhere/customizations'
