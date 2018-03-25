# frozen_string_literal: true

module AwsSdkCodeGenerator
  class ResourceAssociation
    class << self

      # @return [Array<ResourceMethod>]
      def build_list(options)
        associations = []
        associations += has_associations(options)
        associations += has_many_associations(options)
        associations.sort_by(&:method_name)
      end

      private

      def has_associations(options)
        options.fetch(:resource).fetch('has', {}).map do |name, assoc|
          ResourceHasAssociation.build(options.merge(
            name: name,
            assoc: assoc,
          ))
        end
      end

      def has_many_associations(options)
        options.fetch(:resource).fetch('hasMany', {}).map do |name, assoc|
          ResourceHasManyAssociation.build(options.merge(
            name: name,
            assoc: assoc,
          ))
        end
      end

    end
  end
end
