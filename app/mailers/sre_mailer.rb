class SreMailer < ApplicationMailer
  default from: "system@rails.ezploy.eu"

  def incident_report
    mail(to: 'sre-ezploy-eu@mailinator.com', subject: 'Incident report')
  end
end
