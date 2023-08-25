locals {
  controls_by_service_common_tags = merge(local.azure_compliance_common_tags, {
    controls_by_service = "true"
  })
}
benchmark "controls_by_service" {
  title       = "Controls by Service"
  description = "The Controls by Service contains all the controls segregated by services provided in Azure compliance mod; that detect your deployed resources in the subscription(s) deviating from security best practices."
  children = [
    benchmark.controls_by_service_activedirectory,
    benchmark.controls_by_service_apimanagement,
    benchmark.controls_by_service_appconfiguration,
    benchmark.controls_by_service_appservice,
    benchmark.controls_by_service_automation,
    benchmark.controls_by_service_batch,
    benchmark.controls_by_service_cognitiveservice,
    benchmark.controls_by_service_compute,
    benchmark.controls_by_service_containerinstance,
    benchmark.controls_by_service_containerregistry,
    benchmark.controls_by_service_cosmosdb,
    benchmark.controls_by_service_databoxedge,
    benchmark.controls_by_service_datafactory,
    benchmark.controls_by_service_datalakeanalytics,
    benchmark.controls_by_service_datalakestore,
    benchmark.controls_by_service_eventgrid,
    benchmark.controls_by_service_eventhub,
    benchmark.controls_by_service_frontdoor,
    benchmark.controls_by_service_hdinsight,
    benchmark.controls_by_service_healthcare,
    benchmark.controls_by_service_hpccache,
    benchmark.controls_by_service_iothub,
    benchmark.controls_by_service_keyvault,
    benchmark.controls_by_service_kubernetes,
    benchmark.controls_by_service_kusto,
    benchmark.controls_by_service_logic,
    benchmark.controls_by_service_machinelearning,
    benchmark.controls_by_service_mariadb,
    benchmark.controls_by_service_monitor,
    benchmark.controls_by_service_mysql,
    benchmark.controls_by_service_network,
    benchmark.controls_by_service_postgres,
    benchmark.controls_by_service_redis,
    benchmark.controls_by_service_search,
    benchmark.controls_by_service_securitycenter,
    benchmark.controls_by_service_servicebus,
    benchmark.controls_by_service_servicefabric,
    benchmark.controls_by_service_signalr,
    benchmark.controls_by_service_springcloud,
    benchmark.controls_by_service_sql,
    benchmark.controls_by_service_storage,
    benchmark.controls_by_service_storagesync,
    benchmark.controls_by_service_streamanalytics,
    benchmark.controls_by_service_synapse
  ]

  tags = merge(local.controls_by_service_common_tags, {
    type = "Benchmark"
  })
}
