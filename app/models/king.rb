class King < Piece
  def initialize(attr = {})
    super
    @checked = attr[:checked]
    remove_instance_variable :@pinned
  end

  def checked?
    @checked
  end
end
