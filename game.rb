=begin
  Ici on définit la classe Game grace à laquelle on gère le jeu
=end

require_relative 'player'
require_relative 'board'
require_relative 'ship'

class Game
  attr_reader :player1, :player2, :current_player

  def start()
    begin
      #création de joueurs et de leur grille de jeu
      puts "Joueur 1, veuillez saisir votre nom: "
      joueur1 = gets.chomp
      @player1 = Player.new(joueur1)

      puts "Joueur 2, veuillez saisir votre nom: "
      joueur2 = gets.chomp
      @player2 = Player.new(joueur2)

      #Chaque joueur place ses bateaux 
      puts"Maintenant, chaque joueur devra placer ses deux bateaux,\n
      le petit de taille 3 et puis le grand de taille 4.\n
      Pour cela il faudra choisir la position à partir de laquelle le bateau sera positionné \n
      Attention: Lorsque vous placer le bateau il ne faut pas qu'il soit placé en dehors de limites de la grille! \n"

      #1: Vérifier si la position entrée est bien 
      puts @player1.board.current_state
      puts "#{@player1.name}, placez vos bateaux:" 
      @player1.place_ships
      puts player1.small

      puts ""

      puts @player2.board.current_state
      puts "#{@player2.name}, placez vos bateaux:"
      @player2.place_ships
      puts player1.big

      random_player

      #le jeu commence, la boucle ne se termine que si un gagnant est nommé
      begin
        puts "#{@current_player.name} à votre tour:"
        puts model_grid
        print "tirs réussis: #{@current_player.shot}"
        puts
        print "tirs manqués: #{@current_player.miss}"
        #puts @player2.board.current_state
        puts
        puts "#{@current_player.name},"
        puts "Où voulez-vous tirer:"
        tir1 = gets.chomp
        @current_player.shoot(opponent_player.board, tir1, opponent_player)
        puts ""

        break  if check_winner != nil

        switch_player
        
        puts "#{@current_player.name} à votre tour:"
        puts model_grid
        print "tirs réussis: #{@current_player.shot}"
        puts
        print "tirs manqués: #{@current_player.miss}"
        #puts @player1.board.current_state
        puts
        puts "#{@current_player.name},"
        puts "Où voulez-vous tirer:"
        tir2 = gets.chomp
        @current_player.shoot(opponent_player.board, tir2, opponent_player)
        puts ""

        break  if check_winner != nil

        switch_player

      end while check_winner == nil
      puts "Touché coulé! Fin du jeu: \n Bravo #{check_winner}, vous avez gagné la partie!"
      puts " Grille joueur1: #{@player1.name}"
      puts @player1.board.current_state
      puts " Grille joueur2: #{@player2.name}"
      puts @player2.board.current_state
      begin
        puts "Souhaitez-vous recommencer la partie? \n
        Tapez 'O'(pour continuer) ou 'N' (pour finir la partie)."
        choice = gets.chomp.upcase
      end while !['O', 'N'].include?(choice)
    end while choice == "O"
  end

  def random_player
    #on choisit un numéro entre 0 et 1
    #si 0 -> player1, si 1 -> player2
    if rand(2) == 0
      @current_player = @player1
    else 
      @current_player = @player2
    end
  end

  def switch_player
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def opponent_player
    if @current_player == @player1
      return @player2
    else return @player1
    end
  end
  
  def check_winner
    count1 = @player1.board.grid.flatten.count('X')
    count2 = @player2.board.grid.flatten.count('X')

    #S'il y a 7 'X', le joueur opposé gagne car 3 + 4 = 7
    if count1 == 7
      return "#{@player2.name}"

    elsif count2 == 7
      return "#{@player1.name}"

    else
      return nil
    end
  end

  def model_grid
    tab = ['A', 'B', 'C', 'D', 'E']
    board = Array.new(5){Array.new(5,'_')}
    board.each_with_index do |row,i| #dans row on stock toute la ligne entière
      print tab[i] + "|"
      row.each do |j|
        print "#{j}|"
      end
      puts
    end
    print " |0|1|2|3|4|\n"
  end

end

game = Game.new
game.start