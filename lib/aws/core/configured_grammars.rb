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
    module ConfiguredGrammars
  
      # @private
      module ClassMethods
  
        include ApiConfig
  
        def base_grammar
          raise NotImplementedError
        end
  
        def operation_grammar(name)
          customized_name = "Customized#{name}"
          if const_defined?(customized_name)
            const_get(customized_name)
          else
            const_get(name)
          end
        end
  
        def input_or_output
          raise NotImplementedError
        end
  
        def process_customizations(name, customizations)
          customizations
        end
  
        def define_configured_grammars
          api_config[:operations].each do |name, data|
            customizations = process_customizations(name,
                                                    data[input_or_output])
            const_set(name,
                      base_grammar.customize(customizations))
            #                     BaseResponse.customize([{
            #                                               "#{name}Result" =>
            #                                               [:ignore, *data[:output]]
            #                                             }]))
          end
        end
  
      end
  
    end
  end
end
