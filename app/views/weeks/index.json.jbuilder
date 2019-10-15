# frozen_string_literal: true

json.array! @weeks, partial: 'weeks/week', as: :week
