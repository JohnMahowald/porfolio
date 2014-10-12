# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Skill < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :project
end
