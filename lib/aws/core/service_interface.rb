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
  module Core

    module ServiceInterface

      def self.included base

        base.send(:attr_reader, :config)
        base.send(:attr_reader, :client)

        base.module_eval('module Errors; end')

        unless base::Errors.include?(Errors)
          base::Errors.module_eval { include Errors }
        end

      end

      # Returns a new interface object for this service.  You can override
      # any of the global configuration parameters by passing them in as
      # hash options.  They are merged with AWS.config or merged
      # with the provided +:config+ object.
      #
      #   @ec2 = AWS::EC2.new(:max_retries => 2)
      #
      # @see AWS::Cofiguration
      #
      # @param [Hash] options
      #
      # @option options [Configuration] :config An AWS::Configuration
      #   object to initialize this service interface object with.  Defaults
      #   to AWS.config when not provided.
      #
      def initialize options = {}
        @config = options[:config]
        @config ||= AWS.config
        @config = @config.with(options)
        @client = config.send(Inflection.ruby_name(self.class.to_s) + '_client')
      end

      # @return [String]
      def inspect
        "<#{self.class}>"
      end

    end
  end
end
