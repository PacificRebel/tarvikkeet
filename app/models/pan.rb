# frozen_string_literal: true

class Pan < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
end
