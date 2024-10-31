@endpoint(aws-integration) @endpoint(aws-integration-v2)
Feature: AWS Integration
  Configure your Datadog-AWS integration directly through the Datadog API.
  For more information, see the [AWS integration
  page](https://docs.datadoghq.com/integrations/amazon_web_services).

  Background:
    Given a valid "apiKeyAuth" key in the system
    And a valid "appKeyAuth" key in the system
    And an instance of "AWSIntegration" API

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Create account config returns "AWS Account object" response
    Given operation "CreateAWSAccount" enabled
    And new "CreateAWSAccount" request
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"role_name": "DatadogIntegrationRole"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "type": "account"}}
    When the request is sent
    Then the response status is 200 AWS Account object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Create account config returns "Bad Request" response
    Given operation "CreateAWSAccount" enabled
    And new "CreateAWSAccount" request
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"role_name": "DatadogIntegrationRole"}, "aws_account_id": "123456789012", "aws_partition": "aws-invalid", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "type": "account"}}
    When the request is sent
    Then the response status is 400 Bad Request

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Create account config returns "Conflict" response
    Given operation "CreateAWSAccount" enabled
    And there is a valid "aws_account_v2" in the system
    And new "CreateAWSAccount" request
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"role_name": "DatadogIntegrationRole"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "type": "account"}}
    When the request is sent
    Then the response status is 409 Conflict

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Delete account config returns "Bad Request" response
    Given operation "DeleteAWSAccount" enabled
    And new "DeleteAWSAccount" request
    And request contains "aws_account_config_id" parameter with value "not-a-uuid"
    When the request is sent
    Then the response status is 400 Bad Request

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Delete account config returns "No Content" response
    Given operation "DeleteAWSAccount" enabled
    And there is a valid "aws_account_v2" in the system
    And new "DeleteAWSAccount" request
    And request contains "aws_account_config_id" parameter from "aws_account_v2.data.id"
    When the request is sent
    Then the response status is 204 No Content

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Delete account config returns "Not Found" response
    Given operation "DeleteAWSAccount" enabled
    And there is a valid "aws_account_v2" in the system
    And new "DeleteAWSAccount" request
    And request contains "aws_account_config_id" parameter with value "448169a8-251c-4344-abee-1c4edef39f7a"
    When the request is sent
    Then the response status is 404 Not Found

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Generate new external ID returns "AWS External ID object" response
    Given operation "CreateNewAWSExternalID" enabled
    And new "CreateNewAWSExternalID" request
    When the request is sent
    Then the response status is 200 AWS External ID object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Get account config returns "AWS Account object" response
    Given operation "GetAWSAccount" enabled
    And there is a valid "aws_account_v2" in the system
    And new "GetAWSAccount" request
    And request contains "aws_account_config_id" parameter from "aws_account_v2.data.id"
    When the request is sent
    Then the response status is 200 AWS Account object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Get account config returns "Bad Request" response
    Given operation "GetAWSAccount" enabled
    And new "GetAWSAccount" request
    And request contains "aws_account_config_id" parameter with value "not-a-uuid"
    When the request is sent
    Then the response status is 400 Bad Request

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Get account config returns "Not Found" response
    Given operation "GetAWSAccount" enabled
    And new "GetAWSAccount" request
    And request contains "aws_account_config_id" parameter with value "448169a8-251c-4344-abee-1c4edef39f7a"
    When the request is sent
    Then the response status is 404 Not Found

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Get all account configs returns "AWS Accounts List object" response
    Given operation "ListAWSAccounts" enabled
    And new "ListAWSAccounts" request
    When the request is sent
    Then the response status is 200 AWS Accounts List object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - List available namespaces returns "AWS Namespaces List object" response
    Given operation "ListAWSNamespaces" enabled
    And new "ListAWSNamespaces" request
    When the request is sent
    Then the response status is 200 AWS Namespaces List object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - List log services returns "AWS Logs Services List object" response
    Given operation "ListAWSLogServices" enabled
    And new "ListAWSLogServices" request
    When the request is sent
    Then the response status is 200 AWS Logs Services List object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - List namespaces returns "AWS Namespaces List object" response
    Given operation "ListAWSNamespaces" enabled
    And new "ListAWSNamespaces" request
    When the request is sent
    Then the response status is 200 AWS Namespaces List object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Patch account config returns "AWS Account object" response
    Given operation "UpdateAWSAccount" enabled
    And there is a valid "aws_account_v2" in the system
    And new "UpdateAWSAccount" request
    And request contains "aws_account_config_id" parameter from "aws_account_v2.data.id"
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"role_name": "DatadogIntegrationRole"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "type": "account"}}
    When the request is sent
    Then the response status is 200 AWS Account object

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Patch account config returns "Bad Request" response
    Given operation "UpdateAWSAccount" enabled
    And there is a valid "aws_account_v2" in the system
    And new "UpdateAWSAccount" request
    And request contains "aws_account_config_id" parameter from "aws_account_v2.data.id"
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"access_key_id": "AKIAIOSFODNN7EXAMPLE", "secret_access_key": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "type": "account"}}
    When the request is sent
    Then the response status is 400 Bad Request

  @team:DataDog/aws-integrations
  Scenario: AWS Integration - Patch account config returns "Not Found" response
    Given operation "UpdateAWSAccount" enabled
    And new "UpdateAWSAccount" request
    And request contains "aws_account_config_id" parameter with value "448169a8-251c-4344-abee-1c4edef39f7a"
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"role_name": "DatadogIntegrationRole"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "type": "account"}}
    When the request is sent
    Then the response status is 404 Not Found

  @generated @skip @team:DataDog/aws-integrations
  Scenario: AWS Integration - Update account config returns "AWS Account object" response
    Given operation "UpdateAWSAccount" enabled
    And new "UpdateAWSAccount" request
    And request contains "aws_account_config_id" parameter from "REPLACE.ME"
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"access_key_id": "AKIAIOSFODNN7EXAMPLE", "secret_access_key": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "id": "00000000-abcd-0001-0000-000000000000", "type": "account"}}
    When the request is sent
    Then the response status is 200 AWS Account object

  @generated @skip @team:DataDog/aws-integrations
  Scenario: AWS Integration - Update account config returns "Bad Request" response
    Given operation "UpdateAWSAccount" enabled
    And new "UpdateAWSAccount" request
    And request contains "aws_account_config_id" parameter from "REPLACE.ME"
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"access_key_id": "AKIAIOSFODNN7EXAMPLE", "secret_access_key": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "id": "00000000-abcd-0001-0000-000000000000", "type": "account"}}
    When the request is sent
    Then the response status is 400 Bad Request

  @generated @skip @team:DataDog/aws-integrations
  Scenario: AWS Integration - Update account config returns "Not Found" response
    Given operation "UpdateAWSAccount" enabled
    And new "UpdateAWSAccount" request
    And request contains "aws_account_config_id" parameter from "REPLACE.ME"
    And body with value {"data": {"attributes": {"account_tags": ["key:value"], "auth_config": {"access_key_id": "AKIAIOSFODNN7EXAMPLE", "secret_access_key": "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY"}, "aws_account_id": "123456789012", "aws_partition": "aws", "logs_config": {"lambda_forwarder": {"lambdas": ["arn:aws:lambda:us-east-1:123456789012:function:DatadogLambdaLogForwarder"], "sources": ["s3"]}}, "metrics_config": {"automute_enabled": true, "collect_cloudwatch_alarms": true, "collect_custom_metrics": true, "enabled": true, "tag_filters": [{"namespace": "AWS/EC2", "tags": ["key:value"]}]}, "resources_config": {"cloud_security_posture_management_collection": false, "extended_collection": false}, "traces_config": {}}, "id": "00000000-abcd-0001-0000-000000000000", "type": "account"}}
    When the request is sent
    Then the response status is 404 Not Found
