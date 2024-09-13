class Ship
  attr_accessor :hits, :length, :index1, :index2

  def initialize(length, index1, index2)
    @length = length #Longueur du bateau (2 ou 3 pour 3 ou 4 cases)
    @index1 = index1 #Extremité 1 ("A1"...)
    @index2 = index2 #Extremité 2 ("A"...)
    @hits = 0
  end

  def hit
    @hits +=1
  end

  def is_sunk
    #si un bateau est touché sur toute la longueur, il coule
    #length + 1: 
    res = false
    if @hits >= @length+1
      res = true
    end
    return res
  end
end