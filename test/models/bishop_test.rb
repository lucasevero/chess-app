require "test_helper"
require_relative "seed_test"

class BishopTest < SeedTest
  # Bishop#moving_squares
  test "Bishop#moving_squares should avoid own pieces" do

    assert_equal @@bishop_c1.moving_squares, []
  end

  test "Bishop#moving_squares should include legal moves" do

    assert_equal @@bishop_c4.moving_squares.sort, ['b3', 'b5', 'a6', 'd3', 'e2', 'f1', 'd5', 'e6', 'f7'].sort
    assert_equal @@bishop_c5.moving_squares.sort, ['f8', 'e7', 'd6', 'b4', 'a3', 'b6', 'd4', 'e3', 'f2'].sort
  end
end
