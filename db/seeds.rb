if Rails.env.development?
  Board.destroy_all
  User.destroy_all
end

luca = User.create!(
  username: "lucasevero",
  email: "luca@severo.com",
  password: "123456"
)

cleo = User.create!(
  username: "cleosevero",
  email: "cleo@severo.com",
  password: "123456"
)

Board.new(
  white: luca,
  black: cleo
)
