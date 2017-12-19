class Prestation < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true

  validates :titre, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 140 }
  validates :tarif, presence: true
  validates :duree, presence: true
end
