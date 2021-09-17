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
    include ActionView::Helpers::DateHelper
    validates :birth_date, :name, :description, presence: true
    validates :sex, presence: true, inclusion: { in: %w(M F)}
    COLOR = %w(black brown tabby white tuxedo)
    validates :color, presence: true, inclusion: {in: COLOR}

    def age
        time_ago_in_words(self.birth_date)
    end


end
