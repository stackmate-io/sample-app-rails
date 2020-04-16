class Incident < ApplicationRecord
  validates :title, presence: true
  validates :is_resolved, inclusion: { in: [true, false] }
  after_initialize :default_values

  def default_values
    self.is_resolved ||= true
    self.occurred_at ||= DateTime.now
  end
end
