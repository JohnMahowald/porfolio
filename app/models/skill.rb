# == Schema Information
#
# Table name: skills
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  project_id :integer
#  created_at :datetime
#  updated_at :datetime
#  ord        :integer
#

class Skill < ActiveRecord::Base
  validates :title, presence: true
  belongs_to :project
  
  def self.uniq_skills
    Skill.where("ord IS NOT NULL").order(:ord)
  end
end
