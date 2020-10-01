def ask_first_name
  puts "Salut ! Tu t'appelles comment ?"
  print "> "
  first_name = gets.chomp
  puts first_name
  return first_name
end

def greet(first_name)
  puts "Enchanté #{first_name} !"
end

def perform
  first_name = ask_first_name
  greet(first_name)
end

perform