Aws.add_service(:CloudWatchLogs, {
  api: File.join(Aws::GEM_ROOT, 'apis', 'CloudWatchLogs.api.json'),
  docs: File.join(Aws::GEM_ROOT, 'apis', 'CloudWatchLogs.docs.json'),
  paginators: File.join(Aws::GEM_ROOT, 'apis', 'CloudWatchLogs.paginators.json'),
})
