# == Schema Information
#
# Table name: contacts
#
#  id         :integer          not null, primary key
#  data       :string(255)      not null
#  icon_url   :string(255)      not null
#  created_at :datetime
#  updated_at :datetime
#

class Contact < ActiveRecord::Base
  validate :data, :icon_url, presence: true
end
