require 'set'

module AwsSdkCodeGenerator
  module Generators
    class ResourceClass < Dsl::Class

      include Helper

      def initialize(name:, resource:, api:, paginators:nil, waiters:nil)
        @api = api
        @name = name
        @resource = resource
        @paginators = paginators
        @waiters = waiters
        super(@name)
        build
        check_for_method_name_conflicts!
      end

      private

      def build
        add(initialize_method)
        code('# @!group Read-Only Attributes')
        add(*identifier_getters)
        add(identifiers_method)
        add(*data_attribute_getters)
        code('# @!endgroup')
        add(client_getter)
        add(load_method)
        add(data_method)
        add(data_loaded_method)
        add(exists_method)
        add(*waiters)
        apply_actions
        apply_associations
        add(*extract_identifier_methods)
        add(Generators::Resource::CollectionClass.new(
          resource_name: @name,
          resource: @resource,
        ))
      end

      def initialize_method
        Generators::Resource::InitializeMethod.new(resource: @resource)
      end

      def identifier_getters
        identifiers.map do |i|
          Generators::Resource::IdentifierGetter.new(identifier: i)
        end
      end

      def data_attribute_getters
        data_attribute_names.map do |member_name, member_ref|
          Generators::Resource::DataAttributeGetter.new(
            api: @api,
            member_name: member_name,
            member_ref: member_ref
          )
        end
      end

      def client_getter
        Generators::Resource::ClientGetter.new
      end

      def load_method
        Generators::Resource::LoadMethod.new(
          resource_name: @name,
          definition: @resource['load']
        )
      end

      def data_method
        Generators::Resource::DataMethod.new(
          resource_name: @name,
          resource: @resource
        )
      end

      def data_loaded_method
        Generators::Resource::DataLoadedMethod.new
      end

      def exists_method
        if @resource['waiters'] && @resource['waiters']['Exists']
          Generators::Resource::ExistsMethod.new(
            resource_name: @name,
            resource: @resource,
            waiters: @waiters,
          )
        end
      end

      def waiters
        (@resource['waiters'] || {}).map do |waiter_name, waiter|
          Generators::Resource::WaiterMethod.new(
            resource_name: @name,
            resource: @resource,
            resource_waiter_name: waiter_name,
            resource_waiter: waiter,
            waiter: @waiters['waiters'][waiter['waiterName']]
          )
        end
      end

      def apply_actions
        actions = @resource['actions'] || {}
        return if actions.empty?
        code('# @!group Actions')
        actions.each do |name, action|
          add(Resource::Action.new(
            api: @api,
            name: name,
            action: action
          ))
        end
      end

      def apply_associations
        associations = []
        associations += has_associations
        associations += has_many_associations

        return if associations.empty?

        code('# @!group Associations')
        associations.sort_by(&:name).each do |association_method|
          add(association_method)
        end
      end

      def has_associations
        (@resource['has'] || {}).map do |name, has|
          Resource::HasAssociation.new(
            api: @api,
            name: name,
            has: has
          )
        end
      end

      def has_many_associations
        (@resource['hasMany'] || {}).map do |name, has_many|
          Resource::HasManyAssociation.new(
            name: name,
            has_many: has_many,
            api: @api,
            paginators: @paginators
          )
        end
      end

      def identifiers_method
        Generators::Resource::IdentifiersMethod.new(
          identifiers: identifiers
        )
      end

      def extract_identifier_methods
        identifiers.map.with_index do |identifier, n|
          Generators::Resource::ExtractIdentifierMethod.new(
            identifier: identifier,
            index: n
          )
        end
      end

      def identifiers
        @resource['identifiers'] || []
      end

      def data_attribute_names

        skip = Set.new

        # do no duplicate identifiers
        identifiers.each do |i|
          skip << i['name']
          skip << i['memberName'] if i.key?('memberName')
        end

        # do no duplicate action names
        (@resource['actions'] || {}).keys.each do |action_name|
          skip << action_name
        end

        # do no duplicate has association names
        (@resource['has'] || {}).keys.each do |association_name|
          skip << association_name
        end

        # do no duplicate hasMany association names
        (@resource['hasMany'] || {}).keys.each do |association_name|
          skip << association_name
        end

        shape = (@api['shapes'] || {})[@resource['shape']] || {}
        members = shape['members'] || {}
        Enumerator.new do |y|
          members.each do |member_name, member_ref|
            unless skip.include?(member_name)
              y.yield(member_name, member_ref)
            end
          end
        end
      end

      def check_for_method_name_conflicts!

        resource_method_names = Set.new

        # Ensure the resource does not have duplicate names. This
        # includes comparing identifier names, action names, association
        # names, e.g. anything that is exposed as a method.
        @code_objects.each do |code_obj|
          case code_obj
          when Dsl::Method
            check_for_duplicate_method!(code_obj.name, resource_method_names)
            code_obj.aliases.each do |alias_name|
              check_for_duplicate_method!(alias_name, resource_method_names)
            end
          when Dsl::AttributeAccessor
            check_for_duplicate_method!(code_obj.name, resource_method_names)
          end
        end

        # Compare all resource methods against methods defined
        # on Ruby's Object class as an instance method. We need to
        # ensure we do not clobber built in Ruby functionality.
        Object.instance_methods.each do |obj_method_name|
          if resource_method_names.include?(obj_method_name.to_s)
            raise Errors::ResourceMethodConflict.new(
              resource_name: @name,
              method_name: obj_method_name
            )
          end
        end
      end

      def check_for_duplicate_method!(method_name, method_names)
        method_name = method_name.to_s
        if method_names.include?(method_name)
          # uncomment to see generated class with method conflicts
          # puts self.to_s
          raise Errors::ResourceMethodConflict.new(
            resource_name: @name,
            method_name: method_name
          )
        else
          method_names << method_name
        end
      end

    end
  end
end
