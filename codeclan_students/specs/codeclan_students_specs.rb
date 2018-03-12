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
