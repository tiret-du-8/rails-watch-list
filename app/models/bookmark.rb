class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  # A bookmark must be linked to a movie and a list, and the [movie, list] pairings should be unique.
  validates :movie, uniqueness: { scope: :list }

  # The comment of a bookmark cannot be shorter than 6 characters.
  validates :comment, length: { minimum: 6 }
end
