class IncidentsController < ApplicationController
  def index
    @incidents = Incident.order(id: :desc).all
  end
end
