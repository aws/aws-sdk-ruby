# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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

require 'yaml'

module AWS
  module Core

    # @private
    class ApiConfigTransform

      def self.rename_input_list_to_membered_list api_config
        api_config[:operations].each_pair do |name,customizations|

          input = api_config[:operations][name][:input]
          fixed_input = input.to_yaml.gsub(/:list:/, ':membered_list:')

          api_config[:operations][name][:input] = YAML.load(fixed_input)

        end
        api_config
      end

    end
  end
end
