class Piece < Tableless
  COLORS = ["Black", "White"]

  validates :color, inclusion: { in: COLORS }

  def initialize(attr = {})
    @color = attr[:color]
    @pinned = attr[:pinned]
    @board = attr[:board]
  end

  attr_reader :color

  def pinned?
    @pinned
  end

  def to_chess_notation(info = {})
    # possible_pairs = {
    #   piece_abbreviation: ["", "K", "Q", "R", "B", "N"],
    #   destination_sqr: ["a1", "b1", ...],
    #   current_sqr: ["a1", "b1", ...],
    #   capture: [true, false],
    #   check: [true, false],
    #   checkmate: [true, false],
    #   castle: ["O-O", "O-O-O"],
    #   concorrent_sqr: ["a1", "b1", ...],
    #   promoting_piece: ["K", "Q", "R", "B", "N"]
    # }

    # SCENARIOS

    # Checks
    # Checkmate
    info[:check] = "+" if info[:check]
    info[:check] = "#" if info[:checkmate]

    # Ordinary move
    # Castle
    if info[:castle].present? && ["O-O", "O-O-O"].include?(info[:castle])
      return info[:castle] + info[:check]
    end

    # Captures
    # Captures by pawns
    if info[:capture]
      info[:capture] = "x"
      info[:capture] = info[:current_sqr][0] if info[:piece_abbreviation].nil?
    end


    return info[:piece_abbreviation] + info[:capture] + info[:destination_sqr] + info[:check]

    # TODO
      # Concorrent pieces
      # Promotion
  end
end
