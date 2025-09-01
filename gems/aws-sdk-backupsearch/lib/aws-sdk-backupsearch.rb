# frozen_string_literal: true

# This is generated code!

require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('BackupSearch', Module.new) unless Aws.const_defined?('BackupSearch')

# @title AWS Backup Search
# <fullname>Backup Search</fullname> <p>Backup Search is the recovery point and item level search for Backup.</p> <p>For additional information, see:</p> <ul> <li> <p> <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/api-reference.html">Backup API Reference</a> </p> </li> <li> <p> <a href="https://docs.aws.amazon.com/aws-backup/latest/devguide/whatisbackup.html">Backup Developer Guide</a> </p> </li> </ul>
module Aws::BackupSearch
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-backupsearch/types'
require_relative 'aws-sdk-backupsearch/paginators'
require_relative 'aws-sdk-backupsearch/schema'
require_relative 'aws-sdk-backupsearch/auth_parameters'
require_relative 'aws-sdk-backupsearch/auth_resolver'
require_relative 'aws-sdk-backupsearch/client'
require_relative 'aws-sdk-backupsearch/customizations'
require_relative 'aws-sdk-backupsearch/errors'
require_relative 'aws-sdk-backupsearch/endpoint_parameters'
require_relative 'aws-sdk-backupsearch/endpoint_provider'
require_relative 'aws-sdk-backupsearch/waiters'
