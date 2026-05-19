# frozen_string_literal: true

module AwsSdkCodeGenerator
  module RBS
    # Collects structure shapes referenced more than once in input shape.
    class InputTypeAliasCollector
      MIN_LINES_THRESHOLD_FOR_ALIAS = 5

      def initialize(api:)
        @api = api
        @shape_usage_count = Hash.new(0)
        @size_cache = {}
      end

      # Returns a topologically sorted array of shape names to render as type aliases.
      # Leaf dependencies come first so aliases can reference each other.
      # params.rbs uses aliases in this list to define RBS type aliases.
      # client_class.rbs uses aliases in this list to deduplicate content.
      def shapes_to_alias
        count_shape_usage
        aliased = @shape_usage_count.select do |shape_name, count|
          shape = @api['shapes'][shape_name]
          shape['type'] == 'structure' &&
            count > 1 &&
            rendered_rbs_line_count_heuristic(shape_name) > MIN_LINES_THRESHOLD_FOR_ALIAS
        end.keys.to_set
        topological_sort(aliased)
      end

      private

      def topological_sort(shape_names)
        sorted = []
        visited = Set.new
        shape_names.each { |name| topo_visit(name, shape_names, visited, sorted) }
        sorted
      end

      def topo_visit(name, shape_names, visited, sorted)
        return if visited.include?(name)

        visited << name
        shape = @api['shapes'][name]
        shape['members']&.each_value do |ref|
          dep = ref['shape']
          topo_visit(dep, shape_names, visited, sorted) if shape_names.include?(dep)
        end
        sorted << name
      end

      def count_shape_usage
        @api['operations'].each_value do |op|
          input_shape_name = op.dig('input', 'shape')
          next unless input_shape_name

          walk_shape(input_shape_name, Set.new)
        end
      end

      def walk_shape(shape_name, ancestors)
        return if ancestors.include?(shape_name)

        ancestors += [shape_name]

        shape = @api['shapes'][shape_name]
        return unless shape && shape['type'] == 'structure'

        shape['members']&.each_value do |member_ref|
          member_shape_name = member_ref['shape']
          member_shape = @api['shapes'][member_shape_name]
          next unless member_shape

          case member_shape['type']
          when 'structure'
            @shape_usage_count[member_shape_name] += 1
            walk_shape(member_shape_name, ancestors)
          when 'list'
            walk_list(member_shape, ancestors)
          when 'map'
            walk_map(member_shape, ancestors)
          end
        end
      end

      def walk_list(list_shape, ancestors)
        member_ref = list_shape['member']
        member_shape = @api['shapes'][member_ref['shape']]
        return unless member_shape

        case member_shape['type']
        when 'structure'
          @shape_usage_count[member_ref['shape']] += 1
          walk_shape(member_ref['shape'], ancestors)
        when 'list'
          walk_list(member_shape, ancestors)
        when 'map'
          walk_map(member_shape, ancestors)
        end
      end

      def walk_map(map_shape, ancestors)
        value_ref = map_shape['value']
        value_shape = @api['shapes'][value_ref['shape']]
        return unless value_shape

        case value_shape['type']
        when 'structure'
          @shape_usage_count[value_ref['shape']] += 1
          walk_shape(value_ref['shape'], ancestors)
        when 'list'
          walk_list(value_shape, ancestors)
        when 'map'
          walk_map(value_shape, ancestors)
        end
      end

      def rendered_rbs_line_count_heuristic(shape_name, visited = Set.new)
        return 0 if visited.include?(shape_name)

        # Cache results to deduplicate calculation for nested structure types that get used multiple times in the model.
        return @size_cache[shape_name] if @size_cache.key?(shape_name)

        visited += [shape_name]
        shape = @api['shapes'][shape_name]
        return @size_cache[shape_name] = 1 unless shape['members']

        @size_cache[shape_name] = shape['members'].sum do |_, ref|
          member_line_count(ref, visited)
        end
      end

      def member_line_count(ref, visited)
        child = @api['shapes'][ref['shape']]
        case child['type']
          # If it's a structure, add 2 lines then recurse (one line each for '{' and '}' in rendered RBS)
        when 'structure' then 2 + rendered_rbs_line_count_heuristic(ref['shape'], visited)
        when 'list'
          member_shape = @api['shapes'][child['member']['shape']]
          # If it's a list with structure member, add 2 lines & recurse.
          #   (one line each for 'Hash[::String, {' and '}]' in rendered RBS)
          # If it's a list with primitive member, add 1 and return
          #   (e.g., renders as 1-liner, like 'list: Array[::String]')
          member_shape['type'] == 'structure' ? 2 +
            rendered_rbs_line_count_heuristic(child['member']['shape'], visited) : 1
        when 'map'
          value_shape = @api['shapes'][child['value']['shape']]
          # If it's a map with structure member, add 2 lines & recurse.
          #   (one line each for 'Hash[::String, {' and '}]' in rendered RBS)
          # If it's a map with primitive member, add 1 and return
          #   (e.g., renders as 1-liner, like 'map: Hash[::String, ::String]')
          value_shape['type'] == 'structure' ? 2 +
            rendered_rbs_line_count_heuristic(child['value']['shape'], visited) : 1
        else 1
        end
      end
    end
  end
end
