class StaticController < ApplicationController
  def homepage
    @pending_approvals = Post.submitted
    @recent_audit_items = AuditLog.last(12)
  end
end