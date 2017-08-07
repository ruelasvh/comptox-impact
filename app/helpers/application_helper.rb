module ApplicationHelper
  def load_client_app
    if Rails.env == 'development_webpack_dev_server'
      javascript_include_tag 'http://localhost:4000/client-app.js'
    else
      javascript_include_tag 'application'
    end
  end
end
