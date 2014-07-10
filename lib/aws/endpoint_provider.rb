require 'multi_json'

module Aws
  class EndpointProvider

    # @api private
    DEFAULT_RULES_PATH = File.expand_path(File.join(File.dirname(__FILE__),
      '..', '..', 'apis', 'endpoints.json'
    ))

    def initialize
      clear_rules
    end

    # @option options [required, String] :service
    # @option options [required, String] :region
    # @option options [required, String] :scheme
    def resolve(options = {})
      service_rules(options[:service].to_s).each do |rule|
        return rule.apply(options) if rule.matches?(options)
      end
      nil
    end

    # Removes all rules.
    def clear_rules
      @rules = Hash.new{ |h,k| h[k] = [] }
    end

    # Prepends a default rule that applies to all services.  Default
    # rules have lower priority than service specific rules.
    def prepend_default_rule(rule)
      prepend_service_rule('_default', rule)
    end

    # Appends a rule that applies for all services.  Appending a rule
    # gives it lowest priority. Default rules have lower priority than
    # service specific rules.
    def append_default_rule(rule)
      append_service_rule('_default', rule)
    end

    # Prepends a rule that applies to a single service.  Prepending a rule
    # gives it higest priority. Service specific rules are matches before
    # default rules.
    # @param [String] service The endpoint prefix of the service.
    # @param [Rule] rule
    # @return [void]
    def prepend_service_rule(service, rule)
      @rules[service].unshift(rule)
    end

    # Appends a rule that applies to a single service.  Appending a rule
    # gives it lowest priority. Service specific rules are matches before
    # default rules.
    # service specific rules.
    # @param [String] service The endpoint prefix of the service.
    # @param [Rule] rule
    # @return [void]
    def append_service_rule(service, rule)
      @rules[service].push(rule)
    end

    # Appends the given rule to each service and as a default rule, giving
    # it the highest priority.
    # @param [Rule] rule
    # @return [void]
    def prepend_all(rule)
      @rules.keys.each do |svc|
        prepend_service_rule(svc, rule)
      end
    end

    private

    def service_rules(service_name)
      rules_for(service_name) + rules_for('_default')
    end

    def rules_for(service_name)
      @rules.key?(service_name) ? @rules[service_name] : []
    end

    class Rule

      # @param [String] uri
      # @param [Array<Array<String>>] constraints Each constraint must specify
      #   the following:
      #
      #   * an option ("service", "region", "scheme")
      #   * a constraint ("startsWith", "equals", "notEquals", "oneOf")
      #   * a value or array of values for "oneOf"
      #
      #   Example constraints:
      #
      #       ['region', 'equals', 'cn-north-1']
      #       ['region', 'notEquals', 'us-east-1']
      #       ['region', 'oneOf', ['us-east-1', 'us-west-1']]
      #
      def initialize(uri, constraints = [])
        @uri = uri
        @constraints = constraints
      end

      def matches?(options)
        @constraints.all? do |option, constraint_name, constraint|
          send("option_#{constraint_name}", options[option.to_sym], constraint)
        end
      end

      def apply(options)
        @uri.gsub(/{(scheme|service|region)}/) do |placeholder|
          options[placeholder[1..-2].to_sym]
        end
      end

      private

      def option_startsWith(option, constraint)
        option.to_s.match(/^#{constraint}/)
      end

      def option_notStartsWith(option, constraint)
        !option_startsWith(option, constraint)
      end

      def option_equals(option, constraint)
        option == constraint
      end

      def option_notEquals(option, constraint)
        !option_equals(option, constraint)
      end

      def option_oneOf(option, constraint)
        constraint.include?(option)
      end

    end

    class << self

      # @return [EndpointProvider]
      def default_provider
        @default_provider ||= begin
          new.tap do |provider|
            default_rules do |service, rule|
              provider.append_service_rule(service, rule)
            end
          end
        end
      end

      # @api private
      def default_rules(&block)
        MultiJson.load(File.read(DEFAULT_RULES_PATH)).each do |service, rules|
          rules.each do |rule|
            yield(service, Rule.new(rule['uri'], rule['constraints'] || []))
          end
        end
      end

    end
  end
end
