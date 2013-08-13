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


module Aws
  module Plugins
    class VersionedApiLoader < Seahorse::Client::Plugin

      option(:api_version)

      client_class_for do |klass, options|
        unless options[:api_version]
          raise ArgumentError, 'missing option :api_version'
        end

        const_name = "V#{options[:api_version].gsub('-', '')}"

        if klass.const_defined?(const_name)
          klass.const_get(const_name)
        else
          file = api_config_file(klass, options)
          json = JSON.parse(File.read(file))
          json['metadata'] = {
            'regional_endpoint' => json['endpoint_prefix'] + '.%s.amazonaws.com',
            'aws_endpoint_prefix' => json['target_prefix']
          }
          new_klass = klass.define(api: json)
          new_klass.remove_plugin(VersionedApiLoader)
          klass.const_set(const_name, new_klass)
        end
      end

      private

      def api_config_file(klass, options)
        klass.api.metadata['aws_api_versions'][options[:api_version]]
      end

    end
  end
end
