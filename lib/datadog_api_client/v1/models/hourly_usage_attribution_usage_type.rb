=begin
#Datadog API V1 Collection

#Collection of all Datadog Public endpoints.

The version of the OpenAPI document: 1.0
Contact: support@datadoghq.com
Generated by: https://github.com/DataDog/datadog-api-client-ruby/tree/master/.generator

 Unless explicitly stated otherwise all files in this repository are licensed under the Apache-2.0 License.
 This product includes software developed at Datadog (https://www.datadoghq.com/).
 Copyright 2020-Present Datadog, Inc.

=end

require 'date'
require 'time'

module DatadogAPIClient::V1
  # Supported products for hourly usage attribution requests.
  class HourlyUsageAttributionUsageType
    include BaseEnumModel

    API_USAGE = "api_usage".freeze
    APM_FARGATE_USAGE = "apm_fargate_usage".freeze
    APM_HOST_USAGE = "apm_host_usage".freeze
    APM_USM_USAGE = "apm_usm_usage".freeze
    APPSEC_FARGATE_USAGE = "appsec_fargate_usage".freeze
    APPSEC_USAGE = "appsec_usage".freeze
    ASM_SERVERLESS_TRACED_INVOCATIONS_USAGE = "asm_serverless_traced_invocations_usage".freeze
    ASM_SERVERLESS_TRACED_INVOCATIONS_PERCENTAGE = "asm_serverless_traced_invocations_percentage".freeze
    BROWSER_USAGE = "browser_usage".freeze
    CI_PIPELINE_INDEXED_SPANS_USAGE = "ci_pipeline_indexed_spans_usage".freeze
    CI_TEST_INDEXED_SPANS_USAGE = "ci_test_indexed_spans_usage".freeze
    CI_VISIBILITY_ITR_USAGE = "ci_visibility_itr_usage".freeze
    CLOUD_SIEM_USAGE = "cloud_siem_usage".freeze
    CONTAINER_EXCL_AGENT_USAGE = "container_excl_agent_usage".freeze
    CONTAINER_USAGE = "container_usage".freeze
    CSPM_CONTAINERS_USAGE = "cspm_containers_usage".freeze
    CSPM_HOSTS_USAGE = "cspm_hosts_usage".freeze
    CUSTOM_EVENT_USAGE = "custom_event_usage".freeze
    CUSTOM_INGESTED_TIMESERIES_USAGE = "custom_ingested_timeseries_usage".freeze
    CUSTOM_TIMESERIES_USAGE = "custom_timeseries_usage".freeze
    CWS_CONTAINERS_USAGE = "cws_containers_usage".freeze
    CWS_HOSTS_USAGE = "cws_hosts_usage".freeze
    DATA_JOBS_MONITORING_USAGE = "data_jobs_monitoring_usage".freeze
    DATA_STREAM_MONITORING_USAGE = "data_stream_monitoring_usage".freeze
    DBM_HOSTS_USAGE = "dbm_hosts_usage".freeze
    DBM_QUERIES_USAGE = "dbm_queries_usage".freeze
    ERROR_TRACKING_USAGE = "error_tracking_usage".freeze
    ERROR_TRACKING_PERCENTAGE = "error_tracking_percentage".freeze
    ESTIMATED_INDEXED_LOGS_USAGE = "estimated_indexed_logs_usage".freeze
    ESTIMATED_INDEXED_SPANS_USAGE = "estimated_indexed_spans_usage".freeze
    ESTIMATED_INGESTED_LOGS_USAGE = "estimated_ingested_logs_usage".freeze
    ESTIMATED_INGESTED_SPANS_USAGE = "estimated_ingested_spans_usage".freeze
    ESTIMATED_RUM_SESSIONS_USAGE = "estimated_rum_sessions_usage".freeze
    FARGATE_USAGE = "fargate_usage".freeze
    FUNCTIONS_USAGE = "functions_usage".freeze
    INCIDENT_MANAGEMENT_MONTHLY_ACTIVE_USERS_USAGE = "incident_management_monthly_active_users_usage".freeze
    INDEXED_SPANS_USAGE = "indexed_spans_usage".freeze
    INFRA_HOST_USAGE = "infra_host_usage".freeze
    INGESTED_LOGS_BYTES_USAGE = "ingested_logs_bytes_usage".freeze
    INGESTED_SPANS_BYTES_USAGE = "ingested_spans_bytes_usage".freeze
    INVOCATIONS_USAGE = "invocations_usage".freeze
    LAMBDA_TRACED_INVOCATIONS_USAGE = "lambda_traced_invocations_usage".freeze
    LOGS_INDEXED_15DAY_USAGE = "logs_indexed_15day_usage".freeze
    LOGS_INDEXED_180DAY_USAGE = "logs_indexed_180day_usage".freeze
    LOGS_INDEXED_1DAY_USAGE = "logs_indexed_1day_usage".freeze
    LOGS_INDEXED_30DAY_USAGE = "logs_indexed_30day_usage".freeze
    LOGS_INDEXED_360DAY_USAGE = "logs_indexed_360day_usage".freeze
    LOGS_INDEXED_3DAY_USAGE = "logs_indexed_3day_usage".freeze
    LOGS_INDEXED_45DAY_USAGE = "logs_indexed_45day_usage".freeze
    LOGS_INDEXED_60DAY_USAGE = "logs_indexed_60day_usage".freeze
    LOGS_INDEXED_7DAY_USAGE = "logs_indexed_7day_usage".freeze
    LOGS_INDEXED_90DAY_USAGE = "logs_indexed_90day_usage".freeze
    LOGS_INDEXED_CUSTOM_RETENTION_USAGE = "logs_indexed_custom_retention_usage".freeze
    MOBILE_APP_TESTING_USAGE = "mobile_app_testing_usage".freeze
    NDM_NETFLOW_USAGE = "ndm_netflow_usage".freeze
    NPM_HOST_USAGE = "npm_host_usage".freeze
    OBS_PIPELINE_BYTES_USAGE = "obs_pipeline_bytes_usage".freeze
    OBS_PIPELINE_VCPU_USAGE = "obs_pipelines_vcpu_usage".freeze
    ONLINE_ARCHIVE_USAGE = "online_archive_usage".freeze
    PROFILED_CONTAINER_USAGE = "profiled_container_usage".freeze
    PROFILED_FARGATE_USAGE = "profiled_fargate_usage".freeze
    PROFILED_HOST_USAGE = "profiled_host_usage".freeze
    RUM_BROWSER_MOBILE_SESSIONS_USAGE = "rum_browser_mobile_sessions_usage".freeze
    RUM_REPLAY_SESSIONS_USAGE = "rum_replay_sessions_usage".freeze
    SCA_FARGATE_USAGE = "sca_fargate_usage".freeze
    SDS_SCANNED_BYTES_USAGE = "sds_scanned_bytes_usage".freeze
    SERVERLESS_APPS_USAGE = "serverless_apps_usage".freeze
    SIEM_ANALYZED_LOGS_ADD_ON_USAGE = "siem_analyzed_logs_add_on_usage".freeze
    SIEM_INGESTED_BYTES_USAGE = "siem_ingested_bytes_usage".freeze
    SNMP_USAGE = "snmp_usage".freeze
    UNIVERSAL_SERVICE_MONITORING_USAGE = "universal_service_monitoring_usage".freeze
    VULN_MANAGEMENT_HOSTS_USAGE = "vuln_management_hosts_usage".freeze
    WORKFLOW_EXECUTIONS_USAGE = "workflow_executions_usage".freeze
  end
end
