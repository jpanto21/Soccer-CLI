class Player
  attr_accessor :name, :nation, :team, :age, :number

  def initialize(name, nation, team, age, number)
    @name = name
    @nation = nation
    @team = team
    @age = age
    @number = number
  end

  def to_string
    "#{name} #{@nation} #{@team} #{@age} #{@number}"
  end
end
