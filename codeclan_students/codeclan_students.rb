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
