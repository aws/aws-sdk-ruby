# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing guide for more information:
# https://github.com/aws/aws-sdk-ruby/blob/version-3/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

Feature: Smoke tests for IoTManagedIntegrations

  @iotmanagedintegrations @smoke
  Scenario: ListManagedThingAccountAssociationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_thing_account_associations' with params:
      """
{"managed_thing_id":"sample-thing-id"}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListManagedAccountAssociationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_thing_account_associations' with params:
      """
{"managed_thing_id":"sample-thing-id","max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetDeviceDiscoveryNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_device_discovery' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetManagedThingCertificateNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_managed_thing_certificate' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetManagedThingConnectivityDataNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_managed_thing_connectivity_data' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetRuntimeLogConfigurationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_runtime_log_configuration' with params:
      """
{"managed_thing_id":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListNotificationConfigurationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_notification_configurations' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListNotificationConfigurationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_notification_configurations' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetCredentialLockerNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_credential_locker' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListEventLogConfigurationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_event_log_configurations' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListEventLogConfigurationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_event_log_configurations' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetCustomEndpointSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_custom_endpoint' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListDiscoveredDevicesNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_discovered_devices' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListDiscoveredDevicesWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_discovered_devices' with params:
      """
{"identifier":"testDiscoveryId","max_results":5}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetDefaultEncryptionConfigurationSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_default_encryption_configuration' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetDefaultEncryptionConfigurationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_default_encryption_configuration' with params:
      """
{}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListSchemaVersionsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_schema_versions' with params:
      """
{"type":"capability"}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListManagedThingSchemasNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_thing_schemas' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListManagedThingSchemasWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_thing_schemas' with params:
      """
{"identifier":"testId","max_results":5}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetCloudConnectorNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_cloud_connector' with params:
      """
{"identifier":"123456789012"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetNotificationConfigurationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_notification_configuration' with params:
      """
{"event_type":"DEVICE_EVENT"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListConnectorDestinationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_connector_destinations' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListConnectorDestinationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_connector_destinations' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetConnectorDestinationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_connector_destination' with params:
      """
{"identifier":"nonExistentDestination"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetManagedThingStateNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_managed_thing_state' with params:
      """
{"managed_thing_id":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetManagedThingMetaDataNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_managed_thing_meta_data' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListCredentialLockersSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_credential_lockers' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListCredentialLockersWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_credential_lockers' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListManagedThingsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_things' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListManagedThingsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_managed_things' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: DeregisterAccountAssociationSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'deregister_account_association' with params:
      """
{"managed_thing_id":"mt-12345abcdef","account_association_id":"aa167890wxyz"}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: DeregisterAccountAssociationInvalidAssociationId
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'deregister_account_association' with params:
      """
{"managed_thing_id":"mt-12345abcdef","account_association_id":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetEventLogConfigurationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_event_log_configuration' with params:
      """
{"id":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListOtaTasksSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_ota_tasks' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListOtaTasksWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_ota_tasks' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListOtaTaskConfigurationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_ota_task_configurations' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListOtaTaskConfigurationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_ota_task_configurations' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListAccountAssociationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_account_associations' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListAccountAssociationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_account_associations' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetAccountAssociationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_account_association' with params:
      """
{"account_association_id":"abc123def456"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetManagedThingNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_managed_thing' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetSchemaVersionNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_schema_version' with params:
      """
{"type":"capability","schema_versioned_id":"non.existent.schema@1.0"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListTagsForResourceNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:iotmanagedintegrations:us-east-1:123456789012:managed-thing/nonexistent"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListTagsForResourceSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_tags_for_resource' with params:
      """
{"resource_arn":"arn:aws:iotmanagedintegrations:us-east-1:123456789012:managed-thing/test123"}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetHubConfigurationSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_hub_configuration' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetProvisioningProfileNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_provisioning_profile' with params:
      """
{"identifier":"nonExistentProfileId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListDestinationsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_destinations' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListDestinationsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_destinations' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: GetOtaTaskNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_ota_task' with params:
      """
{"identifier":"nonExistentTaskId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetManagedThingCapabilitiesNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_managed_thing_capabilities' with params:
      """
{"identifier":"nonExistentId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListCloudConnectorsSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_cloud_connectors' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListCloudConnectorsWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_cloud_connectors' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListOtaTaskExecutionsNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_ota_task_executions' with params:
      """
{"identifier":"nonExistentTaskId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetOtaTaskConfigurationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_ota_task_configuration' with params:
      """
{"identifier":"nonExistentConfigId"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: GetDestinationNotFound
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'get_destination' with params:
      """
{"name":"nonExistentDestination"}
      """
    Then I expect a 'Aws::IoTManagedIntegrations::Errors::ResourceNotFoundException' was raised

  @iotmanagedintegrations @smoke
  Scenario: ListProvisioningProfilesSuccess
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_provisioning_profiles' with params:
      """
{}
      """
    Then I expect an error was not raised

  @iotmanagedintegrations @smoke
  Scenario: ListProvisioningProfilesWithPagination
    Given I create a 'Aws::IoTManagedIntegrations' client with config:
      """
{"region":"us-east-1","use_fips_endpoint":false,"use_dualstack_endpoint":false}
      """
    When I call the operation 'list_provisioning_profiles' with params:
      """
{"max_results":5}
      """
    Then I expect an error was not raised
