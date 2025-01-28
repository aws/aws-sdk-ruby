module Stats
  MEASUREMENTS = ['Total request time (ms)', 'Serialization time (ms)', 'Deserialization time (ms)',
                  'Request payload size (bytes)', 'Response payload size (bytes)'].freeze

  def p50(sorted_data)
    sorted_data[(sorted_data.length - 1) / 2]
  end

  def p90(sorted_data)
    sorted_data[(sorted_data.length - 1) * 0.9]
  end
end