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
  # Case when signal is generated.
  class SecurityMonitoringRuleCaseCreate
    include BaseGenericModel

    # A rule case contains logical operations (`>`,`>=`, `&&`, `||`) to determine if a signal should be generated
    # based on the event counts in the previously defined queries.
    attr_accessor :condition

    # Name of the case.
    attr_accessor :name

    # Notification targets for each rule case.
    attr_accessor :notifications

    # Severity of the Security Signal.
    attr_reader :status

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'condition' => :'condition',
        :'name' => :'name',
        :'notifications' => :'notifications',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'condition' => :'String',
        :'name' => :'String',
        :'notifications' => :'Array<String>',
        :'status' => :'SecurityMonitoringRuleSeverity'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::SecurityMonitoringRuleCaseCreate` initialize method"
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

      if attributes.key?(:'condition')
        self.condition = attributes[:'condition']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'notifications')
        if (value = attributes[:'notifications']).is_a?(Array)
          self.notifications = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    # @!visibility private
    def valid?
      return false if @status.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param status [Object] Object to be assigned
    # @!visibility private
    def status=(status)
      if status.nil?
        fail ArgumentError, 'invalid value for "status", status cannot be nil.'
      end
      @status = status
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
          condition == o.condition &&
          name == o.name &&
          notifications == o.notifications &&
          status == o.status
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [condition, name, notifications, status].hash
    end
  end
end
