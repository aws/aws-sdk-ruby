# frozen_string_literal: true

# This is generated code!

require 'aws-sigv4'
require 'aws-sdk-core'
require 'smithy-json'
require 'smithy-client'


Object.const_set('Aws', Module.new) unless Object.const_defined?('Aws')
Aws.const_set('DatabaseMigrationService', Module.new) unless Aws.const_defined?('DatabaseMigrationService')

# @title AWS Database Migration Service
# <fullname>Database Migration Service</fullname>
#          <p>Database Migration Service (DMS) can migrate your data to and from the most
#          widely used commercial and open-source databases such as Oracle, PostgreSQL, Microsoft SQL
#          Server, Amazon Redshift, MariaDB, Amazon Aurora, MySQL, and SAP Adaptive Server Enterprise
#          (ASE). The service supports homogeneous migrations such as Oracle to Oracle, as well as
#          heterogeneous migrations between different database platforms, such as Oracle to MySQL or
#          SQL Server to PostgreSQL.</p>
#          <p>For more information about DMS, see <a href="https://docs.aws.amazon.com/dms/latest/userguide/Welcome.html">What Is Database Migration Service?</a>
#          in the <i>Database Migration Service User Guide.</i>
#          </p>
module Aws::DatabaseMigrationService
  VERSION = '2.0.0.pre0'
end

require_relative 'aws-sdk-databasemigrationservice/types'
require_relative 'aws-sdk-databasemigrationservice/paginators'
require_relative 'aws-sdk-databasemigrationservice/schema'
require_relative 'aws-sdk-databasemigrationservice/auth_parameters'
require_relative 'aws-sdk-databasemigrationservice/auth_resolver'
require_relative 'aws-sdk-databasemigrationservice/client'
require_relative 'aws-sdk-databasemigrationservice/customizations'
require_relative 'aws-sdk-databasemigrationservice/errors'
require_relative 'aws-sdk-databasemigrationservice/endpoint_parameters'
require_relative 'aws-sdk-databasemigrationservice/endpoint_provider'
require_relative 'aws-sdk-databasemigrationservice/waiters'
