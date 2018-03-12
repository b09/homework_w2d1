require 'minitest/autorun'
require_relative '../codeclan_students'

class TestCodeclanStudents < Minitest::Test

  def test_student_getters
      student = Student.new("John", 20)
      assert_equal("John", student.name)
      assert_equal(20, student.cohort)
  end

  def test_student_setters
      student = Student.new("John", 20)
      student.name = "Jane"
      student.cohort = 21

      assert_equal("Jane", student.name)
      assert_equal(21, student.cohort)
  end

  def test_student_talk
      student = Student.new("John", 20)
      talking = student.student_talk
      assert_equal("I can talk", talking)
  end

  def test_student_favourite_language
      student = Student.new("John", 20)
      language = student.favourite_language("Ruby")
      assert_equal("I love Ruby", language)
  end

end

class TestTeams < Minitest::Test

  def test_team_getters
  team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
  assert_equal("The Cheezesteaks", team.team_name)
  assert_equal(["Jay","Keith","Dave", "Val"], team.players)
  assert_equal("Santa Claus", team.coach)
  end

  def test_new_coach
    team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
    result = team.new_coach("Howard")
    assert_equal("Howard", result)
  end

  def test_add_new_player
    team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
    result = team.add_new_player("New Player")
    assert_equal(["New Player", "Jay","Keith","Dave", "Val"], result)
  end

  def test_check_player__yay
    team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
    result = team.check_player("Keith")
    assert_equal("Keith is on the team.", result)
  end

  def test_check_player__nay
    team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
    result = team.check_player("Jim")
    assert_equal("Jim is not on the team.", result)
  end

  def test_team_result__won
    team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
    result = team.team_result("won")
    assert_equal(1, result)
  end

  def test_team_result__lost
    team = Teams.new("The Cheezesteaks", ["Jay","Keith","Dave", "Val"], "Santa Claus")
    result = team.team_result("lost")
    non_win = "The team did not win, no team points have been added."
    assert_equal(non_win, result)
  end

end
