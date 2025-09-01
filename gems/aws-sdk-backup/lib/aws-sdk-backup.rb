# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('Backup', Module.new) unless Aws.const_defined?('Backup')

# @title AWS Backup
# <fullname>Backup</fullname>
#          <p>Backup is a unified backup service designed to protect Amazon Web Services
#          services and their associated data. Backup simplifies the creation, migration,
#          restoration, and deletion of backups, while also providing reporting and
#          auditing.</p>
module Aws::Backup
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-backup/types'
require_relative 'aws-sdk-backup/paginators'
require_relative 'aws-sdk-backup/schema'
require_relative 'aws-sdk-backup/auth_parameters'
require_relative 'aws-sdk-backup/auth_resolver'
require_relative 'aws-sdk-backup/client'
require_relative 'aws-sdk-backup/customizations'
require_relative 'aws-sdk-backup/errors'
require_relative 'aws-sdk-backup/endpoint_parameters'
require_relative 'aws-sdk-backup/endpoint_provider'
require_relative 'aws-sdk-backup/waiters'
