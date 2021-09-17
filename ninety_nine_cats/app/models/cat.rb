# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "action_view"
class Cat < ApplicationRecord
    include "Action_View::Helpers::Date_Helper"
    validates :birth_date, :name, :description, presence: true
    validates :sex, presence: true, inclusion: { in: %w(M F), message: "%{value} is not a valid sex"}
    COLOR = ["black", "brown", "tabby", "white", "tuxedo"]
    validates :color, presence:true, inclusion: {in: %w(COLOR), message: "%{value} is not a valid color"}

    def age
        time_ago_in_words(self.birth_date - Time.now)
    end


end
