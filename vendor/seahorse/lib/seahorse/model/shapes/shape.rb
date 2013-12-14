
module Seahorse
  module Model
    module Shapes
      class Shape < Node
        class << self
          def register_type(hash)
            hash.each do |type, klass|
              klass.type = type
            end
            types.update(hash)
          end

          def types; @@types ||= {} end

          attr_accessor :type

          def from_hash_class(hash)
            return self if hash.nil?
            raise "Shape #{hash} has undefined type" if hash["type"].nil?
            if type = types[hash["type"].to_sym]
              type
            else
              raise "Unregistered shape type #{hash["type"]}"
            end
          end
        end

        def initialize(*)
          super
          self.metadata = {}
          self.type = self.class.type
        end

        attr_accessor :member_name

        property :type, Symbol
        property :required, Boolean
        property :default, Object
        property :documentation, String
        property :location, String
        property :serialized_name, String
        property :metadata, Hash

        alias required? required

        def serialized_name
          name = @serialized_name || @member_name.to_s
          name == '' ? nil : name
        end

        def location
          @location || 'body'
        end

        def to_hash
          hash = super
          hash.delete('serialized_name') if @serialized_name.nil?
          hash.delete('metadata') if hash['metadata'].empty?
          hash.delete('location') if @location.nil?
          hash
        end

      end

      class ScalarShape < Shape; end
      class IntegerShape < ScalarShape; end
      class FloatShape < ScalarShape; end
      class BooleanShape < ScalarShape; end
      class BlobShape < ScalarShape; end

      class StringShape < ScalarShape
        property :enum, [String]
      end

      class TimestampShape < ScalarShape; end
      class Iso8601TimestampShape < TimestampShape; end
      class Rfc822TimestampShape < TimestampShape; end
      class UnixTimestampShape < TimestampShape; end

      class ListShape < Shape
        property :members, Shape

        def initialize(*)
          super
          self.members = nil
        end
      end

      class MapShape < Shape
        property :keys, Shape
        property :members, Shape

        def initialize(*)
          super
          self.keys = nil
          self.members = nil
        end
      end

      class MemberHash < Hash
        def []=(member_name, member)
          member.member_name = member_name.to_sym
          super(member.member_name, member)
        end

        def self.from_hash(hash)
          hash.inject(new) {|hsh, (k, v)| hsh[k] = Shape.from_hash(v); hsh }
        end

        def to_hash
          inject({}) {|hsh, (k, v)| hsh[k.to_s] = v.to_hash; hsh }
        end
      end

      class StructureShape < Shape
        property :members, MemberHash

        def initialize(*)
          super
          self.members = MemberHash.new
        end

        def empty?
          @members.empty?
        end

        def members= hash
          @members = MemberHash.new
          hash.each do |k, v|
            @members[k] = v
          end
        end

        # @return [Hash<String,Shape>] Returns a hash of members indexed
        #  by their serialized names.  This is useful for parsing.
        def serialized_members
          @serialized_members ||= compute_serialized_members
        end

        private

        def compute_serialized_members
          members.inject({}) do |hash, (member_name, member)|
            hash[member.serialized_name || member.member_name.to_s] = member
            hash
          end
        end
      end

      class InputShape < StructureShape

        property :payload, Symbol

        # @return [Hash<Symbol, Shape>] Returns a hash of member shapes
        #   that should be serialized into the request headers.
        def header_members
          member_map['header']
        end

        # @return [Hash<Symbol, Shape>] Returns a hash of member shapes
        #   that should be serialized into the request uri path.
        def uri_members
          member_map['uri']
        end

        # @return [Hash<Symbol, Shape>] Returns a hash of member shapes
        #   that should be serialized into the request body.
        def body_members
          member_map['body']
        end

        def status_code_member
          member_map['http_status'].values.first
        end

        # @return [StructureShape] Returns a structure with each of the
        #   members that represent the request body.
        def payload_member
          @payload_member ||= begin
            if payload
              members[payload]
            else
              shape = Seahorse::Model::Shapes::StructureShape.new
              shape.members = body_members
              shape.serialized_name = serialized_name
              shape.metadata = metadata
              shape
            end
          end
        end

        # @return [Boolean] Returns `true` if the request input body
        #   should be sent as blob/raw data (e.g. from a file).
        def raw_payload?
          !payload_member.is_a?(StructureShape)
        end

        private

        def member_map
          @member_map ||= begin
            {
              'http_status' => {},
              'header' => {},
              'uri' => {},
              'body' => {} 
            }.tap do |map|
              members.each do |member_name, member|
                map[member.location][member_name] = member
              end
            end
          end
        end

      end

      class OutputShape < InputShape; end

      class Shape < Node
        register_type input: InputShape
        register_type output: OutputShape
        register_type structure: StructureShape
        register_type list: ListShape
        register_type map: MapShape
        register_type string: StringShape
        register_type integer: IntegerShape
        register_type timestamp: TimestampShape
        register_type iso8601_timestamp: Iso8601TimestampShape
        register_type rfc822_timestamp: Rfc822TimestampShape
        register_type unix_timestamp: UnixTimestampShape
        register_type boolean: BooleanShape
        register_type blob: BlobShape
        register_type float: FloatShape
      end
    end
  end
end
