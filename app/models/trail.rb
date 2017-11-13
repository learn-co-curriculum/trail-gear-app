class Trail < ApplicationRecord
    enum difficulty: [:easy, :moderate, :hard]

    def difficulty=(difficulty)
        write_attribute("difficulty", difficulty.to_i)
    end
end
