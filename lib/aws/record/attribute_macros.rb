# Copyright 2011 Amazon.com, Inc. or its affiliates. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License"). You
# may not use this file except in compliance with the License. A copy of
# the License is located at
#
#     http://aws.amazon.com/apache2.0/
#
# or in the "license" file accompanying this file. This file is
# distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF
# ANY KIND, either express or implied. See the License for the specific
# language governing permissions and limitations under the License.

require 'aws/record/attributes/string'
require 'aws/record/attributes/integer'
require 'aws/record/attributes/sortable_integer'
require 'aws/record/attributes/float'
require 'aws/record/attributes/sortable_float'
require 'aws/record/attributes/boolean'
require 'aws/record/attributes/datetime'
require 'aws/record/attributes/date'

module AWS
  module Record
    module AttributeMacros
  
      # Adds a string attribute to this class.
      #
      # @example A standard string attribute
      #
      #   class Recipe < AWS::Record::Base
      #     string_attr :name
      #   end
      #
      #   recipe = Recipe.new(:name => "Buttermilk Pancakes")
      #   recipe.name #=> 'Buttermilk Pancakes'
      #
      # @example A string attribute with +:set+ set to true
      #
      #   class Recipe < AWS::Record::Base
      #     string_attr :tags, :set => true
      #   end
      #
      #   recipe = Recipe.new(:tags => %w(popular dessert))
      #   recipe.tags #=> #<Set: {"popular", "desert"}> 
      #
      # @param [Symbol] name The name of the attribute.
      # @param [Hash] options
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple values.
      def string_attr name, options = {}
        add_attribute(StringAttribute.new(name, options))
      end

      # Adds an integer attribute to this class.
      #
      #   class Recipe < AWS::Record::Base
      #     integer_attr :servings
      #   end
      #
      #   recipe = Recipe.new(:servings => '10')
      #   recipe.servings #=> 10
      #
      # @param [Symbol] name The name of the attribute.
      # @param [Hash] options
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple values.
      def integer_attr name, options = {}
        add_attribute(IntegerAttribute.new(name, options))
      end

      # Adds a sortable integer attribute to this class.
      #
      #   class Person < AWS::Record::Base
      #     sortable_integer_attr :age, :range => 0..150
      #   end
      #
      #   person = Person.new(:age => 10)
      #   person.age #=> 10
      #
      # === Validations
      # 
      # It is recomended to apply a validates_numericality_of with
      # minimum and maximum value constraints.  If a value is assigned
      # to a sortable integer that falls outside of the +:range: it will
      # raise a runtime error when the record is saved.
      #
      # === Difference Between Sortable an Regular Integer Attributes
      #
      # Because SimpleDB does not support numeric types, all values must
      # be converted to strings.  This complicates sorting by numeric values.
      # To accomplish sorting numeric attributes the values must be
      # zero padded and have an offset applied to eliminate negative values.
      #
      # @param [Symbol] name The name of the attribute.
      # @param [Hash] options
      # @option options [Range] :range A numeric range the represents the
      #   minimum and  maximum values this attribute should accept.
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple values.
      def sortable_integer_attr name, options = {}
        add_attribute(SortableIntegerAttribute.new(name, options))
      end

      # Adds a float attribute to this class.
      #
      #   class Listing < AWS::Record::Base
      #     float_attr :score
      #   end
      #
      #   listing = Listing.new(:score => '123.456')
      #   listing.score # => 123.456
      #
      # @param [Symbol] name The name of the attribute.
      # @param [Hash] options
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple values.
      def float_attr name, options = {}
        add_attribute(FloatAttribute.new(name, options))
      end

      # Adds sortable float attribute to this class.
      #
      # Persisted values are stored (and sorted) as strings.  This makes it
      # more difficult to sort numbers because they don't sort 
      # lexicographically unless they have been offset to be positive and
      # then zero padded.
      #
      # === Postive Floats
      #
      # To store floats in a sort-friendly manor:
      #
      #   sortable_float_attr :score, :range => (0..10)
      #
      # This will cause values like 5.5 to persist as a string like '05.5' so 
      # that they can be sorted lexicographically.
      #
      # === Negative Floats
      #
      # If you need to store negative sortable floats, increase your +:range+
      # to include a negative value.
      #
      #   sortable_float_attr :position, :range => (-10..10)
      #
      # AWS::Record will add 10 to all values and zero pad them 
      # (e.g. -10.0 will be represented as '00.0' and 10 will be represented as 
      # '20.0').  This will allow the values to be compared lexicographically.
      #
      # @note If you change the +:range+ after some values have been persisted
      #   you must also manually migrate all of the old values to have the
      #   correct padding & offset or they will be interpreted differently.
      #
      # @param [Symbol] name The name of the attribute.
      # @param [Hash] options
      # @option options [Range] :range The range of numbers this attribute
      #   should represent.  The min and max values of this range will determine
      #   how many digits of precision are required and how much of an offset
      #   is required to make the numbers sort lexicographically.
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple values.
      def sortable_float_attr name, options = {}
        add_attribute(SortableFloatAttribute.new(name, options))
      end

      # Adds a boolean attribute to this class.
      #
      # @example
      #
      #   class Book < AWS::Record::Base
      #     boolean_attr :read
      #   end
      #
      #   b = Book.new
      #   b.read? # => false
      #   b.read = true
      #   b.read? # => true
      #
      #   listing = Listing.new(:score => '123.456'
      #   listing.score # => 123.456
      #
      # @param [Symbol] name The name of the attribute.
      def boolean_attr name, options = {}

        attr = add_attribute(BooleanAttribute.new(name, options))

        # add the boolean question mark method
        define_method("#{attr.name}?") do
          !!__send__(attr.name)
        end

      end

      # Adds a datetime attribute to this class.
      #
      # @example A standard datetime attribute
      #
      #   class Recipe < AWS::Record::Base
      #     datetime_attr :invented
      #   end
      #
      #   recipe = Recipe.new(:invented => Time.now)
      #   recipe.invented #=> <DateTime ...>
      #
      # If you add a datetime_attr for +:created_at+ and/or +:updated_at+ those
      # will be automanaged.
      #
      # @param [Symbol] name The name of the attribute.
      #
      # @param [Hash] options
      #
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple date times.
      #
      def datetime_attr name, options = {}
        add_attribute(DateTimeAttribute.new(name, options))
      end

      # Adds a date attribute to this class.
      #
      # @example A standard date attribute
      #
      #   class Person < AWS::Record::Base
      #     date_attr :birthdate
      #   end
      #
      #   baby = Person.new
      #   baby.birthdate = Time.now
      #   baby.birthdate #=> <Date: ....>
      #
      # @param [Symbol] name The name of the attribute.
      #
      # @param [Hash] options
      #
      # @option options [Boolean] :set (false) When true this attribute
      #   can have multiple dates.
      #
      def date_attr name, options = {}
        add_attribute(DateAttribute.new(name, options))
      end

      # A convenience method for adding the standard two datetime attributes
      # +:created_at+ and +:updated_at+.
      #
      # @example
      #
      #   class Recipe < AWS::Record::Base
      #     timestamps
      #   end
      #
      #   recipe = Recipe.new
      #   recipe.save
      #   recipe.created_at #=> <DateTime ...>
      #   recipe.updated_at #=> <DateTime ...>
      # 
      def timestamps
        c = datetime_attr :created_at
        u = datetime_attr :updated_at
        [c, u]
      end
  
      # @private
      private
      def add_attribute attribute

        attr_name = attribute.name

        attributes[attr_name] = attribute

        # setter
        define_method("#{attr_name}=") do |value|
          self[attr_name] = value
        end

        # getter
        define_method(attr_name) do
          self[attr_name]
        end

        # before type-cast getter
        define_method("#{attr_name}_before_type_cast") do
          @_data[attr_name]
        end

        ## dirty tracking methods

        define_method("#{attr_name}_changed?") do
          attribute_changed?(attr_name)
        end

        define_method("#{attr_name}_change") do
          attribute_change(attr_name)
        end

        define_method("#{attr_name}_was") do
          attribute_was(attr_name)
        end

        define_method("#{attr_name}_will_change!") do
          attribute_will_change!(attr_name)
        end

        define_method("reset_#{attr_name}!") do
          reset_attribute!(attr_name)
        end

        attribute

      end

    end
  end
end
