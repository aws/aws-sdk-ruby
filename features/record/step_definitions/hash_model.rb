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

Around("@orm", "@hash_model") do |scenario,block|

  class ExampleClass < AWS::Record::HashModel; end

  block.call

  Object.send(:remove_const, :ExampleClass)

end

Given /^I configure the HashModel example class with:$/ do |string|
  ExampleClass.module_eval(expression)
end
