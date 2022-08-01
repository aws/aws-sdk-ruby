# # frozen_string_literal: true
#
# module Aws
#   module Endpoints
#   class Provider
#     def initialize(options = {})
#       @rules = options[:rules] || []
#       @endpoints = options[:endpoints] || endpoints(@rules)
#     end
#
#     def build(endpoint_options = {})
#       endpoint = @endpoints.find { |e| e.match?(endpoint_options) }
#       # need to dup because we modify the endpoint object
#       endpoint = Marshal.load(Marshal.dump(endpoint)) if endpoint
#
#       # TODO - raise a better error
#       if endpoint.nil?
#         raise ArgumentError, "no matches"
#       elsif endpoint.error?
#         raise ArgumentError, endpoint.error
#       end
#       # TODO - maybe these shouldn't exist here
#       endpoint.sub_modify_params!(endpoint_options)
#       endpoint.sub_auth_params!(endpoint_options)
#       endpoint.sub_headers!(endpoint_options)
#       endpoint.sub_url!(endpoint_options)
#
#       endpoint
#     end
#
#     private
#
#     def endpoints(rules = [])
#       endpoints = []
#       rules.each do |rule|
#         endpoints << Aws::Endpoint.new(rule)
#       end
#       endpoints
#     end
#   end
# end
# end
