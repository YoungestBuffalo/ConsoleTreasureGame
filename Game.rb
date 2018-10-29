require "io/console"


input = ""
findplayer = true

playertreasure = 0
grass = 0
treasure = 4
wall = 2
player = 1
playerposition_x=1
playerposition_y=1

 #creates grid
 grid = Array.new(30){ Array.new(30){0}}
 money = 0

  #player
  grid[1][1] = player
  #walls
  #left wall
          grid[0][0] = wall
          grid[1][0] = wall
          grid[2][0] = wall
          grid[3][0] = wall
          grid[4][0] = wall
          grid[5][0] = wall
          grid[6][0] = wall
          grid[7][0] = wall
          grid[8][0] = wall
          grid[9][0] = wall

          grid[0][10] = wall
          grid[1][10] = wall
          grid[2][10] = wall
          grid[3][10] = wall
          grid[4][10] = wall
          grid[5][10] = wall
          grid[6][10] = wall
          
          grid[7][10] = wall
          grid[8][10] = wall
          grid[9][10] = wall

          grid[0][16] = wall
          grid[1][16] = wall
          grid[2][16] = wall
          grid[3][16] = wall
         
          grid[5][16] = wall
          grid[6][16] = wall
          grid[7][16] = wall
          grid[8][16] = wall
          grid[9][16] = wall

#top wall
          grid[0][1] = wall
          grid[0][2] = wall
          grid[0][3] = wall
          grid[0][4] = wall
          grid[0][5] = wall
          grid[0][6] = wall

         
          
#mid wall
            

#bot wall

grid[9][11] = wall
grid[9][12] = wall
grid[9][13] = wall
grid[9][14] = wall
grid[9][15] = wall
grid[9][16] = wall

  #treasure
          grid[5][5] = treasure
          grid[7][4] = treasure
          grid[5][12] = treasure

    while findplayer && input != "q" && money < 3
        
        
        system "cls"
        system "clear"


        (0...30).each do |i|
            (0...30).each do |j|
                if grid[i][j] == grass  
                    print "# "
                elsif grid[i][j] == wall
                    print "] "
                elsif grid[i][j] == treasure 
                    print "$ "
                elsif grid[i][j] == player
                    print "@ "
                    playerposition_x = i
                    playerposition_y = j
                end
            end
            puts   
        end
        puts "You found #{money}"
        


        input = STDIN.getch


    if playerposition_x > 0 
        if input == "w" && grid[playerposition_x][playerposition_y] == player && grid[playerposition_x-1][playerposition_y] != wall
            if player && grid[playerposition_x-1][playerposition_y] == treasure
                money = money + 1
        
            end
            grid[playerposition_x-1][playerposition_y]= player
            grid[playerposition_x][playerposition_y] = grass
            

            
        end
    end

   
        
    if playerposition_x < 29 
        if input == "s" && grid[playerposition_x][playerposition_y] == player && grid[playerposition_x+1][playerposition_y] != wall 
            if player && grid[playerposition_x+1][playerposition_y] == treasure
                money = money + 1
        
            end
            grid[playerposition_x+1][playerposition_y] = player
            grid[playerposition_x][playerposition_y] = grass
            
        end
    end
    

    if playerposition_y > 0 
        if input == "a" && grid[playerposition_x][playerposition_y] == player && grid[playerposition_x][playerposition_y-1] != wall 
            if player && grid[playerposition_x][playerposition_y-1] == treasure
                money = money + 1
        
            end
           
            grid[playerposition_x][playerposition_y-1] = player
            grid[playerposition_x][playerposition_y] = grass
        end
    end

        
    
    if playerposition_y < 29
        if input == "d" && grid[playerposition_x][playerposition_y] == player && grid[playerposition_x][playerposition_y+1] != wall  
            if player && grid[playerposition_x][playerposition_y + 1] == treasure
                money = money + 1
        
            end
            grid[playerposition_x][playerposition_y+1] = player
            grid[playerposition_x][playerposition_y] = grass
        end
    end

    

      #  findplayer=true
      #  moveplayer = false
      
end

system "cls"
        system "clear"

(0...30).each do |i|
    (0...30).each do |j|
        if grid[i][j] == grass  
            print "# "
        elsif grid[i][j] == wall
            print "] "
        elsif grid[i][j] == treasure 
            print "$ "
        elsif grid[i][j] == player
            print "@ "
            playerposition_x = i
            playerposition_y = j
        end
    end
    puts   
end
puts "You found all of the treasure!!!!"