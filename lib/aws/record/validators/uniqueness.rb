# Copyright 2011-2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'aws/record/validator'

module AWS
  module Record

    # @private
    class UniquenessValidator < Validator

      ACCEPTED_OPTIONS = [:message, :scope, :allow_nil, :allow_blank, :if, :unless]

      def validate_attribute record, attribute_name, value

        # @TODO - Model the initial relation setup after the setup
        # found in ActiveRecord::Validations::UniquenessValidator.
        # Not sure it we have to go to such lengths or not...
        relation = record.class

        scope_array(options[:scope]).each do |scope_item|
          scope_value = record.send(scope_item.to_sym)
          relation = relation.where(scope_item.to_sym => scope_value)
        end
        existing_record = AWS::SimpleDB.consistent_reads do
          relation.where(attribute_name.to_sym => value).first
        end
        taken = !existing_record.nil?

        record.errors.add(attribute_name, message) if taken #blank

      end

      def message
        options[:message] || 'has already been taken'
      end

      protected
      def scope_array(scope)
        if scope.nil?
          []
        elsif scope.is_a? Array
          scope
        else
          [scope]
        end
      end

    end
  end
end

