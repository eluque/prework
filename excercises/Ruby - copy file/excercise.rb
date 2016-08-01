# puts "What its the source file"
# source_file = gets.chomp
# puts "What is the destination file"
# destination_file = gets.chomp	
# source_file_contens = IO.read("source_file")
# IO.write('destination.txt', source_file_contens)

puts "What is the source file?"
source_file = gets.chomp
puts "What name you put to the destination file?"
destination_file = gets.chomp
source_file_contens = IO.read(source_file)
IO.write(destination_file, source_file_contens)