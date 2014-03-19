require "./solution_algorithm"
require "test/unit"
 
class ProblemTestCase < Test::Unit::TestCase

  def test_easy
    assert_equal(19, SolutionAlgorithm.solve((1..5)))
    assert_equal(39, SolutionAlgorithm.solve((1..10)))
    assert_equal(59, SolutionAlgorithm.solve((1..13)))
    assert_equal(112, SolutionAlgorithm.solve((1..20)))
    assert_equal(90, SolutionAlgorithm.solve((21..29)))
    assert_equal(96, SolutionAlgorithm.solve((30..39)))
    assert_equal(86, SolutionAlgorithm.solve((40..49)))
    assert_equal(86, SolutionAlgorithm.solve((50..59)))
    assert_equal(106, SolutionAlgorithm.solve((70..79)))
    assert_equal(96, SolutionAlgorithm.solve((90..99)))
  end

  def test_easy_hundred
    assert_equal(23, SolutionAlgorithm.solve((342..342)))
    assert_equal(20, SolutionAlgorithm.solve((115..115)))
    assert_equal(26, SolutionAlgorithm.solve((100..101)))
    assert_equal(84, SolutionAlgorithm.solve((101..105)))
    assert_equal(372, SolutionAlgorithm.solve((101..120)))
    assert_equal(392, SolutionAlgorithm.solve((501..520)))
  end

  def test_road_1000
    assert_equal(854, SolutionAlgorithm.solve((1..99)))
    assert_equal(2151, SolutionAlgorithm.solve((100..199)))
    assert_equal(2151, SolutionAlgorithm.solve((200..299)))
    assert_equal(2351, SolutionAlgorithm.solve((300..399)))
    assert_equal(2251, SolutionAlgorithm.solve((400..499)))
    assert_equal(2251, SolutionAlgorithm.solve((500..599)))
    assert_equal(2151, SolutionAlgorithm.solve((600..699)))
    assert_equal(2351, SolutionAlgorithm.solve((700..799)))
    assert_equal(11, SolutionAlgorithm.solve((1000..1000)))

  end

  def test_result
    SolutionAlgorithm.solve((1..1000))
  end
 
end
