# frozen_string_literal: true

class Branch < ApplicationRecord
  has_many :log_times
end
