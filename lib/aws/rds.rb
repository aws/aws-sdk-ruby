# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/core'
require 'aws/rds/config'
require 'time'

module AWS

  class RDS

    AWS.register_autoloads(self) do
      autoload :Client, 'client'
      autoload :Errors, 'errors'
      autoload :DBInstance, 'db_instance'
      autoload :DBInstanceCollection, 'db_instance_collection'
      autoload :DBSnapshot, 'db_snapshot'
      autoload :DBSnapshotCollection, 'db_snapshot_collection'
      autoload :Request, 'request'
    end

    include Core::ServiceInterface

    def db_instances
      DBInstanceCollection.new(:config => config)
    end
    alias_method :instances, :db_instances

    def db_snapshots
      DBSnapshotCollection.new(:config => config)
    end
    alias_method :snapshots, :db_snapshots

  end
end
