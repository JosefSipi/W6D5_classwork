require "action_view"

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    COLORS = ["Red", "Yellow", "Black", "White", "Gray"]
    SEXES = ["M", "F"]
    validates :name, :birth_date, presence: true
    validates :color, inclusion: COLORS
    validates :sex, inclusion: SEXES

    def age
        time_ago_in_words(birth_date)
    end


end