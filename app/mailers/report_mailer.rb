class ReportMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.report_mailer.email_report.subject
  #
  def email_report(family_member, resident) #report
    @family_member = family_member
    @resident = resident
    #@report = report

    mail(
      to: family_member.email,
      subject: "Report from 2Care for #{resident.first_name.capitalize} #{resident.last_name.capitalize}."
    )
  end
end
