class User < ApplicationRecord
  has_many :tasks
  has_many :tags
  has_many :logs
  has_many :rewards
end
