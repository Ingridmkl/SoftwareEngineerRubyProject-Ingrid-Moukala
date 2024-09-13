class Board
  attr_accessor :grid, :ships

  def initialize()
    @grid = Array.new(5){Array.new(5,'_')}
    @ships = []
  end

  def is_position(x,y,length)
    #on verifie si la position choisie permet de placer un bateau
    #si le placement n'est pas contenu dans la grille on ne peut pas placer
    
    return false if (x + length) > 5
    
    #on vérifie si la position est occupée ou non
    length.times do |i|
      return false if @grid[y][x+i] == 'S'
    end

    true
  end
  
  
  def ship_position(x,y,length)
    #on place le bateau sur la grille du joueur actuel
    if is_position(x,y,length) == true
      length.times do |i|
        @grid[y][x + i] = 'S'
      end
      @ships << {
      :x => x,
      :y => y,
      :length => length
      } #on ajoute dans le tableau ships un hashmap avec toutes les infos du bateau placé
      true
    else
      false
    end
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

  def receive_attack(x,y,player,opponent)
    # '_' -> Empty
    # 'S' -> Ship
    # 'X' -> Shot
    # 'O' -> Missed
    if @grid[y][x] == 'S' # Il y a un bateau à cette position
      @grid[y][x] = 'X' # Le bateau est touché
      player.shot << pos_to_index(x,y)
      puts "Touché! \n"

      #on vérifie si le petit bateau est coulé
      if (opponent.small - player.shot).empty?
        puts "Petit bateau Coulé ;) \n"
      end

      #on vérifie si le grand bateau est coulé
      if (opponent.big - player.shot).empty?
        puts "Grand bateau Coulé ;)\n "
      end

    elsif @grid[y][x] == '_'
      @grid[y][x] = 'O' # Le coup est manqué
      player.miss << pos_to_index(x,y)
      puts "Manqué! \n"
    else
      puts "Vous avez déjà visé ici! \n"
    end
  end

  def current_state
    tab = ['A', 'B', 'C', 'D', 'E']
    @grid.each_with_index do |row,i| #dans row on stock toute la ligne entière
      print tab[i] + "|"
      row.each do |j|
        print "#{j}|"
      end
      puts
    end
    print " |0|1|2|3|4|\n"
  end

end
