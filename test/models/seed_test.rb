class SeedTest < ActiveSupport::TestCase
  # Users
  @@luca = User.new(
    username: "lucasevero",
    email: "luca@severo.com",
    password: "123456"
  )
  @@cleo = User.new(
    username: "cleosevero",
    email: "cleo@severo.com",
    password: "123456"
  )

  # Boards
  @@initial_state = Board.new(
    board_state: Board.column_defaults["board_state"],
    finished: false,
    white: @@luca,
    black: @@cleo,
    moves: "",
    winner: "",
    next_to_move: ""
  )

  @@vienna_gambit_accepted = Board.new(
    board_state: "
      [
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 4, 0, 3, 5, 6, 3, 2, 4, 9,
        9, 1, 1, 1, 1, 0, 0, 1, 1, 9,
        9, 0, 0, 2, 0, 0, 0, 0, 0, 9,
        9, 0, 0, 0, 0, 0, -1, 0, 0, 9,
        9, 0, 0, 0, 0, 1, 0, 0, 0, 9,
        9, 0, 0, 0, 0, 0, -2, 0, 0, 9,
        9, -1, -1, -1, -1, 0, -1, -1, -1, 9,
        9, -4, -2, -3, -5, -6, -3, 0, -4, 9,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9
      ]
    ".gsub(/\s/, ""),
    finished: false,
    white: @@luca,
    black: @@cleo,
    moves: "",
    winner: "",
    next_to_move: ""
  )

  @@giuoco_piano = Board.new(
    board_state: "
      [
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 4, 2, 3, 5, 6, 0, 0, 4, 9,
        9, 1, 1, 1, 1, 0, 1, 1, 1, 9,
        9, 0, 0, 0, 0, 0, 2, 0, 0, 9,
        9, 0, 0, 3, 0, 1, 0, 0, 0, 9,
        9, 0, 0, -3, 0, -1, 0, 0, 0, 9,
        9, 0, 0, -2, 0, 0, 0, 0, 0, 9,
        9, -1, -1, -1, -1, 0, -1, -1, -1, 9,
        9, -4, 0, -3, -5, -6, 0, -2, -4, 9,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
        9, 9, 9, 9, 9, 9, 9, 9, 9, 9
      ]
    ".gsub(/\s/, ""),
    finished: false,
    white: @@luca,
    black: @@cleo,
    moves: "",
    winner: "",
    next_to_move: ""
  )

  # Pawns
  @@pawn_b2 = Pawn.new(
    board: @@initial_state,
    color: "White",
    square: "b2"
  )

  @@pawn_d4 = Pawn.new(
    board: @@initial_state,
    color: "White",
    square: "d4"
  )

  @@pawn_h3 = Pawn.new(
    board: @@initial_state,
    color: "Black",
    square: "h3"
  )

  @@pawn_e5 = Pawn.new(
    board: @@vienna_gambit_accepted,
    color: "White",
    square: "e5"
  )

  @@pawn_e4 = Pawn.new(
    board: @@giuoco_piano,
    color: "White",
    square: "e4"
  )

  # Knights
  @@knight_f6 = Knight.new(
    board: @@vienna_gambit_accepted,
    color: "Black",
    square: "f6"
  )

  @@knight_f3 = Knight.new(
    board: @@giuoco_piano,
    color: "White",
    square: "f3"
  )

  @@knight_b1 = Knight.new(
    board: @@initial_state,
    color: "White",
    square: "b1"
  )
end
