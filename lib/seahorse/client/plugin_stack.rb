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

# class Plugin
#
#   def configure(config_class)
#   end
#
#   def setup(stack, config)
#     stack.on(:validate) # `call` method on self implied
#     stack.on(:serialize, :some_method) `some_method` on self implied
#     stack.on(:serialize, obj) `call` on obj implied
#     stack.on(:serialize) do |plugin, request|
#       # ...
#     end
#   end
#
#   def teardown
#     # for cleaning up resources
#   end
#
#   def validate(plugin, request)
#     plugin.call(request)
#   end
#
#   def serialize(plugin, request)
#     plugin.call(request)
#   end
#
# end

module Seahorse
  class Client
    class PluginStack
    end
  end
end
