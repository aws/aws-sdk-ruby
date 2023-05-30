# frozen_string_literal: true

# polyfill random_number for older versions of Ruby.
unless Random.new.respond_to?(:random_number)
  class Random
    def random_number(n)
      (rand*n).floor
    end
  end
end

# generate predictable, but variable test values of different types
def random_value(i=0, seed=0)
  r = Random.new(i+seed) # use the index as the seed for predictable results
  case r.random_number(5)
  when 0 then "Some String value #{i}"
  when 1 then r.rand # a float value
  when 2 then r.random_number(100000) # a large integer
  when 3 then (0..r.random_number(100)).to_a # an array
  when 4 then {a: 1, b: 2, c: 3} # a hash
  else
    "generic string"
  end
end

# generate a predictable, but variable hash with a range of data types
def test_hash(n_keys=5, seed=0)
  n_keys.times.map { |i| ["key#{i}", random_value(i, seed)]}.to_h
end