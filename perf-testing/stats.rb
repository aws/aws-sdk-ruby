module Stats
  def p50(data)
    data[(data.length - 1) / 2]
  end

  def p90(data)
    data[(data.length - 1) * 0.9]
  end
end