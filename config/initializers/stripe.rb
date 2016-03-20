if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_uF4h5AOcd3GEM6yok6ywf7i3',
    :secret_key => 'sk_test_IJexLsBP4k1VzjGP7Oj2XbO8'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
