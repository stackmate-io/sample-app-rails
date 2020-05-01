class SreMailer < ApplicationMailer
  default from: 'cloudwareventuresdotcom@gmail.com'

  def incident_report
    mail(to: 'cloudwareventuresdotcom@gmail.com', subject: 'Incident report')
  end
end
