class AdoptionRequestStatus
  STATUSES = {
    initialized: 0,
    in_progress: 1,
    accepted: 3,
    declined: 4
  }

  def initialize(status)
    @status = status
  end
end
