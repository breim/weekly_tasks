# frozen_string_literal: true

class Week < ApplicationRecord
  belongs_to :user
  has_many :tasks, inverse_of: :week, dependent: :delete_all
  accepts_nested_attributes_for :tasks, reject_if: :all_blank, allow_destroy: true

  # Pagination
  self.per_page = 10

  def total_term
		tasks.sum(:term)
  end
end
