class ApplicationSerializer < ActiveModel::Base
  include Rails.application.routes.url_helpers
  # defaut_url_options[:host] = 'localhost:3000/suitcase-api'
end