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
  # Configuration options for what is shown in an alert event message.
  class SlackIntegrationChannelDisplay
    include BaseGenericModel

    # Show the main body of the alert event.
    attr_accessor :message

    # Show the list of @-handles in the alert event.
    attr_accessor :notified

    # Show the alert event's snapshot image.
    attr_accessor :snapshot

    # Show the scopes on which the monitor alerted.
    attr_accessor :tags

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'message' => :'message',
        :'notified' => :'notified',
        :'snapshot' => :'snapshot',
        :'tags' => :'tags'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'message' => :'Boolean',
        :'notified' => :'Boolean',
        :'snapshot' => :'Boolean',
        :'tags' => :'Boolean'
      }
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::SlackIntegrationChannelDisplay` initialize method"
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

      if attributes.key?(:'message')
        self.message = attributes[:'message']
      end

      if attributes.key?(:'notified')
        self.notified = attributes[:'notified']
      end

      if attributes.key?(:'snapshot')
        self.snapshot = attributes[:'snapshot']
      end

      if attributes.key?(:'tags')
        self.tags = attributes[:'tags']
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
          message == o.message &&
          notified == o.notified &&
          snapshot == o.snapshot &&
          tags == o.tags
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [message, notified, snapshot, tags].hash
    end
  end
end
