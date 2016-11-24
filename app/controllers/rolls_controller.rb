class RollsController < ActionController::Base
  protect_from_forgery with: :exception

  DICE = {
    0  => [ 'R', 'I', 'F', 'O', 'B', 'X' ],
    1  => [ 'I', 'F', 'E', 'H', 'E', 'Y' ],
    2  => [ 'D', 'E', 'N', 'O', 'W', 'S' ],
    3  => [ 'U', 'T', 'O', 'K', 'N', 'D' ],
    4  => [ 'H', 'M', 'S', 'R', 'A', 'O' ],
    5  => [ 'L', 'U', 'P', 'E', 'T', 'S' ],
    6  => [ 'A', 'C', 'I', 'T', 'O', 'A' ],
    7  => [ 'Y', 'L', 'G', 'K', 'U', 'E' ],
    8  => [ 'Qu', 'B', 'M', 'J', 'O', 'A' ],
    9  => [ 'E', 'H', 'I', 'S', 'P', 'N' ],
    10 => [ 'V', 'E', 'T', 'I', 'G', 'N' ],
    11 => [ 'B', 'A', 'L', 'I', 'Y', 'T' ],
    12 => [ 'E', 'Z', 'A', 'V', 'N', 'D' ],
    13 => [ 'R', 'A', 'L', 'E', 'S', 'C' ],
    14 => [ 'U', 'W', 'I', 'L', 'R', 'G' ],
    15 => [ 'P', 'A', 'C', 'E', 'M', 'D' ]
  }
  def index
    @random_indexes = (0..15).to_a.shuffle
    @dice = @random_indexes.map do |i|
      DICE[i].shuffle.first
    end
  end

end

