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
  class CloudFormation

    # A stack summary contains some information about a stack.  You 
    # can get summary information on any stack (including stacks
    # deleted within the last 90 days).
    #
    # To get summary information, enumerate the summaries on an
    # AWS::CloudFormation object:
    #
    #   cf = AWS::CloudFormation.new
    #   cf.stack_summaries.each do |summary|
    #      puts "#{summary.stack_name} : #{summary.stack_status}"
    #   end
    #
    # You can get the full {Stack} object from a summary by calling
    # {#stack}.
    #
    class StackSummary

      # @private
      def initialize stack, details
        @stack = stack
        details.each_pair do |attr_name,attr_value|
          instance_variable_set("@#{attr_name}", attr_value)
        end
      end

      # @return [Stack]
      attr_reader :stack

      # @return [Time]
      attr_reader :creation_time

      # @return [Time,nil]
      attr_reader :last_updated_time

      # @return [String]
      attr_reader :stack_name

      # @return [String]
      attr_reader :stack_id

      # @return [String]
      attr_reader :stack_status

      # @return [String]
      attr_reader :stack_status_reason

      # @return [Time,nil]
      attr_reader :deletion_time

      # @return [Strin]
      attr_reader :template_description

    end
  end
end
