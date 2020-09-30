def half_pyramid
  # String de base pour instruction
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

  # Input du user stocké dans la variable n
  print "> "
  n = gets.chomp.to_i

  # User bloqué si condition pas remplie
  while n < 1 || n > 25
    puts "Ha ! Le nombre d'étages doit être compris entre 1 et 25. Sorry j'aurais dû te prévenir ^^"
    puts "Donc on la refait : combien d'étages veux-tu ?"
    print "> "
    n = gets.chomp.to_i
  end

  # Si condition remplie on enchaîne : on va faire cette operation autant qu'il y'a d'étages
  puts "Et zé partiiiii !"
  n.times do |i|
        pyramide = "#" #pyramide au depart contient un seul hashtag
        trou = " "
        pyramide = (trou * (n - i)) + (pyramide * i)
      puts pyramide
  end
end


def full_pyramid
  # String de base pour instruction
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

  # Input du user stocké dans la variable n
  print "> "
  n = gets.chomp.to_i

  # User bloqué si condition pas remplie
  while n < 1 || n > 25
    puts "Ha ! Le nombre d'étages doit être compris entre 1 et 25. Sorry j'aurais dû te prévenir ^^"
    puts "Donc on la refait : combien d'étages veux-tu ?"
    print "> "
    n = gets.chomp.to_i
  end

  # Si condition remplie on enchaîne : on va faire cette operation autant qu'il y'a d'étages
  puts "Et zé partiiiii !"
  n.times do |i|
    pyramide = "#" #pyramide au depart contient un seul hashtag
    trou = " "
    pyramide = (trou * ((n - i)/2)) + (pyramide * i)
      if i.odd?
        puts pyramide
      else
    end
  end
end


def wtf_pyramid
  # String de base pour instruction
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

  # Input du user stocké dans la variable n
  print "> "
  n = gets.chomp.to_i

  # User bloqué si condition pas remplie
  while n < 1 || n > 25
    puts "Ha ! Le nombre d'étages doit être compris entre 1 et 25. Sorry j'aurais dû te prévenir ^^"
    puts "Donc on la refait : combien d'étages veux-tu ?"
    print "> "
    n = gets.chomp.to_i
  end

  while n.even?
    puts "Damn, il nous faut un nombre impair pour que la pyramide ait une bonne gueule. Je te laisse la refaire du coup..."
    print "> "
    n = gets.chomp.to_i
  end

  # Si condition remplie on enchaîne : on va faire cette operation autant qu'il y'a d'étages
  puts "Et zé partiiiii !"

  n.times do |i|
    pyramide = "#" #pyramide au depart contient un seul hashtag
    trou = " "
    pyramide = (trou * ((n - i)/2)) + (pyramide * i)
      if i.odd?
        puts pyramide
      else
    end
  end

  n.times do |j|
    pyramide_reverse = "#" #pyramide au depart contient un seul hashtag
    trou = " "
    pyramide_reverse = (trou * (j / 2)) + (pyramide_reverse * (n-j))
      if j.even?
        puts pyramide_reverse
      else
    end
  end
end

def perform
  wtf_pyramid
end

perform