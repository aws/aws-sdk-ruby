Aws.add_service(:CloudWatchLogs, {
  api: File.join(Aws::APIS_DIR, 'CloudWatchLogs.api.json'),
  docs: File.join(Aws::APIS_DIR, 'CloudWatchLogs.docs.json'),
  paginators: File.join(Aws::APIS_DIR, 'CloudWatchLogs.paginators.json'),
})
