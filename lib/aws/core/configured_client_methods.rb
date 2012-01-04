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

    # @private
    module ConfiguredClientMethods
  
      # @private
      module ClassMethods
  
        include ApiConfig
  
        def configure_client
  
          super
  
          unless self::XML.include?(ConfiguredXmlGrammars)
            self::XML.module_eval do
              include(ConfiguredXmlGrammars)
              define_configured_grammars
            end
          end
  
          unless self::Options.include?(ConfiguredOptionGrammars)
            self::Options.module_eval do
              include(ConfiguredOptionGrammars)
              define_configured_grammars
            end
          end
  
          api_config[:operations].each do |name, customizations|
            option_grammar = self::Options.operation_grammar(name)
            add_client_request_method(Inflection.ruby_name(name).to_sym,
                                      :xml_grammar =>
                                      self::XML.operation_grammar(name)) do
              configure_request do |request, options|
                request.add_param("Action", name)
                option_grammar.request_params(options).each do |param|
                  request.add_param(param)
                end
              end
            end
          end
           
        end
  
        def operation_xml_grammar(name)
          customized_name = "Customized#{name}"
          if self::XML.const_defined?(customized_name)
            self::XML.const_get(customized_name)
          else
            self::XML.const_get(name)
          end
        end
  
      end
  
      def self.included(mod)
        mod.extend(ClassMethods)
      end
  
    end
  end
end
