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

require 'multi_json'

module Aws
  module Plugins
    class VersionedApiLoader < Seahorse::Client::Plugin

      option(:api_version)

      client_class_for do |klass, options|
        version = latest_api_version(klass, options[:api_version])
        const_name = "V#{version.gsub('-', '')}"

        if klass.const_defined?(const_name)
          klass.const_get(const_name)
        else
          file = api_config_file(klass, version)
          json = MultiJson.load(File.read(file), max_nesting: false)
          new_klass = klass.define(api: json)
          new_klass.remove_plugin(VersionedApiLoader)
          klass.const_set(const_name, new_klass)
        end
      end

      private

      def api_config_file(klass, version)
        api_versions(klass)[version]
      end

      def latest_api_version(klass, version)
        version ||= Aws.config[:api_version] || 'latest'
        versions, last_version = api_versions(klass), nil
        versions.keys.each do |key|
          last_version = key if key <= version
        end

        if last_version.nil?
          raise ArgumentError, "could not find matching API version for #{version}"
        else
          last_version
        end
      end

      def api_versions(klass)
        klass.api.metadata['aws_api_versions']
      end
    end
  end
end
