class CreateBoards < ActiveRecord::Migration[7.0]
  def change
    create_table :boards do |t|
      t.string :board_state, default: "
        [
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
          9, 4, 2, 3, 5, 6, 3, 2, 4, 9,
          9, 1, 1, 1, 1, 1, 1, 1, 1, 9,
          9, 0, 0, 0, 0, 0, 0, 0, 0, 9,
          9, 0, 0, 0, 0, 0, 0, 0, 0, 9,
          9, 0, 0, 0, 0, 0, 0, 0, 0, 9,
          9, 0, 0, 0, 0, 0, 0, 0, 0, 9,
          9, -1, -1, -1, -1, -1, -1, -1, -1, 9,
          9, -4, -2, -3, -5, -6, -3, -2, -4, 9,
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
          9, 9, 9, 9, 9, 9, 9, 9, 9, 9
        ]
      ".gsub(/\s/, "")
      t.boolean :finished, default: false
      t.references :white, foreign_key: { to_table: :users }
      t.references :black, foreign_key: { to_table: :users }
      t.string :moves, default: ""
      t.string :winner
      t.string :next_to_move, default: "White"

      t.timestamps
    end
  end
end
