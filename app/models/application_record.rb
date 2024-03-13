class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  def board_string(board)
    board.to_s
  end

  def board_array(board)
    JSON.parse(board_string(board))
  end
end
