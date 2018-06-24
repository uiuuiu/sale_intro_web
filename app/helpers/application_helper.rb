module ApplicationHelper

  def flash_class(level)
    case level
      when :notice, "notice" then "alert alert-info"
      when :success, "success" then "alert alert-success"
      when :error, "error" then "alert alert-error"
      when :alert, "alert" then "alert alert-error"
    end
  end
end
