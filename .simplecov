SimpleCov.use_merging(true)
SimpleCov.start do
  add_filter 'test'
  merge_timeout 3600
end
