class AdoptionRequestStatus
  STATUSES = {
    initialized: 'initialized',
    in_progress: 'in_progress',
    accepted: 'accepted',
    declined: 'declined'
  }

  def initialize(status)
    @status = status
  end
end
