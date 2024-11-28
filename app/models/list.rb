class List < ApplicationRecord
  # When you delete a list, you should delete all associated bookmarks (but not the movies as they can be referenced in other lists).
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks, dependent: :destroy

  # A list must have a unique name.
  validates :name, presence: true, uniqueness: true
end
