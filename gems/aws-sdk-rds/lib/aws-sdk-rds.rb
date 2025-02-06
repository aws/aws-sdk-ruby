# frozen_string_literal: true

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE


require 'aws-sdk-core'
require 'aws-sigv4'

Aws::Plugins::GlobalConfiguration.add_identifier(:rds)

# This module provides support for Amazon Relational Database Service. This module is available in the
# `aws-sdk-rds` gem.
#
# # Client
#
# The {Client} class provides one method for each API operation. Operation
# methods each accept a hash of request parameters and return a response
# structure.
#
#     rds = Aws::RDS::Client.new
#     resp = rds.add_role_to_db_cluster(params)
#
# See {Client} for more information.
#
# # Errors
#
# Errors returned from Amazon Relational Database Service are defined in the
# {Errors} module and all extend {Errors::ServiceError}.
#
#     begin
#       # do stuff
#     rescue Aws::RDS::Errors::ServiceError
#       # rescues all Amazon Relational Database Service API errors
#     end
#
# See {Errors} for more information.
#
# @!group service
module Aws::RDS
  autoload :Types, 'aws-sdk-rds/types'
  autoload :ClientApi, 'aws-sdk-rds/client_api'
  module Plugins
    autoload :Endpoints, 'aws-sdk-rds/plugins/endpoints.rb'
  end
  autoload :Client, 'aws-sdk-rds/client'
  autoload :Errors, 'aws-sdk-rds/errors'
  autoload :Waiters, 'aws-sdk-rds/waiters'
  autoload :Resource, 'aws-sdk-rds/resource'
  autoload :EndpointParameters, 'aws-sdk-rds/endpoint_parameters'
  autoload :EndpointProvider, 'aws-sdk-rds/endpoint_provider'
  autoload :Endpoints, 'aws-sdk-rds/endpoints'
  autoload :AccountQuota, 'aws-sdk-rds/account_quota'
  autoload :Certificate, 'aws-sdk-rds/certificate'
  autoload :DBCluster, 'aws-sdk-rds/db_cluster'
  autoload :DBClusterParameterGroup, 'aws-sdk-rds/db_cluster_parameter_group'
  autoload :DBClusterSnapshot, 'aws-sdk-rds/db_cluster_snapshot'
  autoload :DBEngine, 'aws-sdk-rds/db_engine'
  autoload :DBEngineVersion, 'aws-sdk-rds/db_engine_version'
  autoload :DBInstance, 'aws-sdk-rds/db_instance'
  autoload :DBLogFile, 'aws-sdk-rds/db_log_file'
  autoload :DBParameterGroup, 'aws-sdk-rds/db_parameter_group'
  autoload :DBParameterGroupFamily, 'aws-sdk-rds/db_parameter_group_family'
  autoload :DBSecurityGroup, 'aws-sdk-rds/db_security_group'
  autoload :DBSnapshot, 'aws-sdk-rds/db_snapshot'
  autoload :DBSnapshotAttribute, 'aws-sdk-rds/db_snapshot_attribute'
  autoload :DBSubnetGroup, 'aws-sdk-rds/db_subnet_group'
  autoload :EventCategoryMap, 'aws-sdk-rds/event_category_map'
  autoload :Event, 'aws-sdk-rds/event'
  autoload :EventSubscription, 'aws-sdk-rds/event_subscription'
  autoload :OptionGroup, 'aws-sdk-rds/option_group'
  autoload :OptionGroupOption, 'aws-sdk-rds/option_group_option'
  autoload :Parameter, 'aws-sdk-rds/parameter'
  autoload :PendingMaintenanceAction, 'aws-sdk-rds/pending_maintenance_action'
  autoload :ReservedDBInstance, 'aws-sdk-rds/reserved_db_instance'
  autoload :ReservedDBInstancesOffering, 'aws-sdk-rds/reserved_db_instances_offering'
  autoload :ResourcePendingMaintenanceActionList, 'aws-sdk-rds/resource_pending_maintenance_action_list'

  GEM_VERSION = '1.269.0'

end

require_relative 'aws-sdk-rds/customizations'
