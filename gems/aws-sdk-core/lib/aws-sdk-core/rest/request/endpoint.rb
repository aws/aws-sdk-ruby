# frozen_string_literal: true

require 'uri'
require 'cgi'

module Aws
  module Core
    module Rest
      # @api private
      module Request
        class Endpoint
          include Smithy::Schema::Shapes

          def initialize(operation)
            @uri, @query = operation.traits['smithy.api#http']['uri'].split('?')
            @ref = operation.input
          end

          def apply(request, params)
            apply_path_params(request.endpoint, params)
            apply_querystring_params(request.endpoint, params)
          end

          private

          def apply_path_params(endpoint, params)
            endpoint.path += @uri.gsub(/{.+?}/) do |placeholder|
              param_value_for_placeholder(placeholder, params)
            end
          end

          def param_value_for_placeholder(placeholder, params)
            name = param_name(placeholder)
            member_ref = @ref.shape.member(name)
            shape = member_ref.shape
            value =
              case shape
              when TimestampShape
                timestamp(member_ref, shape, params[name]).to_s
              else
                params[name].to_s
              end

            raise ArgumentError, ":#{name} must not be blank" if value.empty?

            if placeholder.include?('+')
              value.gsub(%r{[^/]+}) { |v| escape(v) }
            else
              escape(value)
            end
          end

          def param_name(placeholder)
            member_name = placeholder.gsub(/[{}+]/, '')
            # TODO: optimize
            param_name, _ = @ref.shape.members.find { |_, shape| shape.member_name == member_name }
            param_name
          end

          def timestamp(member_ref, shape, value)
            trait = 'smithy.api#timestampFormat'
            case member_ref.traits[trait] || shape.traits[trait]
            when 'epoch-seconds' then value.to_i
            when 'http-date' then value.utc.httpdate
            else
              # default to date-time
              value.utc.iso8601
            end
          end

          def apply_querystring_params(uri, params)
            # collect params that are supposed to be part of the query string
            parts = @ref.shape.members.each_with_object([]) do |(member_name, member_ref), parts|
              next unless member_ref.traits.key?('smithy.api#httpQuery') ||
                          member_ref.traits.key?('smithy.api#httpQueryParams')
              next unless params[member_name]

              parts << [member_ref, params[member_name]]
            end
            querystring = QuerystringBuilder.new.build(parts)
            querystring = [@query, querystring == '' ? nil : querystring].compact.join('&')
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
