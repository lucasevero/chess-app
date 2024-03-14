require "test_helper"
require_relative "seed_test"

class BoardTest < SeedTest
  test "#board_state returns the initial position" do
    initial_position = "[9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,4,2,3,5,6,3,2,4,9,9,1,1,1,1,1,1,1,1,9,9,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,9,9,0,0,0,0,0,0,0,0,9,9,-1,-1,-1,-1,-1,-1,-1,-1,9,9,-4,-2,-3,-5,-6,-3,-2,-4,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9]"

    assert_equal initial_position, @@initial_state.board_state
  end
end
