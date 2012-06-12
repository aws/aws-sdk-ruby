# Copyright 2011-2012 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#.kkk:w

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

module AWS
  class CloudWatch

    # @attr_reader [String] namespace
    #
    # @attr_reader [String] name
    #
    # @attr_reader [Array<Hash>] dimensions
    #
    class Metric < Core::Resource

      # @private
      def initialize namespace, metric_name, options = {}
        @namespace = namespace
        @metric_name = metric_name
        @dimensions = options[:dimensions]
        super
      end

      attr_reader :namespace

      attr_reader :metric_name

      alias_method :name, :metric_name

      attr_reader :dimensions

      # @return [MetricAlarmCollection]
      def alarms options = {}
        MetricAlarmCollection.new(options.merge(:metric => self, :config => config))
      end

      # @return [Boolean] Returns true if this metric exists.
      def exists?
        !!get_resource.metrics.first
      end

      protected
      def resource_identifiers
        [[:namespace, namespace], [:metric_item, metric_name], [:dimensions, (dimensions || []).to_a]]
      end

      def get_resource attr_name = nil
        client.list_metrics(:dimensions => dimensions, :metric_name => metric_name, :namespace => namespace)
      end
    end
  end
end
