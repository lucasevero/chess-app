class Pawn < Piece
  def initialize(attr = {})
    super
    case color
    when "White"
      @moving_constant = 10
      @attacking_constants = [9, 11]
      @initial_rank = "2"
    when "Black"
      @moving_constant = -10
      @attacking_constants = [-9, -11]
      @initial_rank = "7"
    end
  end

  attr_reader :moving_constant, :attacking_constants, :initial_rank

  def moving_squares
    board_state = board.board_array
    current_index = get_square_index(square)

    moving_squares_indexes = [next_moving_square_index(current_index)]

    if square[1] == initial_rank
      moving_squares_indexes += [next_moving_square_index(moving_squares_indexes.last)]
    end

    moving_squares_indexes.select! do |index|
      board_state[index] == 0
    end

    get_square_names(moving_squares_indexes)
  end

  def next_moving_square_index(index)
    index + moving_constant
  end

  def controlling_squares
    board_state = board.board_array
    current_index = get_square_index(square)

    indexes = controlling_squares_indexes(current_index)

    indexes.reject! do |index|
      board_state[index] == 9
    end

    get_square_names(indexes)
  end

  def controlling_squares_indexes(index)
    attacking_constants.map do |constant|
      index + constant
    end
  end

  def attacking_squares
    board_state = board.board_array
    indexes = get_square_indexes(controlling_squares)

    indexes.reject! do |index|
      board_state[index] == 0
    end

    get_square_names(indexes)
  end

  def moves
    moving_squares + attacking_squares
  end
end
