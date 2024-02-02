# Mini Test
require 'minitest/autorun'
require_relative "../game"


class TestGame < Minitest::Test
  def setup
    @game = Game.new
  end

  def test_play_shoot
    # Provide necessary input for play_shoot method
    # For example, you can stub gets to simulate user input
    input_data = "head it\nJohn Doe\nUSA\nExample FC\n25\n10\nexit\n"
    $stdin = StringIO.new(input_data)

    assert_output(/What a goal!!! John Doe scores a wonderful goal!/) do
      @game.play_shoot
    end
  end

  def teardown
    $stdin = STDIN
  end
end
