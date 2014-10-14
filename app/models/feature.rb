# == Schema Information
#
# Table name: features
#
#  id          :integer          not null, primary key
#  description :string(255)      not null
#  project_id  :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Feature < ActiveRecord::Base
  belongs_to :project
end
