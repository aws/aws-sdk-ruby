# frozen_string_literal: true

module AwsSdkCodeGenerator
  module Views
    class EndpointProviderClass < View

      # @option options [required, Service] :service
      # @option options [required, Hash] :endpoint_rules
      def initialize(options)
        @service = options.fetch(:service)
        @endpoint_rules = @service.endpoint_rules

        version = @endpoint_rules['version']
        return if version&.match(/^\d+\.\d+$/) # && version == '1.0'

        raise 'Endpoint Rules version must be 1.0'
      end

      # @return [String|nil]
      def generated_src_warning
        return if @service.protocol == 'api-gateway'
        GENERATED_SRC_WARNING
      end

      def module_name
        @service.module_name
      end

      def endpoint_rules_encoded
        Base64.encode64(JSON.dump(@endpoint_rules))
      end

      def endpoint_rules_code
        res = StringIO.new
        # map parameters first
        @endpoint_rules["parameters"].each do |k,_v|
          res << indent("#{underscore(k)} = parameters.#{underscore(k)}\n", 3)
        end

        # map rules
        @endpoint_rules["rules"].each do |rule|
          case rule["type"]
          when "endpoint"
            res << endpoint_rule(rule, 3)
          when "error"
            res << error_rule(rule, 3)
          when "tree"
            res << tree_rule(rule, 3)
          else
            raise "Unknown rule type: #{rule['type']}"
          end
        end

        # if no rules match, raise an error
        res << indent("raise 'No rules matched'\n", 3)

        res.string
      end

      def endpoint_rule(rule, levels=3)
        res = StringIO.new
        if rule['conditions'] && !rule['conditions'].empty?
          res << conditions(rule['conditions'], levels)
          res << endpoint(rule['endpoint'], levels+1)
          res << indent("end\n", levels)
        else
          res << endpoint(rule['endpoint'], levels)
        end
        res.string
      end

      def endpoint(endpoint, levels)
        res = StringIO.new
        res << "return Aws::Endpoints::Endpoint.new(url: #{str(endpoint['url'])}"
        if endpoint['headers']
          res << ", headers: #{templated_hash_to_s(endpoint['headers'])}"
        end
        if endpoint['properties']
          res << ", properties: #{templated_hash_to_s(endpoint['properties'])}"
        end
        res << ")\n"
        indent(res.string, levels)
      end

      def templated_hash_to_s(hash)
        template_hash_values(hash).to_s.gsub('\#{', '#{') # unescape references
      end

      def template_hash_values(hash)
        hash.inject({}) { |h, (k, v)| h[k] = template_hash_value(v); h }
      end

      def template_hash_value(value)
        case value
        when Hash
          template_hash_values(value)
        when Array
          value.map { |v| template_hash_value(v) }
        when String
          template_str(value, false)
        else
          value
        end
      end

      def error_rule(rule, levels=3)
        res = StringIO.new
        if rule['conditions'] && !rule['conditions'].empty?
          res << conditions(rule['conditions'], levels)
          res << error(rule['error'], levels+1)
          res << indent("end\n", levels)
        else
          res << error(rule['error'], levels)
        end
        res.string
      end

      def error(error, levels)
        indent("raise ArgumentError, #{str(error)}\n", levels)
      end

      def tree_rule(rule, levels=3)
        res = StringIO.new
        if rule['conditions'] && !rule['conditions'].empty?
          res << conditions(rule['conditions'], levels)
          res << tree_rules(rule['rules'], levels+1)
          res << indent("end\n", levels)
        else
          res << tree_rules(rule['rules'], levels)
        end
        res.string
      end

      def tree_rules(rules, levels)
        res = StringIO.new
        rules.each do |rule|
          case rule["type"]
          when "endpoint"
            res << endpoint_rule(rule, levels)
          when "error"
            res << error_rule(rule, levels)
          when "tree"
            res << tree_rule(rule, levels)
          else
            raise "Unknown rule type: #{rule['type']}"
          end
        end
        res.string
      end

      def conditions(conditions, level)
        res = StringIO.new
        cnd_str = conditions.map { |c| condition(c) }.join(" && ")
        res << indent("if #{cnd_str}\n", level)
        res.string
      end

      def condition(condition)
        if condition['assign']
          "#{underscore(condition['assign'])} = #{fn(condition)}"
        else
          fn(condition)
        end
      end

      # apply templating
      def str(s)
        if s.is_a?(Hash)
          if s['ref']
            underscore(s['ref'])
          elsif s['fn']
            fn(s)
          else
            raise "Unknown string type: #{s}"
          end
        else
          template_str(s)
        end
      end

      def template_str(string, wrap=true)
        string.scan(/\{.+?\}/).each do |capture|
          value = capture[1..-2] # strips curly brackets
          string = string.gsub(capture, '#{' + template_replace(value) + '}')
        end
        string = string.gsub('"', '\"')
        wrap ? "\"#{string}\"" : string
      end

      def template_replace(value)
        indexes = value.split("#")
        res = underscore(indexes.shift)
        res += indexes.map do |index|
          "['#{index}']"
        end.join("")
        res
      end

      def fn(fn)
        args = fn['argv'].map {|arg| fn_arg(arg)}.join(", ")
        "#{fn_name(fn['fn'])}(#{args})"
      end

      def fn_arg(arg)
        if arg.is_a?(Hash)
          if arg['ref']
            underscore(arg['ref'])
          elsif arg['fn']
            fn(arg)
          else
            raise "Unexpected argument type: #{arg}"
          end
        elsif arg.is_a?(String)
          template_str(arg)
        else
          arg
        end
      end

      def fn_name(fn)
        case fn
        when 'isSet'
          "Aws::Endpoints::Matchers.set?"
        when 'not'
          "Aws::Endpoints::Matchers.not"
        when 'getAttr'
          "Aws::Endpoints::Matchers.attr"
        when 'substring'
          "Aws::Endpoints::Matchers.substring"
        when 'stringEquals'
          "Aws::Endpoints::Matchers.string_equals?"
        when 'booleanEquals'
          "Aws::Endpoints::Matchers.boolean_equals?"
        when 'uriEncode'
          "Aws::Endpoints::Matchers.uri_encode"
        when 'parseURL'
          "Aws::Endpoints::Matchers.parse_url"
        when 'isValidHostLabel'
          "Aws::Endpoints::Matchers.valid_host_label?"
        when 'aws.partition'
          "Aws::Endpoints::Matchers.aws_partition"
        when 'aws.parseArn'
          "Aws::Endpoints::Matchers.aws_parse_arn"
        when 'aws.isVirtualHostableS3Bucket'
          "Aws::Endpoints::Matchers.aws_virtual_hostable_s3_bucket?"
        else
          raise "Function not found: #{@fn}"
        end
      end

      def indent(s, levels=3)
        ("  " * levels) + s
      end
    end
  end
end
