# require 'spec_helper'
# 
# module Seahorse
#   module Client
#     module Plugins
#       class Endpoint
#         describe RequestUriBuilder do
# 
#           let(:members) { {} }
# 
#           let(:definition) {{
#             'type' => 'structure',
#             'members' => members,
#           }}
# 
#           def request_uri(uri_template, params)
#             structure = Model::Shapes::Shape.new(definition)
#             RequestUriBuilder.new(uri_template, structure).request_uri(params)
#           end
# 
#           it 'does not modify paths without placeholders' do
#             path = request_uri('/', {})
#             expect(path).to eq('/')
#           end
# 
#           describe 'path params' do
# 
#             it 'replaces querystring placeholders' do
#               members['user_name'] = {
#                 'type' => 'string',
#                 'location' => 'uri',
#                 'serialized_name' => 'id'
#               }
#               path = request_uri('/{id}', user_name: 'abc')
#               expect(path).to eq('/abc')
#             end
# 
#             it 'uri escapes path params' do
#               members['user_name'] = {
#                 'type' => 'string',
#                 'location' => 'uri',
#                 'serialized_name' => 'id'
#               }
#               path = request_uri('/{id}', user_name: 'foo&bar')
#               expect(path).to eq('/foo%26bar')
#             end
# 
#             it 'it does not escape forward slashes when using +' do
#               members['foo'] = {
#                 'type' => 'string',
#                 'location' => 'uri',
#                 'serialized_name' => 'foo'
#               }
#               path = request_uri('/{foo}/yuck', foo: 'foo/bar')
#               expect(path).to eq('/foo/bar/yuck')
#             end
# 
#           end
# 
#           describe 'querystring params' do
# 
#             it 'replaces querystring placeholders' do
#               members['foo'] = {
#                 'type' => 'string',
#                 'location' => 'querystring',
#                 'serialized_name' => 'foo'
#               }
#               path = request_uri('/path', { foo: 'bar'})
#               expect(path).to eq('/path?foo=bar')
#             end
# 
#             it 'omits missing querystring params' do
#               members['mno'] = {
#                 'type' => 'string',
#                 'location' => 'querystring',
#                 'serialized_name' => 'Mno'
#               }
#               members['xyz'] = {
#                 'type' => 'string',
#                 'location' => 'querystring',
#                 'serialized_name' => 'Xyz'
#               }
#               path = request_uri('/path', { mno: '123' })
#               expect(path).to eq('/path?Mno=123')
#             end
# 
#             it 'appends querystring params to the request uri' do
#               members['abc'] = {
#                 'type' => 'string',
#                 'location' => 'querystring',
#                 'serialized_name' => 'Abc'
#               }
#               path = request_uri('/path?acl', abc: 'xyz')
#               expect(path).to eq('/path?acl&Abc=xyz')
#             end
# 
#             it 'uri escapes querystring params' do
#               members['abc'] = {
#                 'type' => 'string',
#                 'location' => 'querystring',
#                 'serialized_name' => 'Abc'
#               }
#               members['xyz'] = {
#                 'type' => 'string',
#                 'location' => 'querystring',
#                 'serialized_name' => 'Xyz'
#               }
#               path = request_uri('/', abc: 'a b', xyz: 'foo&bar')
#               expect(path).to eq('/a%20b?Xyz=foo%26bar')
#             end
# 
#           end
#         end
#       end
#     end
#   end
# end
