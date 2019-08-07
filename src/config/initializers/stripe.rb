Rails.configuration.stripe = {
  :stripe_publishable_key => 'pk_test_yoDdEqHnzqxrLDXt9PmPWgxf00NzqMLuSn',
  :secret_key => 'sk_test_j61z23v6AgyBccU8vePVxrOn00FcQbv5qs'
}
Stripe.api_key = Rails.configuration.stripe[:secret_key]
