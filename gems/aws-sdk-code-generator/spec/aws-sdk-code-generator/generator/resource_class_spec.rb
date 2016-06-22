require 'spec_helper'

module AwsSdkCodeGenerator
  module Generators
    describe ResourceClass do
      describe 'method name conflicts' do

        it 'does define methods for data getters that conflict' do
          expect {
            ResourceClass.new(
              name: 'ResourceName',
              api: {
                "shapes" => {
                  "ResourceShape" => {
                    "type" => "structure",
                    "members" => {
                      "Name" => { "shape" => "String" }
                    }
                  },
                  "String" => { "type" => "string" }
                }
              },
              resource: {
                "identifiers" => [
                  # NOTE: Intentionally NOT adding "memberName" to generate
                  # a conflict with one of the shape member names. The
                  # generator should skip adding the data getter,
                  # thus avoiding a method conflict.
                  { "name" => "Name" }
                ],
                "shape" => "ResourceShape"
              }
            )
          }.not_to raise_error
        end

        it 'raises when an action and association have a name conflict' do
          expect {
            g = ResourceClass.new(
              name: 'ResourceName',
              api: {
                "operations" => {
                  "OperationName" => {}
                }
              },
              resource: {
                # NOTE: Defining a single action and has association
                # that have conflicting names. This should raise
                # an error.
                "actions" => {
                  "MethodName" => {
                    "request" => { "operation" => "OperationName" }
                  }
                },
                "has" => {
                  "MethodName" => {
                    "resource" => { "type" => "ResourceName" }
                  }
                }
              }
            )
          }.to raise_error(Errors::ResourceMethodConflict, /#method_name/)
        end

        it 'raises when resource methods conflict with Ruby Object methods' do
          expect {
            g = ResourceClass.new(
              name: 'ResourceName',
              api: {},
              resource: {
                "identifiers" => [
                  # NOTE: This will attempt to define a method that
                  # conflicts directly with Ruby's Object#hash method.
                  # This should raise an error.
                  { "name" => "Hash" }
                ]
              }
            )
          }.to raise_error(Errors::ResourceMethodConflict, /#hash/)
        end

      end
    end
  end
end
