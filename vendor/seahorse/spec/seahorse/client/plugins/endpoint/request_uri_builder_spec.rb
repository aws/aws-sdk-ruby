require 'spec_helper'

module Seahorse
  module Client
    module Plugins
      class Endpoint
        describe RequestUriBuilder do

          let(:rules) {{ 'type' => 'input', 'members' => {} }}

          def path_for(pattern, params)
            input = Model::Shapes::Shape.from_hash(rules)
            RequestUriBuilder.new(pattern, input.uri_members).path(params)
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
end
