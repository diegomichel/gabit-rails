class User < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :logs, dependent: :destroy
  has_many :rewards, dependent: :destroy
end
