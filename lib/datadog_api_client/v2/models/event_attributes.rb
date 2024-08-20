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
  # Object description of attributes from your event.
  class EventAttributes
    include BaseGenericModel

    # Aggregation key of the event.
    attr_accessor :aggregation_key

    # POSIX timestamp of the event. Must be sent as an integer (no quotation marks).
    # Limited to events no older than 18 hours.
    attr_accessor :date_happened

    # A device name.
    attr_accessor :device_name

    # The duration between the triggering of the event and its recovery in nanoseconds.
    attr_accessor :duration

    # The event title.
    attr_accessor :event_object

    # The metadata associated with a request.
    attr_accessor :evt

    # Host name to associate with the event.
    # Any tags associated with the host are also applied to this event.
    attr_accessor :hostname

    # Attributes from the monitor that triggered the event.
    attr_accessor :monitor

    # List of groups referred to in the event.
    attr_accessor :monitor_groups

    # ID of the monitor that triggered the event. When an event isn't related to a monitor, this field is empty.
    attr_accessor :monitor_id

    # The priority of the event's monitor. For example, `normal` or `low`.
    attr_accessor :priority

    # Related event ID.
    attr_accessor :related_event_id

    # Service that triggered the event.
    attr_accessor :service

    # The type of event being posted.
    # For example, `nagios`, `hudson`, `jenkins`, `my_apps`, `chef`, `puppet`, `git` or `bitbucket`.
    # The list of standard source attribute values is [available here](https://docs.datadoghq.com/integrations/faq/list-of-api-source-attribute-value).
    attr_accessor :source_type_name

    # Identifier for the source of the event, such as a monitor alert, an externally-submitted event, or an integration.
    attr_accessor :sourcecategory

    # If an alert event is enabled, its status is one of the following:
    # `failure`, `error`, `warning`, `info`, `success`, `user_update`,
    # `recommendation`, or `snapshot`.
    attr_accessor :status

    # A list of tags to apply to the event.
    attr_accessor :tags

    # POSIX timestamp of your event in milliseconds.
    attr_accessor :timestamp

    # The event title.
    attr_accessor :title

    attr_accessor :additional_properties

    # Attribute mapping from ruby-style variable name to JSON key.
    # @!visibility private
    def self.attribute_map
      {
        :'aggregation_key' => :'aggregation_key',
        :'date_happened' => :'date_happened',
        :'device_name' => :'device_name',
        :'duration' => :'duration',
        :'event_object' => :'event_object',
        :'evt' => :'evt',
        :'hostname' => :'hostname',
        :'monitor' => :'monitor',
        :'monitor_groups' => :'monitor_groups',
        :'monitor_id' => :'monitor_id',
        :'priority' => :'priority',
        :'related_event_id' => :'related_event_id',
        :'service' => :'service',
        :'source_type_name' => :'source_type_name',
        :'sourcecategory' => :'sourcecategory',
        :'status' => :'status',
        :'tags' => :'tags',
        :'timestamp' => :'timestamp',
        :'title' => :'title'
      }
    end

    # Attribute type mapping.
    # @!visibility private
    def self.openapi_types
      {
        :'aggregation_key' => :'String',
        :'date_happened' => :'Integer',
        :'device_name' => :'String',
        :'duration' => :'Integer',
        :'event_object' => :'String',
        :'evt' => :'Event',
        :'hostname' => :'String',
        :'monitor' => :'MonitorType',
        :'monitor_groups' => :'Array<String>',
        :'monitor_id' => :'Integer',
        :'priority' => :'EventPriority',
        :'related_event_id' => :'Integer',
        :'service' => :'String',
        :'source_type_name' => :'String',
        :'sourcecategory' => :'String',
        :'status' => :'EventStatusType',
        :'tags' => :'Array<String>',
        :'timestamp' => :'Integer',
        :'title' => :'String'
      }
    end

    # List of attributes with nullable: true
    # @!visibility private
    def self.openapi_nullable
      Set.new([
        :'monitor',
        :'monitor_groups',
        :'monitor_id',
        :'priority',
      ])
    end

    # Initializes the object
    # @param attributes [Hash] Model attributes in the form of hash
    # @!visibility private
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `DatadogAPIClient::V2::EventAttributes` initialize method"
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

      if attributes.key?(:'aggregation_key')
        self.aggregation_key = attributes[:'aggregation_key']
      end

      if attributes.key?(:'date_happened')
        self.date_happened = attributes[:'date_happened']
      end

      if attributes.key?(:'device_name')
        self.device_name = attributes[:'device_name']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'event_object')
        self.event_object = attributes[:'event_object']
      end

      if attributes.key?(:'evt')
        self.evt = attributes[:'evt']
      end

      if attributes.key?(:'hostname')
        self.hostname = attributes[:'hostname']
      end

      if attributes.key?(:'monitor')
        self.monitor = attributes[:'monitor']
      end

      if attributes.key?(:'monitor_groups')
        if (value = attributes[:'monitor_groups']).is_a?(Array)
          self.monitor_groups = value
        end
      end

      if attributes.key?(:'monitor_id')
        self.monitor_id = attributes[:'monitor_id']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'related_event_id')
        self.related_event_id = attributes[:'related_event_id']
      end

      if attributes.key?(:'service')
        self.service = attributes[:'service']
      end

      if attributes.key?(:'source_type_name')
        self.source_type_name = attributes[:'source_type_name']
      end

      if attributes.key?(:'sourcecategory')
        self.sourcecategory = attributes[:'sourcecategory']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'tags')
        if (value = attributes[:'tags']).is_a?(Array)
          self.tags = value
        end
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.key?(:'title')
        self.title = attributes[:'title']
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
          aggregation_key == o.aggregation_key &&
          date_happened == o.date_happened &&
          device_name == o.device_name &&
          duration == o.duration &&
          event_object == o.event_object &&
          evt == o.evt &&
          hostname == o.hostname &&
          monitor == o.monitor &&
          monitor_groups == o.monitor_groups &&
          monitor_id == o.monitor_id &&
          priority == o.priority &&
          related_event_id == o.related_event_id &&
          service == o.service &&
          source_type_name == o.source_type_name &&
          sourcecategory == o.sourcecategory &&
          status == o.status &&
          tags == o.tags &&
          timestamp == o.timestamp &&
          title == o.title
          additional_properties == o.additional_properties
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    # @!visibility private
    def hash
      [aggregation_key, date_happened, device_name, duration, event_object, evt, hostname, monitor, monitor_groups, monitor_id, priority, related_event_id, service, source_type_name, sourcecategory, status, tags, timestamp, title].hash
    end
  end
end
