class ApplicationController < ActionController::Base

  before_action :set_locale

  def set_locale
    # the following can be used to automatically fetch the language from the browser
    # locale_form_header ||
    I18n.locale = I18n.default_locale
  end

  def locale_form_header
    request.env.fetch('HTTP_ACCEPT_LANGUAGE', '').scan(/[a-z]{2}/).first
  end
end
