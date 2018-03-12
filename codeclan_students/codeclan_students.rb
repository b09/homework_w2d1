class Student
  attr_accessor :name, :cohort

  def initialize(input_name, input_cohort)
    @name = input_name
    @cohort = input_cohort
  end



  # def set_name(new_name)
  #   new_name = @name
  #   return @name
  # end
  #
  # def set_cohort(new_cohort)
  #   new_cohort = @cohort
  #   return @cohort
  # end

  def student_talk
    return "I can talk"
  end

  def favourite_language(language)
    return "I love #{language}"
  end



end

class Teams
  attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
    team_name = String.new
    players = Array.new
    coach = String.new
  end

  def new_coach(name_of_coach)
    @coach = name_of_coach
  end


  def add_new_player(player_name)
    @players.unshift(player_name)
    return players
  end

  def team_result(result)
    if result == "won"
      @points += 1
      return @points
    else
      return "The team did not win, no team points have been added."
  end

  def check_player(player)
    if players.include?(player) == true
      return "#{player} in on the team."
    else
      return "#{player} is not on the team."
  end

end
