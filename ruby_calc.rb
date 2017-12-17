puts "Initializing calculator"
puts "Give me something to calculate!"

opsOne = ["*", "/"]
opsTwo = ["+", "-"]
opsCombo = ["+", "/", "*", "-"]

calc = gets.chomp.split("")
calc.pop()
calc.shift()


##calc.each_with_index do |i, index|
#  nextKey = calc[index+1]
#  if opsCombo.include? nextKey
#    break
#  elsif opsCombo.include? i
#    break
#  elsif nextKey == nil
#    break
#  else
#    i << nextKey
#    calc.delete(calc[index+1])
#  end
##end



calc.each_with_index do |i, index|
  if opsOne.include? i
      a = calc[index - 1].to_i
      b = calc[index + 1].to_i
      if i == "*"
      c = a*b
      else
      c = a/b
    end
    p c
  end
end



calc.each_with_index do |i, index|
  if opsTwo.include? i
      a = calc[index - 1].to_i
      b = calc[index + 1].to_i
      if i == "+"
      c = a+b
      else
      c = a-b
    end
    p c
  end
end
