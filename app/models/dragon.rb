class Dragon < ApplicationRecord
  validates_presence_of :name

  has_many :organization_dragons
  has_many :organizations, through: :organization_dragons
end
