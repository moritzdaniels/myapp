if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_YdrZKTNCIBQaWQYP6N7Uk8cR',
    :secret_key => 'sk_test_iy4L4pN1jK8BmGUKdQMzDnxt'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]