module ApplicationHelper
  def title
    title = "Git Tutal Website "

    if @title
      title = title += @title
    end

    title += " (by Blackbird)"
  end
end
