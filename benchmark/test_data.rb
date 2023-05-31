# frozen_string_literal: true

module Benchmark
  module TestData
    # generate predictable, but variable test values of different types
    def self.random_value(i=0, seed=0)
      r = Random.new(i+seed) # use the index as the seed for predictable results
      case random_number(r, 5)
      when 0 then "Some String value #{i}"
      when 1 then r.rand # a float value
      when 2 then random_number(r, 100000) # a large integer
      when 3 then (0..random_number(r, 100)).to_a # an array
      when 4 then {a: 1, b: 2, c: 3} # a hash
      else
        "generic string"
      end
    end

    # generate a predictable, but variable hash with a range of data types
    def self.test_hash(n_keys=5, seed=0)
      n_keys.times.map { |i| ["key#{i}", random_value(i, seed)]}.to_h
    end

    def self.random_number(r, n)
      (r.rand*n).floor
    end

  end
end
