module BuildTools

  def deep_copy(obj)
    case obj
    when nil then nil
    when true then true
    when false then false
    when Hash then obj.inject({}) { |h,(k,v)| h[deep_copy(k)] = deep_copy(v); h }
    when Array then obj.map { |v| deep_copy(v) }
    else
      if obj.respond_to?(:dup)
        obj.dup
      elsif obj.respond_to?(:clone)
        obj.clone
      else
        obj
      end
    end
  end
  module_function :deep_copy

end
