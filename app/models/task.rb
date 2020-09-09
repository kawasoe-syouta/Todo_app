class Task < ApplicationRecord
  belongs_to :user
  has_many :importants, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :message
  end

  def self.search(search)
    return Task.all unless search
    Task.where(['title LIKE ?', "%#{search}%"])
  end
end
