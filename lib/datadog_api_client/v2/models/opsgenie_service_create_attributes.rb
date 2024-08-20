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
  # The Opsgenie service attributes for a create request.
  class OpsgenieServiceCreateAttributes
    include BaseGenericModel

    # The custom URL for a custom region.
    attr_accessor :custom_url

    # The name for the Opsgenie service.
    attr_reader :name

    # The Opsgenie API key for your Opsgenie service.
    attr_reader :opsgenie_api_key

    # The region for the Opsgenie service.
    attr_reader :region

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'custom_url' => :'custom_url',
        :'name' => :'name',
        :'opsgenie_api_key' => :'opsgenie_api_key',
        :'region' => :'region'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'custom_url' => :'String',
        :'name' => :'String',
        :'opsgenie_api_key' => :'String',
        :'region' => :'OpsgenieServiceRegionType'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::OpsgenieServiceCreateAttributes` initialize method"
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

      if attributes.key?(:'custom_url')
        self.custom_url = attributes[:'custom_url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'opsgenie_api_key')
        self.opsgenie_api_key = attributes[:'opsgenie_api_key']
      end

      if attributes.key?(:'region')
        self.region = attributes[:'region']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @name.nil?
      return false if @opsgenie_api_key.nil?
      return false if @region.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param name [Object] Object to be assigned
    # @!visibility private
    def name=(name)
      if name.nil?
        fail ArgumentError, 'invalid value for "name", name cannot be nil.'
      end
      @name = name
    end

    # Custom attribute writer method with validation
    # @param opsgenie_api_key [Object] Object to be assigned
    # @!visibility private
    def opsgenie_api_key=(opsgenie_api_key)
      if opsgenie_api_key.nil?
        fail ArgumentError, 'invalid value for "opsgenie_api_key", opsgenie_api_key cannot be nil.'
      end
      @opsgenie_api_key = opsgenie_api_key
    end

    # Custom attribute writer method with validation
    # @param region [Object] Object to be assigned
    # @!visibility private
    def region=(region)
      if region.nil?
        fail ArgumentError, 'invalid value for "region", region cannot be nil.'
      end
      @region = region
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
          custom_url == o.custom_url &&
          name == o.name &&
          opsgenie_api_key == o.opsgenie_api_key &&
          region == o.region
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [custom_url, name, opsgenie_api_key, region].hash
    end
  end
end
