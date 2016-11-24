module ApplicationHelper
  ROTATIONS = %w( rotate0 rotate90 rotate180 rotate270 )
  def random_rotation
    ROTATIONS.shuffle.first
  end
end
