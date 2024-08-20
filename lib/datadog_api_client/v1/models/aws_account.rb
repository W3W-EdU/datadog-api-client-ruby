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
  # Returns the AWS account associated with this integration.
  class AWSAccount
    include BaseGenericModel

    # Your AWS access key ID. Only required if your AWS account is a GovCloud or China account.
    attr_accessor :access_key_id

    # Your AWS Account ID without dashes.
    attr_accessor :account_id

    # An object, (in the form `{"namespace1":true/false, "namespace2":true/false}`),
    # that enables or disables metric collection for specific AWS namespaces for this
    # AWS account only.
    attr_accessor :account_specific_namespace_rules

    # Whether Datadog collects cloud security posture management resources from your AWS account. This includes additional resources not covered under the general `resource_collection`.
    attr_accessor :cspm_resource_collection_enabled

    # An array of [AWS regions](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints)
    # to exclude from metrics collection.
    attr_accessor :excluded_regions

    # Whether Datadog collects additional attributes and configuration information about the resources in your AWS account. Required for `cspm_resource_collection`.
    attr_accessor :extended_resource_collection_enabled

    # The array of EC2 tags (in the form `key:value`) defines a filter that Datadog uses when collecting metrics from EC2.
    # Wildcards, such as `?` (for single characters) and `*` (for multiple characters) can also be used.
    # Only hosts that match one of the defined tags
    # will be imported into Datadog. The rest will be ignored.
    # Host matching a given tag can also be excluded by adding `!` before the tag.
    # For example, `env:production,instance-type:c1.*,!region:us-east-1`
    attr_accessor :filter_tags

    # Array of tags (in the form `key:value`) to add to all hosts
    # and metrics reporting through this integration.
    attr_accessor :host_tags

    # Whether Datadog collects metrics for this AWS account.
    attr_accessor :metrics_collection_enabled

    # Deprecated in favor of 'extended_resource_collection_enabled'. Whether Datadog collects a standard set of resources from your AWS account.
    attr_accessor :resource_collection_enabled

    # Your Datadog role delegation name.
    attr_accessor :role_name

    # Your AWS secret access key. Only required if your AWS account is a GovCloud or China account.
    attr_accessor :secret_access_key

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'access_key_id' => :'access_key_id',
        :'account_id' => :'account_id',
        :'account_specific_namespace_rules' => :'account_specific_namespace_rules',
        :'cspm_resource_collection_enabled' => :'cspm_resource_collection_enabled',
        :'excluded_regions' => :'excluded_regions',
        :'extended_resource_collection_enabled' => :'extended_resource_collection_enabled',
        :'filter_tags' => :'filter_tags',
        :'host_tags' => :'host_tags',
        :'metrics_collection_enabled' => :'metrics_collection_enabled',
        :'resource_collection_enabled' => :'resource_collection_enabled',
        :'role_name' => :'role_name',
        :'secret_access_key' => :'secret_access_key'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'access_key_id' => :'String',
        :'account_id' => :'String',
        :'account_specific_namespace_rules' => :'Hash<String, Boolean>',
        :'cspm_resource_collection_enabled' => :'Boolean',
        :'excluded_regions' => :'Array<String>',
        :'extended_resource_collection_enabled' => :'Boolean',
        :'filter_tags' => :'Array<String>',
        :'host_tags' => :'Array<String>',
        :'metrics_collection_enabled' => :'Boolean',
        :'resource_collection_enabled' => :'Boolean',
        :'role_name' => :'String',
        :'secret_access_key' => :'String'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::AWSAccount` initialize method"
      end

      self.additional_properties = {}
      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          self.additional_properties[k.to_sym] = v
        else
          h[k.to_sym] = v
        end
      }

      if attributes.key?(:'access_key_id')
        self.access_key_id = attributes[:'access_key_id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'account_specific_namespace_rules')
        self.account_specific_namespace_rules = attributes[:'account_specific_namespace_rules']
      end

      if attributes.key?(:'cspm_resource_collection_enabled')
        self.cspm_resource_collection_enabled = attributes[:'cspm_resource_collection_enabled']
      end

      if attributes.key?(:'excluded_regions')
        if (value = attributes[:'excluded_regions']).is_a?(Array)
          self.excluded_regions = value
        end
      end

      if attributes.key?(:'extended_resource_collection_enabled')
        self.extended_resource_collection_enabled = attributes[:'extended_resource_collection_enabled']
      end

      if attributes.key?(:'filter_tags')
        if (value = attributes[:'filter_tags']).is_a?(Array)
          self.filter_tags = value
        end
      end

      if attributes.key?(:'host_tags')
        if (value = attributes[:'host_tags']).is_a?(Array)
          self.host_tags = value
        end
      end

      if attributes.key?(:'metrics_collection_enabled')
        self.metrics_collection_enabled = attributes[:'metrics_collection_enabled']
      end

      if attributes.key?(:'resource_collection_enabled')
        self.resource_collection_enabled = attributes[:'resource_collection_enabled']
      end

      if attributes.key?(:'role_name')
        self.role_name = attributes[:'role_name']
      end

      if attributes.key?(:'secret_access_key')
        self.secret_access_key = attributes[:'secret_access_key']
      end
    end

    # Returns the object in the form of hash, with additionalProperties support.
    # @return [Hash] Returns the object in the form of hash
    # @!visibility private
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      self.additional_properties.each_pair do |attr, value|
        hash[attr] = value
      end
      hash
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          access_key_id == o.access_key_id &&
          account_id == o.account_id &&
          account_specific_namespace_rules == o.account_specific_namespace_rules &&
          cspm_resource_collection_enabled == o.cspm_resource_collection_enabled &&
          excluded_regions == o.excluded_regions &&
          extended_resource_collection_enabled == o.extended_resource_collection_enabled &&
          filter_tags == o.filter_tags &&
          host_tags == o.host_tags &&
          metrics_collection_enabled == o.metrics_collection_enabled &&
          resource_collection_enabled == o.resource_collection_enabled &&
          role_name == o.role_name &&
          secret_access_key == o.secret_access_key
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [access_key_id, account_id, account_specific_namespace_rules, cspm_resource_collection_enabled, excluded_regions, extended_resource_collection_enabled, filter_tags, host_tags, metrics_collection_enabled, resource_collection_enabled, role_name, secret_access_key].hash
    end
  end
end
