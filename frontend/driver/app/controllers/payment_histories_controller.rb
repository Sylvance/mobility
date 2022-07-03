class PaymentHistoriesController < ApplicationController

  # GET: /payment_histories
  get "/payment_histories" do
    erb :"/payment_histories/index.html"
  end

  # GET: /payment_histories/new
  get "/payment_histories/new" do
    erb :"/payment_histories/new.html"
  end

  # POST: /payment_histories
  post "/payment_histories" do
    redirect "/payment_histories"
  end

  # GET: /payment_histories/5
  get "/payment_histories/:id" do
    erb :"/payment_histories/show.html"
  end

  # GET: /payment_histories/5/edit
  get "/payment_histories/:id/edit" do
    erb :"/payment_histories/edit.html"
  end

  # PATCH: /payment_histories/5
  patch "/payment_histories/:id" do
    redirect "/payment_histories/:id"
  end

  # DELETE: /payment_histories/5/delete
  delete "/payment_histories/:id/delete" do
    redirect "/payment_histories"
  end
end
