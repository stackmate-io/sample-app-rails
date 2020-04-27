class StatusChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'incidents-room'
  end
end
