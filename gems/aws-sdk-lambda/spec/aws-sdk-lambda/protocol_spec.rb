# This is generated code!

require_relative '../spec_helper'


module Aws::Lambda
  describe Client do
    let(:client_options) { { stub_responses: true } }
    let(:client) { Client.new(client_options) }

    # temporary
    def data_to_hash(obj)
      case obj
      when Struct
        obj.members.each.with_object({}) do |member, hash|
          value = obj[member]
          hash[member] = data_to_hash(value) unless value.nil?
        end
      when Hash
        obj.each.with_object({}) do |(key, value), hash|
          hash[key] = data_to_hash(value)
        end
      when Array then obj.collect { |value| data_to_hash(value) }
      when IO, StringIO then obj.read
      when Smithy::Schema::Union then obj.to_h
      else obj
      end
    end

  end
end
