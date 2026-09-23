# frozen_string_literal: true

require 'uri'
require 'cgi'

module Aws
  module Core
    module Rest
      module Request
        # @api private
        class Endpoint
          def initialize(operation, shape)
            @operation = operation
            @shape = shape
          end

          def apply(request, params)
            operation = HTTP_EXTENSION.fetch(@operation)
            shape = HTTP_EXTENSION.fetch(@shape)
            apply_path_params(request.endpoint, params, operation[:path], shape[:label_index])
            apply_querystring_params(request.endpoint, params, operation[:static_query], shape)
          end

          private

          def apply_path_params(endpoint, params, path, label_index)
            endpoint.path += path.gsub(/{.+?}/) do |placeholder|
              param_value_for_placeholder(placeholder, params, label_index)
            end
          end

          def param_value_for_placeholder(placeholder, params, label_index)
            greedy = placeholder.end_with?('+}')
            modeled_name = greedy ? placeholder[1...-2] : placeholder[1...-1]
            name, member_ref = label_index.fetch(modeled_name)
            value =
              case SCHEMA_EXTENSION.target_shape(member_ref)
              when SCHEMA_EXTENSION::SHAPE_TIMESTAMP
                timestamp(member_ref, params[name]).to_s
              else
                params[name].to_s
              end

            raise ArgumentError, ":#{name} must not be blank" if value.empty?

            if greedy
              value.gsub(%r{[^/]+}) { |v| escape(v) }
            else
              escape(value)
            end
          end

          def timestamp(ref, value)
            case SCHEMA_EXTENSION.timestamp_format(ref)
            when 'epoch-seconds' then value.to_i
            when 'http-date' then value.utc.httpdate
            else
              # default to date-time
              value.utc.iso8601
            end
          end

          def apply_querystring_params(uri, params, static_query, metadata) # rubocop:disable Metrics/AbcSize
            # collect params that are supposed to be part of the query string
            members = metadata.fetch(:query_members, [])
            parts = members.each_with_object([]) do |(member_name, member_ref, query_name), parts|
              next if params[member_name].nil?

              parts << [member_ref, params[member_name], query_name]
            end
            if (name, member = metadata[:query_params_member]) && !params[name].nil?
              parts << [member, params[name], nil]
            end
            querystring = QuerystringBuilder.new.build(parts)
            querystring = [static_query, querystring == '' ? nil : querystring].compact.join('&')
            querystring = nil if querystring == ''
            uri.query = querystring
          end

          def escape(string)
            CGI.escape(string.to_s.encode('UTF-8')).gsub('+', '%20').gsub('%7E', '~')
          end
        end
      end
    end
  end
end
