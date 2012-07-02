class Person
attr_accessor :name

end
p= Person.new
p.name="The Man"

def p.say_hi
"sup"
end

the_clone = p.clone
the_dup = p.dup

