class Task < ApplicationRecord
  enum :type, [:todo, :daily, :habit]
  belongs_to :user
  has_and_belongs_to_many :tags

  def completed_today?
    completed_at.day == Time.zone.now.day
  end
end
