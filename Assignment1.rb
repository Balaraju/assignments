(1..50).to_a.each do |el|
if(el%2==0 && el%3==0)
print "No is :#{el} :hush hush\n"
elsif(el%2!=0 && el%3!=0)
print "No is :#{el} :huff huff\n"
end 
end
