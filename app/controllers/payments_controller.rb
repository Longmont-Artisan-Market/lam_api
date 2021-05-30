class PaymentsController < ApplicationController

  def create
    fee_amount = get_fee(params[:payment_type])
    application = Application.find(params[:application_id])

    ##GET TOKEN##
    url = "https://api-m.sandbox.paypal.com/v1/oauth2/token"
    basic_auth = ["#{ENV["S_PAYPAL_CLIENT_ID"]}:#{ENV["S_PAYPAL_CLIENT_SECRET"]}"].pack('m').delete("\r\n")
    response = Faraday.post(url,'grant_type=client_credentials',
                            authorization: "Basic #{basic_auth}",
                            "Content-Type": 'application/x-www-form-urlencoded')
    token = JSON.parse(response.body)["access_token"]
    token_string = "Bearer #{token}"

    ##Request payment
    require 'pry'; binding.pry
    end

  private

  def get_fee(payment_type)
    fees = { 'application' => 15 }
    fees[payment_type]
  end
end