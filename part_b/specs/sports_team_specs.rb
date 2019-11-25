require('minitest/autorun')
require('minitest/reporters')
require_relative('../sports_team')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestTeam < MiniTest::Test
  def test_can_get_team_name
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti")
    assert_equal("Milan", team.team_name)
  end

  def test_can_get_players
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti")
    assert_equal(["Maldini", "Kaka"], team.players)
  end

  def test_can_get_coach
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti")
    assert_equal("Ancelotti", team.coach)
  end

  def test_can_set_new_coach
    team = Team.new("Milan", ["Maldini", "Kaka"], "Ancelotti")
    team.coach = "Mourinho"
    assert_equal("Mourinho", team.coach)
  end

end
