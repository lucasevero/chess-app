class Bishop < Piece
  def initialize(attr = {})
    super
    @constants = [-11, -9, 9, 11]
  end

  attr_reader :constants

  def moving_squares
    board_state = board.board_array
    current_index = get_square_index(square)

    moving_squares_indexes = []

    constants.each do |constant|
      index = current_index + constant

      # If the next square is out of bounds or contains onw piece, don't add it
      # If the next square is an enemy piece, add it but break the loop
      until board_state[index] == 9 || board_state[index].send(own_pieces_method)
        moving_squares_indexes << index
        break unless board_state[index] == 0
        index += constant
      end
    end

    get_square_names(moving_squares_indexes)
  end
end
