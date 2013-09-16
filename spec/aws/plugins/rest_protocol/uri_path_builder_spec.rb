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

module Aws
  module Plugins
    class RestProtocol
      describe UriPathBuilder do

        let(:rules) {{ 'type' => 'input', 'members' => {} }}

        def path_for(pattern, params)
          input = Seahorse::Model::Shapes::Shape.from_hash(rules)
          UriPathBuilder.new(pattern, input.uri_members).path(params)
        end

        it 'does not modify paths without placeholders' do
          path = path_for('/', {})
          expect(path).to eq('/')
        end

        describe 'path params' do

          it 'replaces querystring placeholders' do
            rules['members'] = {
              'foo' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/{foo}', foo: 'bar')
            expect(path).to eq('/bar')
          end

          it 'uri escapes path params' do
            rules['members'] = {
              'foo' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/{foo}', foo: 'foo&bar')
            expect(path).to eq('/foo%26bar')
          end

          it 'it does not escape forward slashes' do
            rules['members'] = {
              'foo' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/{foo}/yuck', foo: 'foo/bar')
            expect(path).to eq('/foo/bar/yuck')
          end

        end

        describe 'querystring params' do

          it 'replaces querystring placeholders' do
            rules['members'] = {
              'foo' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/path?foo={foo}', { foo: 'bar'})
            expect(path).to eq('/path?foo=bar')
          end

          it 'removes empty querystring params' do
            rules['members'] = {
              'mno' => { 'type' => 'string', 'location' => 'uri' },
              'xyz' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/path?Mno={mno}&Xyz={xyz}', { mno: '123' })
            expect(path).to eq('/path?Mno=123')
          end

          it 'prunes the querystring if empty' do
            rules['members'] = {
              'mno' => { 'type' => 'string', 'location' => 'uri' },
              'xyz' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/path?Mno={mno}Xyz={xyz}', {})
            expect(path).to eq('/path')
          end

          it 'uri escapes querystring params' do
            rules['members'] = {
              'abc' => { 'type' => 'string', 'location' => 'uri' },
              'xyz' => { 'type' => 'string', 'location' => 'uri' }
            }
            path = path_for('/{abc}?Xyz={xyz}', abc: 'a b', xyz: 'foo&bar')
            expect(path).to eq('/a%20b?Xyz=foo%26bar')
          end

        end
      end
    end
  end
end
