require_relative "player"

class Game

  def initialize
      @player_info = []
  end

  def play_shoot 
     
     puts "\n"
     puts "Hello! Welcome to the shooting soccer game!"
     puts "You are trying to score a goal on the oppponent to win the soccer game!"
      puts "We need your information in in order to continue!"
       loop do
       puts 'Type "head it", "right foot","left foot", or type exit to leave and loose the game'
      
       shooting = gets.chomp.downcase
       case shooting 
      
       when "head it"
        play_info()
        take_info(@name, @nation, @team, @age, @number)
        take_shot(@name, @nation, @team, @age, @number)
        puts "What a shot with the head!"    

       when "right foot"
        play_info()
        take_info(@name, @nation, @team, @age, @number)  
        take_shot(@name, @nation, @team, @age, @number)
        puts "What a shot with the right foot!"

       when "left foot"
        play_info()
        take_info(@name, @nation, @team, @age, @number)
        take_shot(@name, @nation, @team, @age, @number)
        puts "What a shot with the left foot!"
  
       when "exit"
        puts "Good Bye!."
        break
       else
        puts "\n"
        puts "Try again! Remember to pick one of the options above"
        next
       end
       puts "\n"
       puts "Do you want to play again? Type 'yes' to play again or 'exit' to leave."
       play_again = gets.chomp.downcase
       break unless play_again == 'yes'
  end
end

  private

  def take_info(name, nation, team, age, number)
    player = Player.new(name, nation, team, age, number)
    @player_info.push(player)
  end

  def play_info() 
    puts "Enter your name!"
    @name = gets.chomp
    puts "Enter your nation"
    @nation = gets.chomp
    puts "Enter the name of your soccer team!"
    @team = gets.chomp
    puts "Enter your age!"
    @age = gets.chomp
    puts "Enter the number on the back of your jersey!"
    @number = gets.chomp
  end

  def take_shot(name, nation, team, age, number)
      r = rand(1..10)
      puts "\n"
      if r % 2 == 0 
        puts "What a goal!!! #{name} scores a wonderful goal! the #{age} year old player from #{nation} scores a banger for #{team} to win the game! What a play by number #{number}. "
      else 
        puts "What a Miss!!! #{name} misses the goal! the #{age} year old player from #{nation} misses for #{team} to win the game! What a miss by number #{number}. The other team scores and #{team} looses the game!"
  end
end
end
