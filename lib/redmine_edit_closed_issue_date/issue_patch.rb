
module RedmineEditClosedIssueDate
  module IssuePatch
    def self.included(base) # :nodoc:
      base.send(:include, InstanceMethods)

      base.class_eval do
        safe_attributes :closed_on
      end
    end

    module InstanceMethods
    end
  end
end


unless Issue.included_modules.include?(RedmineEditClosedIssueDate::IssuePatch)
  Issue.send(:include,RedmineEditClosedIssueDate::IssuePatch)
end