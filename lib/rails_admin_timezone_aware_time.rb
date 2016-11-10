require "rails_admin_timezone_aware_time/engine"

module RailsAdminTimezoneAwareTime
end

require 'rails_admin/config/fields'
require 'rails_admin/config/fields/types/datetime'

module RailsAdmin
  module Config
    module Fields
      module Types
        class TimezoneAwareTime < RailsAdmin::Config::Fields::Types::Datetime
          RailsAdmin::Config::Fields::Types::register(self)

          def parse_value(value)
            parent_value = super(value)
            return unless parent_value
            value_with_tz = parent_value.in_time_zone
            value_with_tz.to_datetime
          end

          register_instance_option :strftime_format do
            '%H:%M'
          end
        end
      end
    end
  end
end

RailsAdmin::Config::Fields.register_factory do |parent, properties, fields|
  if properties.name == :timezone_aware_time
    fields << RailsAdmin::Config::Fields::Types::TimezoneAwareTime.new(parent, properties.name, properties)
    true
  else
    false
  end
end


