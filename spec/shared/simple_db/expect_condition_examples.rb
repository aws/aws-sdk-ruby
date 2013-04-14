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

require 'spec_helper'

module AWS

  shared_examples_for "sdb expect conditions" do

    context ':if' do

      it 'accepts a hash with a string key' do
        should_expect(:name => 'version',
                      :value => '1')
        do_with_condition(:if => { 'version' => '1' })
      end

      it 'accepts a hash with a symbol key' do
        should_expect(:name => 'version',
                      :value => '1')
        do_with_condition(:if => { :version => '1' })
      end

    end

    context ':unless' do

      it 'accepts an attribute name as a string' do
        should_expect(:name => 'immutable',
                      :exists => false)
        do_with_condition(:unless => 'immutable')
      end

      it 'accepts a symbol attribute name' do
        should_expect(:name => 'immutable',
                      :exists => false)
        do_with_condition(:unless => :immutable)
      end

    end

  end

end
