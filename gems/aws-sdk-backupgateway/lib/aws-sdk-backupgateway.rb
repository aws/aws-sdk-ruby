# frozen_string_literal: true

# This is generated code!

require 'smithy-cbor'
require 'aws-sdk-core'
require 'smithy-json'
require 'aws-sigv4'
require 'smithy-client'

Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BackupGateway', Module.new) unless Aws.const_defined?('BackupGateway')

# @title AWS Backup Gateway
# <fullname>Backup gateway</fullname> <p>Backup gateway connects Backup to your hypervisor, so you can create, store, and restore backups of your virtual machines (VMs) anywhere, whether on-premises or in the VMware Cloud (VMC) on Amazon Web Services.</p> <p>Add on-premises resources by connecting to a hypervisor through a gateway. Backup will automatically discover the resources in your hypervisor.</p> <p>Use Backup to assign virtual or on-premises resources to a backup plan, or run on-demand backups. Once you have backed up your resources, you can view them and restore them like any resource supported by Backup.</p> <p>To download the Amazon Web Services software to get started, navigate to the Backup console, choose <b>Gateways</b>, then choose <b>Create gateway</b>.</p>
module Aws::BackupGateway
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-backupgateway/types'
require_relative 'aws-sdk-backupgateway/paginators'
require_relative 'aws-sdk-backupgateway/schema'
require_relative 'aws-sdk-backupgateway/auth_parameters'
require_relative 'aws-sdk-backupgateway/auth_resolver'
require_relative 'aws-sdk-backupgateway/client'
require_relative 'aws-sdk-backupgateway/errors'
require_relative 'aws-sdk-backupgateway/endpoint_parameters'
require_relative 'aws-sdk-backupgateway/endpoint_provider'
require_relative 'aws-sdk-backupgateway/waiters'
require_relative 'aws-sdk-backupgateway/customizations'
