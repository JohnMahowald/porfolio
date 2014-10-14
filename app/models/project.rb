# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  title       :string(255)      not null
#  github_url  :string(255)      not null
#  description :string(255)      not null
#  demo_url    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Project < ActiveRecord::Base
  validates :title, :description, :github_url, presence: true
  
  has_many :skills
  has_many :features
end
