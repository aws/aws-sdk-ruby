require 'thread'

module Aws

  # A utilty class that makes it easier to work with Struct objects.
  #
  # ## Construction
  #
  # You can construct a Structure with a simple hash.
  #
  #     person = Structure.new(name: 'John Doe', age: 40)
  #     #=> #<struct  name="John Doe", age=40>
  #
  # ## Empty Structures
  #
  # The stdlib Struct class does not work with empty member lists.
  # Structure solves this by introducing the EmptyStructure class.
  #
  #     struct = Structure.new({})
  #     #=> #<struct>
  #
  # ## Structure Classes
  #
  # In addition to simpler object construction, struct classes are re-used
  # automatically.
  #
  #   person1 = Structure.new(name: 'John Doe', age: 40)
  #   person2 = Structure.new(name: 'Jane Doe', age: 40)
  #
  #   person1.class == person2.class
  #
  # ## Hash Conversion
  #
  # Calling {#to_h} or {#to_hash} on a Structure object performs a deep
  # conversion of Structure objects into hashes.
  #
  #     person = Structure.new(
  #       name: "John",
  #       age: 40,
  #       friend: Structure.new(name: "Jane", age: 40, friend: nil)
  #     )
  #     person.to_h
  #     #=> {:name=>"John", :age=>40, :friend=>{:name=>"Jane", :age=>40}}
  #
  class Structure < Struct

    @@classes = {}
    @@classes_mutex = Mutex.new

    if Struct.instance_methods.include?(:to_h)
      alias orig_to_h to_h
    end

    # Deeply converts the Structure into a hash.  Structure members that
    # are `nil` are omitted from the resultant hash.
    #
    # You can call #orig_to_h to get vanilla #to_h behavior as defined
    # in stdlib Struct.
    #
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
          struct_class = @@classes[members]
          if struct_class.nil?
            @@classes_mutex.synchronize do
              struct_class = members.empty? ? super(:_) : super(*members)
              @@classes[members] = struct_class
            end
          end
          struct_class.new(*values)
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
