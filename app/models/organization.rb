class Organization < ApplicationRecord
  validates_presence_of :name

  has_one :user
  has_many :organization_dragons
  has_many :dragons, through: :organization_dragons
end
