module Acessors

  def attr_accessor_with_history(*names)
    names.each do |name|
      var_name = "@#{name}".to_sym
      old_var_name = "@#{name}_old".to_sym
      define_method(name) {instance_variable_get(var_name)}
        define_method("#{name}=".to_sym) do |value|
          old_value = instance_variable_get(var_name)
          instance_variable_set(old_var_name, (instance_variable_get(old_var_name) || []) << old_value) if old_value
          instance_variable_set(var_name, value)
        end
      define_method("#{name}_history".to_sym) { instance_variable_get(old_var_name) }
    end
  end

  def strong_attr_acessor(name,class_name)
    var_name = "@#{name}".to_sym
    define_method(name) {instance_variable_get(var_name)}
    define_method("#{name}=".to_sym) do |value|
      raise ArgumentError, "Error! #{value} -  type #{value.class} != #{class_name}"  if class_name != value.class
      instance_variable_set(var_name, value)
    end
  end

end

class Test
  extend Acessors
  attr_accessor_with_history :a, :f
  strong_attr_acessor :b,String
end
