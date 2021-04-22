if Rails.env == 'production'
Rails.application.config.session_store :cookie_store, key: '_authentication_app', expire_after: 100.days, domain: 'https://houses-api-yahir.herokuapp.com'
else
Rails.application.config.session_store :cookie_store, key: '_authentication_app'
end