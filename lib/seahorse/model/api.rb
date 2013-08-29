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
    class Api < Node

      property :version, String
      property :endpoint, String
      property :metadata, Hash
      property :plugins, [String]
      property :documentation, String
      property :operations, LazyOperationHash

      def initialize(*)
        super
        self.metadata = {}
        self.operations = LazyOperationHash.new
      end

      def validate!
        operations.load!
        true
      end

      def to_hash
        operations.load!
        hash = super
        hash.delete('metadata') if hash['metadata'].empty?
        hash
      end

    end
  end
end
