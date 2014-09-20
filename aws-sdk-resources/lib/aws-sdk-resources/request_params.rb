module Aws
  module Resources
    module RequestParams

      # @api private
      class ParamsHash

        # @param [Array<RequestParams::Base>] params
        def initialize(params)
          @params = params
        end

        # @option options [required,Resource] :resource
        # @option options [required,Array<Mixed>] :args
        # @return [Hash]
        def build(options = {})
          deep_merge(user_params(options), computed_params(options))
        end

        private

        def user_params(options)
          args = options[:args] || []
          args.last.is_a?(Hash) ? args.last : {} 
        end

        def computed_params(options)
          params_hash = {}
          Array(options[:resource]).each do |resource|
            @params.each do |param|
              param.apply(params_hash, options.merge(resource: resource))
            end
          end
          params_hash
        end

        def deep_merge(obj1, obj2)
          case obj1
          when Hash then obj1.merge(obj2) { |key, v1, v2| deep_merge(v1, v2) }
          when Array then obj2 + obj1
          else obj2
          end
        end

      end

      # Base class for all request parameter types.
      # @see {RequestParams::Identifier}
      # @see {RequestParams::DataMember}
      # @see {RequestParams::String}
      # @see {RequestParams::Integer}
      class Base

        # @param [String] target
        def initialize(target)
          @target = target.to_s
          @steps = []
          @target.scan(/\w+|\[\]/) do |step|
            case step
            when /\d+/ then @steps += [:array, step.to_i]
            when '[]' then @steps += [:array, -1]
            else @steps += [:hash, step.to_sym]
            end
          end
          @steps.shift
          @final = @steps.pop
        end

        # @return [String] target
        attr_reader :target

        # @param [Hash] params
        # @param [Object] value
        # @return [Hash] Returns the modified params hash.
        def apply(params, value)
          if @final == -1
            build_context(params) << value
          else
            build_context(params)[@final] = value
          end
          params
        end

        private

        def build_context(params)
          @steps.each_slice(2).inject(params) do |context, (key, type)|
            entry = type == :array ? [] : {}
            if key == -1
              context << entry
              entry
            else
              context[key] ||= entry
            end
          end
        end

      end

      class Identifier < Base

        # @param [String] identifier_name
        # @param (see Base#initialize)
        def initialize(identifier_name, target)
          @identifier_name = identifier_name.to_sym
          super(target)
        end

        # @param [Symbol] identifier_name
        attr_reader :identifier_name

        # @param [Hash] params_hash
        # @option [requried, Resource] :resource
        def apply(params_hash, options)
          value = options[:resource].identifiers[identifier_name]
          super(params_hash, value)
        end

        # @api private
        def self.literal?
          false
        end

      end

      class DataMember < Base

        # @param [String] member_name
        # @param (see Base#initialize)
        def initialize(member_name, target)
          @member_name = member_name
          super(target)
        end

        # @return [String]
        attr_reader :member_name

        # @param [Hash] params_hash
        # @option [requried, Resource] :resource
        def apply(params_hash, options)
          value = options[:resource].data[member_name.to_sym]
          super(params_hash, value)
        end

        # @api private
        def self.literal?
          false
        end

      end

      class String < Base

        # @param [String] value
        # @param (see Base#initialize)
        def initialize(value, target)
          @value = value
          super(target)
        end

        # @return [String]
        attr_reader :value

        # @param [Hash] params_hash
        def apply(params_hash, options = {})
          super(params_hash, value)
        end

        # @api private
        def self.literal?
          true
        end

      end

      class Integer < Base

        # @param [String] value
        # @param (see Base#initialize)
        def initialize(value, target)
          @value = value.to_i
          super(target)
        end

        # @return [Integer]
        attr_reader :value

        # @param [Hash] params_hash
        def apply(params_hash, options = {})
          super(params_hash, value)
        end

        # @api private
        def self.literal?
          true
        end

      end

      class Boolean < Base

        # @param [String<'true'>,String<'false'>] value
        # @param (see Base#initialize)
        def initialize(value, target)
          @value = (value == 'true')
          super(target)
        end

        # @return [Integer]
        attr_reader :value

        # @param [Hash] params_hash
        def apply(params_hash, options = {})
          super(params_hash, value)
        end

        # @api private
        def self.literal?
          true
        end

      end
    end
  end
end
