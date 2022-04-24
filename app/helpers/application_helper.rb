module ApplicationHelper
  # Defining a method to render the error display partial
  def error_messages_for(object)
    render(
      partial: "application/error_messages",
      locals: {object: object}
    )
  end

  # Reusing the main header
  def show_default_header
    render(partial: "application/header")
  end

  # confirm user session
  def is_logged_in
    session[:user_id].present?
  end

  # Logotype leading to homepage
  def show_logo_to_homepage
    render(partial: "application/logo")
  end
end
