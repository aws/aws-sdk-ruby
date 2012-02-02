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

require 'json'

module AWS
  module Core

    # @private
    module ConfiguredJsonClientMethods

      # @private
      module ClassMethods

        include ApiConfig

        def configure_client

          super

          unless self::Options.include?(ConfiguredOptionGrammars)
            self::Options.module_eval do
              include(ConfiguredOptionGrammars)
              define_configured_grammars
            end
          end

          api_config[:operations].each do |name, customizations|
            option_grammar = self::Options.operation_grammar(name)
            target_prefix = self::TARGET_PREFIX
            add_client_request_method(Inflection.ruby_name(name).to_sym) do

              configure_request do |request, options|
                request.headers["x-amz-target"] = target_prefix + name
                request.body = option_grammar.to_json(options)
              end

              process_response do |response|
                response_body = response.http_response.body
                response_body = "{}" if response_body == ""
                data = JSON.load(response_body)
                MetaUtils.extend_method(response, :data) { data }
              end

              simulate_response do |response|
                data = {}
                MetaUtils.extend_method(response, :data) { data }
              end

            end
          end

        end

      end

      def self.included(mod)
        mod.extend(ClassMethods)
      end

    end

  end
end
