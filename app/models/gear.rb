class Gear < ApplicationRecord
    has_many :trail_gears
    has_many :trails, through: :trail_gears

end
