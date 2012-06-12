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

module AWS
  class CloudWatch

    #
    # @attr_reader [String] namespace
    #
    # @attr_reader [String] metric_name
    #
    # @attr_reader [Array<Hash>] dimensions
    #
    class MetricCollection

      include Core::Collection::Limitable

      # @private
      def initialize options = {}
        @namespace = options[:namespace]
        @metric_name = options[:metric_name]
        @dimensions = options[:dimensions]
        super
      end

      attr_reader :namespace

      attr_reader :metric_name

      alias_method :name, :metric_name

      attr_reader :dimensions

      protected
      def _each_item next_token, limit, options = {}, &block
        options[:namespace] = namespace if namespace
        options[:metric_name] = metric_name if metric_name
        if dimensions and not dimensions.empty?
          options[:dimensions] = dimensions.to_a.map { |d| d.is_a?(Hash) ? d : d.to_hash }
        end
        options[:next_token] = next_token if next_token
        options[:max_records] = limit if limit

        resp = client.list_metrics(options)
        resp.metrics.each do |details|
          metric = Metric.new_from(
            :list_metrics, details, 
            details.namespace, details.metric_name,
            :dimensions => details[:dimensions], :config => config)
          yield(metric)
        end
        resp.data[:next_token]
      end
    end
  end
end
