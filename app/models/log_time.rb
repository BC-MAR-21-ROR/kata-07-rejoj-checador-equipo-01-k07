# frozen_string_literal: true

class LogTime < ApplicationRecord
  belongs_to :user
  belongs_to :branch
  scope :assistance, -> (date) { where(check_in: date.midnight..date.end_of_day) } # para reporte de asistencia por dia
  
  scope :report, -> (date) { where(check_in: date.beginning_of_month..date.end_of_month) }
end
