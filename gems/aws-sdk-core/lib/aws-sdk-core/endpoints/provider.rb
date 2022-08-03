module Aws
  module Endpoints
    # @api private
    class Provider
      def initialize(rule_set)
        @rule_set = rule_set
      end

      def resolve_endpoint(parameters)
        obj = resolve_rules(parameters)
        puts "found object was #{obj}"
        if obj.is_a?(Endpoint)
          obj
        elsif obj.is_a?(RuntimeError)
          raise obj
        else
          raise "Something went wrong"
        end
      end

      private

      def resolve_rules(parameters)
        @rule_set.rules.each do |rule|
          puts "evaluating rule: #{rule}"
          output = rule.match(parameters)
          puts "output of match rule: #{output}"
          return output if output
        end
        nil
      end

      # def initialize(options = {})
      #   @rule_set = options[:rule_set] || {}
      #   @endpoints = options[:endpoints] || endpoints(@rules)
      # end
      #
      # def build(endpoint_options = {})
      #   endpoint = @endpoints.find { |e| e.match?(endpoint_options) }
      #   # need to dup because we modify the endpoint object
      #   endpoint = Marshal.load(Marshal.dump(endpoint)) if endpoint
      #
      #   # TODO - raise a better error
      #   if endpoint.nil?
      #     raise ArgumentError, "no matches"
      #   elsif endpoint.error?
      #     raise ArgumentError, endpoint.error
      #   end
      #   # TODO - maybe these shouldn't exist here
      #   endpoint.sub_modify_params!(endpoint_options)
      #   endpoint.sub_auth_params!(endpoint_options)
      #   endpoint.sub_headers!(endpoint_options)
      #   endpoint.sub_url!(endpoint_options)
      #
      #   endpoint
      # end
      #
      # private
      #
      # def endpoints(rules = [])
      #   endpoints = []
      #   rules.each do |rule|
      #     endpoints << Aws::Endpoint.new(rule)
      #   end
      #   endpoints
      # end
    end
  end
end
