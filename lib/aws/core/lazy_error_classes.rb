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

module AWS
  module Core

    # @private
    module LazyErrorClasses
  
      # @private
      module ClassMethods
  
        def const_missing(name)
          base_error_grammar = self::BASE_ERROR_GRAMMAR
          const_missing_mutex.synchronize do
            return if const_defined?(name)
            const_set(name,
                      Class.new(self::Base) do
                        include Errors::ModeledError
  
                        # so that MyService::Errors::Foo::Bar will work
                        const_set(:BASE_ERROR_GRAMMAR, base_error_grammar)
                        include LazyErrorClasses
                      end)
          end
        end
  
        def error_class(code)
          module_eval(code.gsub(".","::"))
        end
  
        def included(mod)
          raise NotImplementedError.new("#{self} lazy-generates error classes; "+
                                        "therefore it is not suitable for "+
                                        "inclusion in other modules")
        end
  
      end
  
      def self.included(mod)
        unless mod.const_defined?(:BASE_ERROR_GRAMMAR)
          mod.const_set(:BASE_ERROR_GRAMMAR, XmlGrammar)
        end
        mutex = Mutex.new
        MetaUtils.extend_method(mod, :const_missing_mutex) { mutex }
        mod.send(:include, Errors)
        mod.extend(ClassMethods)
      end
  
    end
  end
end
