require 'uri'

module Aws
  module Rest
    module Request
      class Endpoint

        include Seahorse::Model::Shapes

        # @param [Seahorse::Model::Shapes::ShapeRef] rules
        # @param [String] request_uri_pattern
        def initialize(rules, request_uri_pattern)
          @rules = rules
          request_uri_pattern.split('?').tap do |path_part, query_part|
            @path_pattern = path_part
            @query_pattern = query_part
          end
        end

        # @param [URI::HTTPS,URI::HTTP] base_uri
        # @param [Hash,Struct] params
        # @return [URI::HTTPS,URI::HTTP]
        def uri(base_uri, params)
          uri = URI.parse(base_uri.to_s)
          apply_path_params(uri, params)
          apply_querystring_params(uri, params)
          uri
        end

        private

        def apply_path_params(uri, params)
          path = uri.path.sub(/\/$/, '') + @path_pattern.split('?')[0]
          uri.path = path.gsub(/{\w+\+?}/) do |placeholder|
            param_value_for_placeholder(placeholder, params)
          end
        end

        def param_value_for_placeholder(placeholder, params)
          value = params[param_name(placeholder)].to_s
          placeholder.include?('+') ?
            value.gsub(/[^\/]+/) { |v| escape(v) } :
            escape(value)
        end

        def param_name(placeholder)
          location_name = placeholder.gsub(/[{}+]/,'')
          param_name, _ = @rules.shape.member_by_location_name(location_name)
          param_name
        end

        def apply_querystring_params(uri, params)
          parts = []
          parts << @query_pattern if @query_pattern
          @rules.shape.members.each do |member_name, member|
            if member.location == 'querystring' && !params[member_name].nil?
              case member.shape

              # supported scalar types
              when StringShape, BooleanShape, FloatShape, IntegerShape, StringShape
                param_name = member.location_name
                param_value = params[member_name]
                parts << "#{param_name}=#{escape(param_value.to_s)}"

              # map of strings or map of string-list
              when MapShape
                if StringShape === member.shape.value.shape
                  parts += query_map_of_string(params[member_name])
                elsif ListShape === member.shape.value.shape
                  parts += query_map_of_string_list(params[member_name])
                else
                  msg = "only map of string and string list supported"
                  raise NotImplementedError, msg
                end

              when ListShape
                if StringShape === member.shape.member.shape
                  parts += list_of_strings(member.location_name, params[member_name])
                else
                  msg = "Only list of strings supported, got "
                  msg << member.shape.member.shape.class.name
                  raise NotImplementedError, msg
                end

              # unsupported querystring shape
              else
                raise NotImplementedError
              end

            end
          end
          uri.query = parts.empty? ? nil : parts.join('&')
        end

        def query_map_of_string(hash)
          list = []
          hash.each_pair do |key, value|
            list << "#{escape(key)}=#{escape(value)}"
          end
          list
        end

        def query_map_of_string_list(hash)
          list = []
          hash.each_pair do |key, values|
            values.each do |value|
              list << "#{escape(key)}=#{escape(value)}"
            end
          end
          list
        end

        def list_of_strings(name, values)
          values.map do |value|
            "#{name}=#{escape(value)}"
          end
        end

        def escape(string)
          Seahorse::Util.uri_escape(string)
        end

      end
    end
  end
end
