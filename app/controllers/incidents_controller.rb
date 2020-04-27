class IncidentsController < ApplicationController
  def index
    # Fetch all incidents
    @incidents = Incident.order(id: :desc).all

    # emulate last fetch from remote service
    @last_fetch = Rails.cache.fetch(:last_incident_fetch, expires_in: 5.minutes) do
      Rails.logger.info('Fetching from remote server');
      DateTime.now
    end

    # Trigger a worker service that would send a channels message
    StatusWorker.perform_in(10.seconds)
  end

  def report
    SreMailer.incident_report.deliver_now!
  end
end
