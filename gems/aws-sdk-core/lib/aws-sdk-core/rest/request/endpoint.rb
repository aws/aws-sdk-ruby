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
            @path = HTTP_EXTENSION.path(operation)
            @static_query = HTTP_EXTENSION.static_query(operation)
            @label_index = HTTP_EXTENSION.label_index(shape)
            @query_members = HTTP_EXTENSION.query_members(shape)
            @query_params_member = HTTP_EXTENSION.query_params_member(shape)
            @querystring_builder = QuerystringBuilder.new
          end

          def apply(request, params)
            apply_path_params(request.endpoint, params)
            apply_querystring_params(request.endpoint, params)
          end

          private

          def apply_path_params(endpoint, params)
            endpoint.path += @path.gsub(/{.+?}/) do |placeholder|
              param_value_for_placeholder(placeholder, params)
            end
          end

          def param_value_for_placeholder(placeholder, params)
            greedy = placeholder.end_with?('+}')
            modeled_name = greedy ? placeholder[1...-2] : placeholder[1...-1]
            name, member_shape = @label_index.fetch(modeled_name)
            value =
              case member_shape.target
              when Smithy::Schema::Shapes::TimestampShape
                timestamp(member_shape, params[name]).to_s
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

          def timestamp(shape, value)
            format = SCHEMA_EXTENSION.timestamp_format(shape)
            format = 'date-time' if format == :default
            Smithy::Schema::Utils.serialize_timestamp(value, format)
          end

          def apply_querystring_params(uri, params) # rubocop:disable Metrics/AbcSize
            # collect params that are supposed to be part of the query string
            parts = []
            @query_members.each do |member_name, member_shape, query_name|
              next if params[member_name].nil?

              parts << [member_shape, params[member_name], query_name]
            end
            if (name, member = @query_params_member) && !params[name].nil?
              parts << [member, params[name], nil]
            end
            querystring = @querystring_builder.build(parts)
            querystring = [@static_query, querystring == '' ? nil : querystring].compact.join('&')
            querystring = nil if querystring == ''
            uri.query = querystring
          end

          def escape(string)
            CGI.escapeURIComponent(string.to_s.encode('UTF-8'))
          end
        end
      end
    end
  end
end
