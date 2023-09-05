# Preview all emails at http://localhost:3000/rails/mailers/report_mailer
class ReportMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/report_mailer/email_report

  def email_report
    family_member = FamilyMember.first
    resident = Resident.first
    report = Report.first
    ReportMailer.email_report(family_member, resident, report)
  end
end
