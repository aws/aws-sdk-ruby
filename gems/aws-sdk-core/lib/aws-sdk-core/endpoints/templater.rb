# frozen_string_literal: true

module Aws
  module Endpoints
    # Does substitutions for templated endpoint strings
    # @api private
    module Templater
      class << self
        def resolve(string, parameters, assigns)
          # scans for strings in curly brackets {}
          string.scan(/\{.+?\}/).each do |capture|
            value = capture[1..-2] # strips curly brackets
            string = string.gsub(capture, replace(value, parameters, assigns))
          end
          string
        end

        private

        # Replaces the captured value with values from parameters or assign
        def replace(capture, parameters, assigns)
          # Pound sigil is used for getAttr calls
          indexes = capture.split('#')

          # no sigil found, just do substitution
          if indexes.size == 1
            extract_value(capture, parameters, assigns)
          # sigil was found, need to call getAttr
          elsif indexes.size == 2
            ref, property = indexes
            param = extract_value(ref, parameters, assigns)
            Matchers.attr(param, property)
          else
            raise "Invalid templatable value: #{capture}"
          end
        end

        # Checks both parameters and assigns hash for the referenced value
        def extract_value(key, parameters, assigns)
          if assigns.key?(key)
            assigns[key]
          elsif parameters.class::PARAM_MAP.key?(key)
            member_name = parameters.class::PARAM_MAP[key]
            parameters[member_name]
          else
            raise "Templatable value not found: #{key}"
          end
        end
      end
    end
  end
end


# # tomorrow me - seems like we need to make a copy of matchers/params/etc and do substitution somewher else
#
# module Aws
#   class Endpoint
#     # matchers - proc (when codegen - right now it's dynamic json)
#     # endpoint - url, auth, headers, modifyParams
#     def initialize(rule)
#       @matchers = rule['matchers']
#       @description = rule['description']
#       @error = rule['error']
#       endpoint = rule['endpoint']
#
#       return if error?
#
#       @url = endpoint['url']
#       @auth_schemes = endpoint['authSchemes'] || []
#       @auth_params = endpoint['authParams'] || {}
#       @headers = endpoint['headers'] || {}
#       @modify_params = endpoint['modifyParams'] || {}
#     end
#
#     attr_accessor :description
#     attr_accessor :error
#
#     attr_accessor :url
#     attr_accessor :auth_params
#     attr_accessor :auth_schemes
#     attr_accessor :headers
#     attr_accessor :modify_params
#
#     # calls the proc which will return true or false
#     def match?(options)
#       # puts "\nattempting match"
#       matched = @matchers.all? do |matcher|
#         # sub handles cases where ARN is used
#         option_value = _sub(matcher['param'], options) # "SDK::Region"
#         matcher_type = matcher['matcher'] # "partition"
#         matcher_type_value = matcher[matcher_type] # "aws"
#         # puts "try to match: (option: #{matcher['param']}), matcher_type: #{matcher_type}, matcher_type_value: #{matcher_type_value}, option value: #{option_value}"
#         # puts "does it match? #{match(matcher_type, matcher_type_value, option_value)}"
#         match(matcher_type, matcher_type_value, option_value)
#       end
#       # puts "did i match everything? #{matched}"
#       matched
#     end
#
#     def error?
#       !@error.nil?
#     end
#
#     def sub_url!(endpoint_options = {})
#       @url.scan(/\{.+?\}/).each do |cap|
#         @url = @url.gsub(cap, _sub(cap[1..-2], endpoint_options))
#       end
#     end
#
#     def sub_headers!(endpoint_options = {})
#       @headers.each_pair do |key, value|
#         value.scan(/\{.+?\}/).each do |cap|
#           @headers[key] = value.gsub(cap, _sub(cap[1..-2], endpoint_options))
#         end
#       end
#     end
#
#     def sub_auth_params!(endpoint_options = {})
#       @auth_params.each_pair do |scheme, scheme_values|
#         scheme_values.each_pair do |key, value|
#           value.scan(/\{.+?\}/).each do |cap|
#             @auth_params[scheme][key] = value.gsub(cap, _sub(cap[1..-2], endpoint_options))
#           end
#         end
#       end
#     end
#
#     def sub_modify_params!(endpoint_options = {})
#       @modify_params.each_pair do |key, value|
#         value.scan(/\{.+?\}/).each do |cap|
#           @modify_params[key] = value.gsub(cap, _sub(cap[1..-2], endpoint_options))
#         end
#       end
#     end
#
#     private
#
#     def _sub(capture, endpoint_options)
#       indexes = capture.split('.')
#       if indexes.size == 1
#         return endpoint_options[capture]
#       elsif indexes.size == 2
#         if indexes[1].start_with?('arn-')
#           arn = Aws::ARNParser.parse(endpoint_options[indexes[0]])
#           case indexes[1]
#           when "arn-partition"
#             arn_thing = arn.partition
#           when "arn-service"
#             arn_thing = arn.service
#           when "arn-region"
#             arn_thing = arn.region
#           when "arn-account-id"
#             arn_thing = arn.account_id
#           when "arn-resource"
#             arn_thing = arn.resource
#           end
#           return arn_thing
#         end
#       elsif indexes.size == 3
#         if indexes[1] == 'arn-resource'
#           arn = Aws::ARNParser.parse(endpoint_options[indexes[0]])
#           resource_parts = arn.resource.split(/[:,\/]/)
#           index = indexes[2].to_i
#           raise ArgumentError if resource_parts[index].nil?
#           return resource_parts[index]
#         end
#       else
#         return nil
#       end
#     end
#
#     def match(matcher_type, matcher_value, param_value)
#       case matcher_type
#       when 'partition'
#         Aws::EndpointMatchers.partition?(matcher_value, param_value)
#       when 'startsWith'
#         Aws::EndpointMatchers.starts_with?(matcher_value, param_value)
#       when 'endsWith'
#         Aws::EndpointMatchers.ends_with?(matcher_value, param_value)
#       when 'stringEquals'
#         Aws::EndpointMatchers.string_equals?(matcher_value, param_value)
#       when 'booleanEquals'
#         Aws::EndpointMatchers.boolean_equals?(matcher_value, param_value)
#       when 'isSet'
#         Aws::EndpointMatchers.set?(matcher_value, param_value) # false, value
#       when 'isArn'
#         Aws::EndpointMatchers.arn?(matcher_value, param_value) # true, buckets value
#       when 'arnPartition'
#         Aws::EndpointMatchers.arn_partition?(matcher_value, param_value)
#       when 'arnService'
#         Aws::EndpointMatchers.arn_service?(matcher_value, param_value)
#       when 'arnType'
#         Aws::EndpointMatchers.arn_type?(matcher_value, param_value)
#       else
#         false
#       end
#     end
#   end
# end
