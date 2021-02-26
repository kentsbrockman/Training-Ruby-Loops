# Welcome


def welcome

  puts "
  Bienvenue dans le jeu de la mort qui tue."
  puts "Ton but sera de jeter un dé pour grimper les marches de la pyramide."
  puts "Tu remportes la partie dès tu auras atteint la 10ème marche."
  puts "Est-ce que tu es prêt à démarrer ?"
  print "> 
  "
  go = gets.chomp

  while go != "oui"
    puts "Bah alors, t'es prêt ou quoi ?"
    print "> "
    go = gets.chomp
  end

end

# Lancer

def lancer

      rolls = []

      n = 0

      puts "Bien, tu commences donc à la marche n°#{n}.
      "

      while n < 10

        dice = "Tu es tombé sur #{rand(1..6)} !"
        puts dice
        rolls << dice

          if dice[16].to_i == 1
            puts "Damn, tu descends d'une marche :/"
            n = n - 1
            if n < 0
              n = 0
            end
            puts "Tu es maintenant situé à la marche n°#{n}.
            "

          elsif dice[16].to_i >= 5
            puts "Styleeeey, tu montes une marche !"
            n = n + 1
            puts "Tu es maintenant situé à la marche n°#{n}.
            "

          else
            puts "Rien ne se passe..."
            puts "Tu es donc toujours situé à la marche n°#{n}.
            "
          end

      end
      
      $total = rolls.count

      puts "===== BRAVO, tu as terminé la partie en #{$total} tours ! ====="

end


def average (rolls)

  calculus = []

  100. times do
    lancer
    calculus.push($total)
  end

      
puts "
#{calculus} \n" #{\n display les éléments de l'array}

moyenne = calculus.sum.to_f / calculus.length

puts "Ca y est, la boucle est bouclée, la moyenne du nombre de tours joués pour gagner le jeu est de #{moyenne} tours !"

end

average (lancer)