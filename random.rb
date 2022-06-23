def generate_code ( num1,num2,num3 )
  charset1 = Array ( 'A' .. 'Z' )
  charset2 = Array ( 0 .. 9 )
  charset3 = Array ( '!' .. '/' )
  Array.new(num1) { charset1.sample }.join + Array.new(num2) { charset2.sample }.join + Array.new(num3) { charset3.sample }.join
end

begin
  puts "Alphabets : "
  alphabets = gets.chomp.to_i
end until alphabets > 7

begin
  puts "Numbers : "
  numbers = gets.chomp.to_i
end until numbers > 7

begin
  puts "Symbols : "
  symbols = gets.chomp.to_i
end until symbols > 7

password = generate_code( alphabets,numbers,symbols )
csvfile = File.open( "password.csv" , "a" )
csvfile.write( password + "\n" )
csvfile.close
if File.readlines( "password.csv" ).grep( password ).any?
  puts "Already Exist in CSV File"
else
  puts "Password is added and Not Exist in CSV File"
end

