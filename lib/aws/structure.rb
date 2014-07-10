module Aws
  class Structure < Struct

    @@classes = {}

    # Deeply converts the Structure into a hash.  Structure members that
    # are `nil` are omitted from the resultant hash.
    # @return [Hash]
    def to_h(obj = self)
      case obj
      when Struct
        obj.members.each.with_object({}) do |member, hash|
          value = obj[member]
          hash[member] = to_hash(value) unless value.nil?
        end
      when Hash
        obj.each.with_object({}) do |(key, value), hash|
          hash[key] = to_hash(value)
        end
      when Array
        obj.collect { |value| to_hash(value) }
      when StringIO
        obj.string
      else
        obj
      end
    end
    alias to_hash to_h

    class << self

      # Defines a Struct class with the given member names.  Returns an
      # instance of that class with nil member values.
      #
      #     struct = Structure.new([:name, :age])
      #     struct.members
      #     #=> [:name, :age]
      #
      #     struct[:name] #=> nil
      #     struct[:age] #=> nil
      #
      # You can provide an ordered list of values to initialize structure
      # members with:
      #
      #     struct = Structure.new([:name, :age], ['John Doe', 40])
      #     struct.members
      #     #=> [:name, :age]
      #
      #     struct[:name] #=> 'John Doe'
      #     struct[:age] #=> 40
      #
      # Calling {new} multiple times with the same list of members will
      # reuse Struct classes.
      #
      #     struct1 = Structure.new([:name, :age])
      #     struct2 = Structure.new([:name, :age])
      #
      #     struct1.class.equal?(struct2.class)
      #     #=> true
      #
      # Calling {new} without members, or with an empty list of members
      # will return an {EmptyStructure}:
      #
      #     struct = Structure.new
      #     struct.members
      #     #=> []
      #
      # You can also create an empty Structure via {EmptyStructure}.
      #
      # @overload new(member_names)
      #   @param [Array<Symbol>] member_names An array of member names.
      #   @return [Struct]
      #
      # @overload new(*member_names)
      #   @param [Symbol] member_names A list of member names.
      #   @return [Struct]
      #
      # @overload new(members)
      #   @param [Hash<Symbol,Object>] members A hash of member names
      #     and values.
      #   @return [Struct]
      #
      # @overload new()
      #   @return [EmptyStructure]
      #
      def new(*args)
        members, values = parse_args(args)
        if members.empty? && self == Structure
          EmptyStructure.new
        else
          @@classes[members] ||= members.empty? ? super(:_) : super(*members)
          @@classes[members].new(*values)
        end
      end

      # Deeply converts hashes to Structure objects.  Hashes with string
      # keys are not converted, but their values are.
      # @api private
      def from_hash(value)
        case value
        when Hash
          data = value.each.with_object({}) do |(key, value), hash|
            hash[key] = from_hash(value)
          end
          Symbol === data.keys.first ? new(data) : data
        when Array
          value.map { |v| from_hash(v) }
        else value
        end
      end

      private

      def parse_args(args)
        case args.count
        when 0 then [[], []]
        when 1 then parse_single_arg(args.first)
        else [args, []]
        end
      end

      def parse_single_arg(arg)
        case arg
        when Array then [arg, []]
        when Hash then [arg.keys, arg.values]
        else [[arg], []]
        end
      end

    end
  end
end
