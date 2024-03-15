require "test_helper"
require_relative "seed_test"

class KnightTest < SeedTest
  # Knight#moving_squares
  test "Knight#moving_squares should avoid own pieces and accept opponent pieces" do

    assert_equal @@knight_f3.moving_squares.sort, ['e5', 'd4', 'g5', 'h4', 'g1'].sort
  end

  test "Knight#moving_squares should include legal moves" do

    assert_equal @@knight_f6.moving_squares.sort, ['g8', 'd5', 'h5', 'e4', 'g4'].sort
  end

  test "Knight#moving_squares should not include out of bounds squares" do

    assert_equal @@knight_h3.moving_squares.sort, ['g5', 'g1', 'f2', 'f4'].sort
  end
end
