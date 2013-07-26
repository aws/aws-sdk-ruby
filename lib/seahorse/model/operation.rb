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
    class Operation < Node
      property :name, String
      property :documentation, String
      property :http_uri, String, in: :http, name: :uri
      property :http_verb, String, in: :http, name: :method
      property :input, Shape, always_serialize: true
      property :output, Shape, always_serialize: true
      property :errors, [Shape]
    end
  end
end
