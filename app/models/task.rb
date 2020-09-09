class Task < ApplicationRecord
  belongs_to :user
  has_many :importants, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :message
  end
end
