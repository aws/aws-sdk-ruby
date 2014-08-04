require 'multi_json'

module Aws
  class EndpointProvider

    # @option options [Array<Hash>] :rules ([]) An array of grouped rules.
    def initialize(options = {})
      @rules = options[:rules] || []
    end

    # @option options [required, String] :service
    # @option options [required, String] :region
    # @option options [required, String] :scheme
    # @return [Hash]
    def resolve(options)
      @rules.each do |rule_group|
        if region_matches?(rule_group, options)
          rule_group['rules'].each do |rule|
            if service_matches?(rule, options)
              return apply_rule(rule, options)
            end
          end
        end
      end
      {}
    end

    # @option options [required, String] :pattern The endpoint pattern with
    #   optional placeholders. This is applied when rules match during
    #   resolution. Valid placeholders include:
    #
    #   * `{scheme}`
    #   * `{region}`
    #   * `{service}`
    #
    #   An example pattern:
    #
    #       "#{scheme}://{service}.{region}.amazonaws.com"
    #
    # @option options [String] :signature_version When resolving and a match
    #   is found, this is returned with the resolved `:pattern`. This can be
    #   used to provide per-endpoint overrides for the signature version.
    #
    # @option options [Integer] :priority (100) A number from 0 to 999.
    #   Rules with lower number have a higher priority and are evaluated first.
    #
    # @option options [String] :region_prefix ("") Causes regions with this
    #   prefix to match. Leave this empty if you want to match all regions.
    #
    # @option options [Array<String>] :services A list of services this rule
    #   applies to. Omit this option if you want this rule to apply to all
    #   services.
    #
    #   The string must be the service endpoint prefix as a string.
    #   E.g. "s3", "ec2", "monitoring" (for cloud watch).
    #
    def add_rule(options = {})
      @rules = (@rules + [new_rule(options)]).sort_by { |r| r['priority'] }
    end

    private

    def new_rule(options)
      rule = {}
      rule['services'] = options[:services] if options[:services]
      rule['config'] = {}
      rule['config']['endpoint'] = options[:pattern]
      rule['config']['signatureVersion'] = options[:signature_version] if
        options[:signature_version]
      {
        'priority' => options[:priority] || 100,
        'regionPrefix' => options[:region_prefix] || '',
        'rules' => [rule]
      }
    end

    def region_matches?(rule_group, options)
      options[:region] && options[:region].match(/^#{rule_group['regionPrefix']}/)
    end

    def service_matches?(rule, options)
      rule['services'].nil? || rule['services'].include?(options[:service])
    end

    def apply_rule(rule, options)
      rule['config'].each.with_object({}) do |(key, value), result|
        if key == 'endpoint'
          result[:endpoint] = resolve_endpoint(value, options)
        else
          result[Seahorse::Util.underscore(key).to_sym] = value
        end
      end
    end

    def resolve_endpoint(pattern, options)
      pattern.gsub(/{\w+}/) { |match| options[match[1..-2].to_sym] }
    end

    class << self

      def default_provider
        @default_provider ||= EndpointProvider.new(rules: default_rules)
      end

      def default_rules
        path = File.join(File.dirname(__FILE__), '..', '..', 'endpoints.json')
        MultiJson.load(File.read(path))
      end

    end
  end
end
