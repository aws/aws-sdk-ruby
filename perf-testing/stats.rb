module Stats
  def p50(sorted_data)
    sorted_data[(sorted_data.length - 1) / 2]
  end

  def p90(sorted_data)
    sorted_data[(sorted_data.length - 1) * 0.9]
  end
end