class SreMailer < ApplicationMailer
  default from: "system@rails.ezploy.eu"

  def incident_report
    mail(to: 'cloudwareventuresdotcom@gmail.com', subject: 'Incident report')
  end
end
