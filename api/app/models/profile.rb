# frozen_string_literal: true

class Profile < ApplicationRecord
  belongs_to :user
  validates :username, presence: true, uniqueness: true
  validates :user, presence: true, uniqueness: true
end
