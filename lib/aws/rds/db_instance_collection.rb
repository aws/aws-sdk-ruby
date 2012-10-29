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


require 'date'
require 'time'

module AWS
  class RDS
    class DBInstanceCollection

      include Core::Collection::WithLimitAndNextToken

      # @private
      def initialize options = {}
        @filters = options[:filters] || {}
        super
      end

      # @param [String] db_instance_id
      # @return [DBInstance] Returns a {DBInstance} with the given ID.
      def [] db_instance_id
        DBInstance.new(db_instance_id, :config => config)
      end

      def create name, options = {}
        options[:db_instance_identifier] = name
        response = client.create_db_instance(options)

        self[response.data[:db_instance][:db_instance_identifier]]
      end

      protected

      def _each_item marker, max_records, options = {}, &block

        options = @filters.merge(options)
        options[:marker] = marker if marker
        options[:max_records] = [[20,max_records].max,100].min if max_records

        response = client.describe_db_instances(@filters.merge(options))
        response.data[:db_instances].each do |details|

          db_instance = DBInstance.new_from(
              :describe_db_instances,
              details,
              details[:db_instance_identifier],
              :config => config)

          yield(db_instance)

        end

        response.data[:marker]
      end

    end
  end
end
