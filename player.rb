class Player
  attr_accessor :name, :board, :ships, :shot, :miss, :small, :big

  def initialize(name)
    @name = name
    @board = Board.new
    @small = []
    @big = []
    @shot = []
    @miss = []
    @ships = []
  end

  def place_ships()
    #1: on place le petit bateau
    begin
      puts "On place d'abord le petit bateau de taille 3."
      puts "Veuillez entrer la position de votre petit bateau:"
      small = gets.chomp
      while is_pos(small) != true
        puts "La position entrée est eronnée!\n
        Pour rappel, le format doit être sous la forme suivante:
        Ligne puis colonne exemple --> A3 "
        small = gets.chomp
      end
      x1,y1 = pos_to_coordonate(small)
      
    end while @board.ship_position(x1,y1,3) == false

    #on ajoute les coordonnées du bateau à 'small'
    add_small(x1, y1, 3)

    @board.current_state

    #2: on place le grand bateau
    begin
      puts "Maintenant on place le grand bateau, de taille 4."
      puts "Veuillez entrer la position de votre grand bateau:"
      big = gets.chomp
      while is_pos(big) != true
        puts "La position entrée est eronnée!\n
        Pour rappel, le format doit être sous la forme suivante:
        Ligne puis colonne exemple --> A3 "
        big = gets.chomp
      end
      x2,y2 = pos_to_coordonate(big)
    end while @board.ship_position(x2,y2,4) == false

    #on ajoute les coordonnées du bateau à 'big'
    add_big(x2, y2, 3)

    @board.current_state
  end

  def is_pos(index)
    #on vérifie si la position entrée est correctement écrite 
    return false unless index.length == 2 # 2 caractères seulement dans la position
    
    #1er caractère entre A et E
    row = index[0].upcase
    return false unless ("A".."E").include?(row) 

    #2e caractère entre 0 et 4
    col = index[1]
    return false unless ("0".."4").include?(col)

    #Si tout est bon, la position est valide
    return true
  end

  def pos_to_coordonate(index)
    y = index[1].to_i
    row = index[0].upcase
    x = 0
    case row
    when "A"
      x = 0
    when "B"
      x = 1
    when "C"
      x = 2
    when "D"
      x = 3
    when "E"
      x = 4
    end
    return y,x
  end

  def pos_to_index(x,y)
    col = "#{x}"
    case y
    when 0
      y = "A"
    when 1
      y = "B"
    when 2
      y = "C"
    when 3
      y = "D"
    when 4
      y = "E"
    end
    pos = y + col
    return pos
  end

  def shoot(other_board, index, other)
    if is_pos(index)
      (x,y) = pos_to_coordonate(index)
      other_board.receive_attack(x,y,self, other)
    else
      puts "Position invalide !"
    end
  end

  def add_small(x,y, length)
    length.times do |i|
      @small << pos_to_index(x + i,y)
    end
  end

  def add_big(x,y, length)
    length.times do |i|
      @big << pos_to_index(x + i,y)
    end
  end
end