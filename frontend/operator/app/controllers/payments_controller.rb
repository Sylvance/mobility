class PaymentsController < ApplicationController

  # GET: /payments
  get "/payments" do
    erb :"/payments/index.html"
  end

  # GET: /payments/new
  get "/payments/new" do
    erb :"/payments/new.html"
  end

  # POST: /payments
  post "/payments" do
    redirect "/payments"
  end

  # GET: /payments/5
  get "/payments/:id" do
    erb :"/payments/show.html"
  end

  # GET: /payments/5/edit
  get "/payments/:id/edit" do
    erb :"/payments/edit.html"
  end

  # PATCH: /payments/5
  patch "/payments/:id" do
    redirect "/payments/:id"
  end

  # DELETE: /payments/5/delete
  delete "/payments/:id/delete" do
    redirect "/payments"
  end
end
