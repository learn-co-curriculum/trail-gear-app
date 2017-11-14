class Trail < ApplicationRecord
    has_many :trail_gears
    has_many :gear, through: :trail_gears

    enum difficulty: [:easy, :moderate, :hard]

    def difficulty=(difficulty)
        write_attribute("difficulty", difficulty.to_i)
    end

    def gear=(gear)
        self.gear << Gear.find_or_initialize_by(title: gear[:title])
    end
end
