class HeroPower < ApplicationRecord
  belongs_to :superhero
  belongs_to :power
  validates :strength, inclusion: { in: ['Strong', 'Weak', 'Average'] }
end
