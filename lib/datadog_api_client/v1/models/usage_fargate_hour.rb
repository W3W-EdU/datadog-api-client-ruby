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
  # Number of Fargate tasks run and hourly usage.
  class UsageFargateHour
    include BaseGenericModel

    # The high-water mark of APM ECS Fargate tasks during the given hour.
    attr_accessor :apm_fargate_count

    # The Application Security Monitoring ECS Fargate tasks during the given hour.
    attr_accessor :appsec_fargate_count

    # The average profiled task count for Fargate Profiling.
    attr_accessor :avg_profiled_fargate_tasks

    # The hour for the usage.
    attr_accessor :hour

    # The organization name.
    attr_accessor :org_name

    # The organization public ID.
    attr_accessor :public_id

    # The number of Fargate tasks run.
    attr_accessor :tasks_count

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'apm_fargate_count' => :'apm_fargate_count',
        :'appsec_fargate_count' => :'appsec_fargate_count',
        :'avg_profiled_fargate_tasks' => :'avg_profiled_fargate_tasks',
        :'hour' => :'hour',
        :'org_name' => :'org_name',
        :'public_id' => :'public_id',
        :'tasks_count' => :'tasks_count'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'apm_fargate_count' => :'Integer',
        :'appsec_fargate_count' => :'Integer',
        :'avg_profiled_fargate_tasks' => :'Integer',
        :'hour' => :'Time',
        :'org_name' => :'String',
        :'public_id' => :'String',
        :'tasks_count' => :'Integer'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'apm_fargate_count',
        :'appsec_fargate_count',
        :'avg_profiled_fargate_tasks',
        :'tasks_count',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V1::UsageFargateHour` initialize method"
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

      if attributes.key?(:'apm_fargate_count')
        self.apm_fargate_count = attributes[:'apm_fargate_count']
      end

      if attributes.key?(:'appsec_fargate_count')
        self.appsec_fargate_count = attributes[:'appsec_fargate_count']
      end

      if attributes.key?(:'avg_profiled_fargate_tasks')
        self.avg_profiled_fargate_tasks = attributes[:'avg_profiled_fargate_tasks']
      end

      if attributes.key?(:'hour')
        self.hour = attributes[:'hour']
      end

      if attributes.key?(:'org_name')
        self.org_name = attributes[:'org_name']
      end

      if attributes.key?(:'public_id')
        self.public_id = attributes[:'public_id']
      end

      if attributes.key?(:'tasks_count')
        self.tasks_count = attributes[:'tasks_count']
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
          apm_fargate_count == o.apm_fargate_count &&
          appsec_fargate_count == o.appsec_fargate_count &&
          avg_profiled_fargate_tasks == o.avg_profiled_fargate_tasks &&
          hour == o.hour &&
          org_name == o.org_name &&
          public_id == o.public_id &&
          tasks_count == o.tasks_count
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [apm_fargate_count, appsec_fargate_count, avg_profiled_fargate_tasks, hour, org_name, public_id, tasks_count].hash
    end
  end
end
