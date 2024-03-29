class Knight < Piece
  def initialize(attr = {})
    super
    @constants = [-21, -19, -12, -8, 8, 12, 19, 21]
  end

  attr_reader :constants

  def moving_squares
    board_state = board.board_array
    current_index = get_square_index(square)

    moving_squares_indexes = []

    constants.each do |constant|
      index = current_index + constant
      unless board_state[index].send(own_pieces_method) || board_state[index] == 9
        moving_squares_indexes << index
      end
    end

    get_square_names(moving_squares_indexes)
  end
end
