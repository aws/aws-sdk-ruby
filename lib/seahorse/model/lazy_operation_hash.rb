# Copyright 2013 Amazon.com, Inc. or its affiliates. All Rights Reserved.
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


module Seahorse
  module Model
    class LazyOperationHash < Hash
      def initialize(raw_data = {})
        @raw_data = raw_data.dup
      end

      def [](name)
        load_data(name.to_s, super(name.to_s))
      end

      def []=(name, value)
        @raw_data.delete(name.to_s)
        super(name.to_s, value)
      end

      def load!
        @raw_data.each {|k, v| load_data(k, v) }
      end

      private

      alias raw_each each

      def load_data(name, data)
        return data unless @raw_data.has_key?(name)
        self[name] = Operation.from_hash(@raw_data[name])
      end

      Hash.instance_methods.each do |meth|
        next if meth =~ /^__|^(\[\]=?|initialize|default|object_id)$/
        class_eval(<<-eof, __FILE__, __LINE__ + 1)
          def #{meth}(*args, &block)
            load!
            super(*args, &block)
          end
        eof
      end
    end
  end
end
