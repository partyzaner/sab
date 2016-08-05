class Article < ApplicationRecord
  validates :header, presence: true,
            length: { minimum: 5 }
end
