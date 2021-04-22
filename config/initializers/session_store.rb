Rails.application.config.session_store :cookie_store, key: '_authentication_app', expire_after: 100.days, domain: :all
