class FlightsController < ApplicationController

  # GET: /flights
  get "/flights" do
    erb :"/flights/index.html"
  end

  # GET: /flights/new
  get "/flights/new" do
    erb :"/flights/new.html"
  end

  # POST: /flights
  post "/flights" do
    redirect "/flights"
  end

  # GET: /flights/5
  get "/flights/:id" do
    erb :"/flights/show.html"
  end

  # GET: /flights/5/edit
  get "/flights/:id/edit" do
    erb :"/flights/edit.html"
  end

  # PATCH: /flights/5
  patch "/flights/:id" do
    redirect "/flights/:id"
  end

  # DELETE: /flights/5/delete
  delete "/flights/:id/delete" do
    redirect "/flights"
  end
end
