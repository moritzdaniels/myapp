class PaymentsController < ApplicationController
  # POST /payment
  def create
    @product = params[:product_id]
    @user = current_user
    token = params[:stripeToken]
    # Create the charge on Stripe's servers - this will charge the user's card
    begin
      charge = Stripe::Charge.create(
        :amount => 3700, # amount in cents, again
        :currency => "eur",
        :source => token,
        :description => params[:stripeEmail]
      )
      if charge.paid
        Order.create(product_id: @product, user_id: @user, total: 3700)

        flash[:success] = "Payment successful"
        redirect_to payments_success_path
      end
    
    rescue Stripe::CardError => e
      # The card has been declined
      body = e.json_body
      err = body[:error]
      flash[:error] = "Unfortunately, there was an error processing your payment: #{err[:message]}"
    end
  end
end