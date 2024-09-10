class Player < ApplicationRecord
  enum :position, { setter: 0, libero: 1, hitters: 2 }

  with_options presence: true do
    validates :name, :position
    validates :set, :spike, :dig, :serve, :block,
      numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  end
end
