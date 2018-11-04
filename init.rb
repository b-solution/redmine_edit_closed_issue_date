Redmine::Plugin.register :redmine_edit_closed_issue_date do
  name 'Redmine Edit Closed Issue Date plugin'
  author 'Bilel kedidi'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'https://github.com/bilel-kedidi/redmine_edit_closed_issue_date'
  author_url 'https://github.com/bilel-kedidi'

  class ViewClosedIssueDateHook < Redmine::Hook::ViewListener
    render_on :view_issues_form_details_bottom, :partial => "issues/closed_issue"
  end
end

require 'redmine_edit_closed_issue_date/issue_patch'
