Aws.add_service(:CloudWatchLogs, {
  api: File.join(Aws::API_DIR, 'CloudWatchLogs.api.json'),
  docs: File.join(Aws::API_DIR, 'CloudWatchLogs.docs.json'),
  paginators: File.join(Aws::API_DIR, 'CloudWatchLogs.paginators.json'),
})
