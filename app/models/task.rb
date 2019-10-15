# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :week
  belongs_to :user
end
