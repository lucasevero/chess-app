require "test_helper"
require_relative "seed_test"

class PawnTest < SeedTest
  # Paws#moving_squares
  test "Pawn#moving_squares should include two squares if the pawn is in the initial square" do

    assert_equal @@pawn_b2.moving_squares, ['b3', 'b4']
  end

  test "Pawn#moving_squares should not include two squares if the pawn is not in the initial square" do

    assert_not_includes @@pawn_d4.moving_squares, 'd6'
  end

  # Pawn#controlling_squares
  test "Pawn#controlling_squares should include all the squares controlled by the pawn" do

    assert_equal @@pawn_e5.controlling_squares, ['d6', 'f6']
    assert_equal @@pawn_b2.controlling_squares, ['a3', 'c3']
  end

  test "Pawn#controlling_squares should not include out of bounds squares" do

    assert_equal @@pawn_h3.controlling_squares, ['g2']
  end

  # Pawn#attacking_squares
  test "Pawn#attacking_squares should include all the squares controlled by the pawn" do

    assert_equal @@pawn_e5.attacking_squares, ['f6']
    assert_equal @@pawn_b2.attacking_squares, []
  end

  test "Pawn#attacking_squares should not include out of bounds squares" do

    assert_equal @@pawn_h3.attacking_squares, ['g2']
  end

  # Pawn#moves not using notation
  test "Pawn#moves should include all legal move squares" do

    assert_equal @@pawn_b2.moves, ['b3', 'b4']
    assert_equal @@pawn_d4.moves, ['d5']
    assert_equal @@pawn_h3.moves, ['g2']
    assert_equal @@pawn_e5.moves, ['e6', 'f6']
  end
end
