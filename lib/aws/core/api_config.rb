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

require 'yaml'
require 'pathname'

module AWS
  module Core

    # @private
    module ApiConfig

      include Naming

      protected
      def api_config

        config_file = $:.map do |load_path|
          if config_dir = Pathname.new(load_path) +
              "aws" + "api_config" and
              config_dir.directory?
            config_dir.children.select do |child|
              child.basename.to_s =~ /^#{service_name}/
            end.sort.last
          end
        end.compact.sort.last

        YAML.load(config_file.read)

      end

    end
  end
end
