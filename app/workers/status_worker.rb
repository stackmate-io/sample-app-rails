class StatusWorker
  include Sidekiq::Worker

  def perform
    up_or_down = [true, false].sample ? 'UP': 'DOWN'

    ActionCable.server.broadcast('incidents-room', {
      title: "Status Checking service is #{up_or_down}!" ,
      initiator: 'Sidekiq Worker'
    })
  end
end
