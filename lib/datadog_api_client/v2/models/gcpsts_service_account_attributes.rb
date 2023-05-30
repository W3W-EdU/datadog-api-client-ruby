=begin
#Datadog API V2 Collection

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

module DatadogAPIClient::V2
  # Attributes associated with your service account.
  class GCPSTSServiceAccountAttributes
    include BaseGenericModel

    # Silence monitors for expected GCE instance shutdowns.
    attr_accessor :automute

    # Your service account email address.
    attr_accessor :client_email

    # Your Host Filters.
    attr_accessor :host_filters

    # When enabled, Datadog performs configuration checks across your Google Cloud environment by continuously scanning every resource.
    attr_accessor :is_cspm_enabled

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'automute' => :'automute',
        :'client_email' => :'client_email',
        :'host_filters' => :'host_filters',
        :'is_cspm_enabled' => :'is_cspm_enabled'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'automute' => :'Boolean',
        :'client_email' => :'String',
        :'host_filters' => :'Array<String>',
        :'is_cspm_enabled' => :'Boolean'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::GCPSTSServiceAccountAttributes` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `DatadogAPIClient::V2::GCPSTSServiceAccountAttributes`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'automute')
        self.automute = attributes[:'automute']
      end

      if attributes.key?(:'client_email')
        self.client_email = attributes[:'client_email']
      end

      if attributes.key?(:'host_filters')
        if (value = attributes[:'host_filters']).is_a?(Array)
          self.host_filters = value
        end
      end

      if attributes.key?(:'is_cspm_enabled')
        self.is_cspm_enabled = attributes[:'is_cspm_enabled']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param o [Object] Object to be compared
    # @!visibility private
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          automute == o.automute &&
          client_email == o.client_email &&
          host_filters == o.host_filters &&
          is_cspm_enabled == o.is_cspm_enabled
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [automute, client_email, host_filters, is_cspm_enabled].hash
    end
  end
end
