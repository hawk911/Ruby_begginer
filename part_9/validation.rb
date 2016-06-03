module Validation
  def self.included(base)
    base.extend ClassMethods
    base.send :include, InstanceMethods
  end

  module ClassMethods
    def validate(*args)
      @validation_params ||= {}
      @validation_params[args.shift] = args
    end
  end

  module InstanceMethods
    def validate!
      item = self.class.instance_variables.include?(:@validation_params) ?
      self.class : self.class.superclass
      item.instance_variable_get(:@validation_params).each do |key, value|
        var = instance_variable_get("@#{key}".to_sym)
        send value[0].to_sym, var, value
      end
      true
    end

    def valid?
      validate!
    rescue
      false
    end

    protected

    def presence(var, _value)
      raise ValidationError if var == ''
    end

    def typeof(var, value)
      raise ValidationError unless var.is_a? value[1]
    end

    def regexp(var, value)
      raise ValidationError if value[1] !~ var
    end
  end
end
