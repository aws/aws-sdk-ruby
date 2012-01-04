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

require 'spec_helper'

module AWS::Core
  describe Inflection do

    context '#ruby_name' do

      it 'strips namespace' do
        Inflection.ruby_name('Foo::Bar::Yuck::AbcXyz').should == 'abc_xyz'
      end

      it 'leaves lowercased words alone' do
        Inflection.ruby_name('foo').should == 'foo'
      end

      it 'leaves lowercased underscored words alone' do
        Inflection.ruby_name('foo_bar').should == 'foo_bar'
      end

      it 'inflects titleized words' do
        Inflection.ruby_name('Foo').should == 'foo'
      end

      it 'inflects acroynms' do
        Inflection.ruby_name('AWS').should == 'aws'
      end

      it 'inflects leading caps (upper camel case) words' do
        Inflection.ruby_name('FooBarYuck').should == 'foo_bar_yuck'
      end

      ## special cases from actual use

      it 'inflects words with trailing acroynms' do
        Inflection.ruby_name('SimpleDB').should == 'simple_db'
      end

      it 'inflects acroynms with numbers' do
        Inflection.ruby_name('EC2').should == 'ec2'
      end

      it 'inflects SentLast24Hours to sent_last_24_hours' do
        Inflection.ruby_name('SentLast24Hours').should == 'sent_last_24_hours'
      end

      it 'inflects AWSAccountID to aws_account_id' do
        Inflection.ruby_name('AWSAccountID').should == 'aws_account_id'
      end

      it 'inflects MD5OfBody to md5_of_body' do
        Inflection.ruby_name('MD5OfBody').should == 'md5_of_body'
      end

      ## exceptional case, this one is handled individually currently

      it 'inflects ETag to etag (irregular inflection, should be e_tag)' do
        Inflection.ruby_name('ETag').should == 'etag'
      end

    end

    context '#class_name' do

      it 'inflects foo to Foo' do
        Inflection.class_name('foo').should == 'Foo'
      end

      it 'inflects foo_bar to FooBar' do
        Inflection.class_name('foo_bar').should == 'FooBar'
      end

      it 'inflects FooBar to FooBar' do
        Inflection.class_name('FooBar').should == 'FooBar'
      end

      it 'inflects foo-bar to FooBar' do
        Inflection.class_name("foo-bar").should == "FooBar"
      end

    end

  end
end
