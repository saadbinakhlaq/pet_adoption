class AdoptionRequest < ApplicationRecord
  belongs_to :guardian
  belongs_to :pet
  enum status: AdoptionRequestStatus::STATUSES

  def status
    @status ||= AdoptionRequestStatus.new(read_attribute(:status))
  end
end
