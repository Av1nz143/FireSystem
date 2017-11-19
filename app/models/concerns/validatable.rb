module Validatable
    extend ActiveSupport::Concern
    
    module ClassMethods
      def field_validation(field, value)
        validate = validations[field.to_sym]
        return value if validate.nil?

        if validate[:required]
          value = validate[:required]
        elsif value.to_s.length > validate[:length]
          value = value.to_s.first(validate[:length])
        elsif value.to_s.length < validate[:length]
          remaining = '0' * (validate[:length] - value.to_s.length)
          value  = "#{value}#{remaining}"
        end
  
        value
      end
    end
end