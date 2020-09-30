# signup

def signup
  puts "Salut ! Peux-tu définir ci-dessous un mot de passe top secret, s'il te plaît ?"
  print "> "
  password = gets.chomp
return password
end

def login(password)
  puts "Ok parfait ! Maintenant confirme le mot de passe :"
  print "> "
  login = gets.chomp

  while login != password
    puts "Perdu, c'est pas les mêmes mots de passe. Réessaie :"
    print "> "
    login = gets.chomp
  end
  return login
end

def welcome_screen
  puts "
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  BIENVENUE SUR LA PAGE D'ACCUEIL DE LA NSA
  
  
  
  
  
  
  
  
  
  
  
  
  
  "
end

def perform
password = signup
login = login(password)
welcome_screen
end

perform
