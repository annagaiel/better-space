module ApplicationHelper
  def styleFlash(is_notice, is_alert)
    if is_notice
      return "alert-info"
    elsif is_alert
      return "alert-danger"
    end
  end
end
