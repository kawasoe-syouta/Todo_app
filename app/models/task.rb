class Task < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :message
  end
end
