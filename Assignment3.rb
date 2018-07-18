def a_new_method
  print "testing fork"
end

class Person
 a_new_method
 
 def self.cattr_accessor(method_name)
   self.class_eval do
    define_method(method_name.to_s) do
      class_variable_get(method_name.to_s)
    end
    
    define_method("#{method_name.to_s}=") do |value|
      class_variable_set(method_name.to_s,value)
    end
   end
  end
  cattr_accessor :instance_count
end
p1=Person.new
p1.instance_count

