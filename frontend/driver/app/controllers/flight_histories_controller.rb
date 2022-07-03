class FlightHistoriesController < ApplicationController

  # GET: /flight_histories
  get "/flight_histories" do
    erb :"/flight_histories/index.html"
  end

  # GET: /flight_histories/new
  get "/flight_histories/new" do
    erb :"/flight_histories/new.html"
  end

  # POST: /flight_histories
  post "/flight_histories" do
    redirect "/flight_histories"
  end

  # GET: /flight_histories/5
  get "/flight_histories/:id" do
    erb :"/flight_histories/show.html"
  end

  # GET: /flight_histories/5/edit
  get "/flight_histories/:id/edit" do
    erb :"/flight_histories/edit.html"
  end

  # PATCH: /flight_histories/5
  patch "/flight_histories/:id" do
    redirect "/flight_histories/:id"
  end

  # DELETE: /flight_histories/5/delete
  delete "/flight_histories/:id/delete" do
    redirect "/flight_histories"
  end
end
