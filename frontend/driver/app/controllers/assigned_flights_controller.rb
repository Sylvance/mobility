class AssignedFlightsController < ApplicationController

  # GET: /assigned_flights
  get "/assigned_flights" do
    erb :"/assigned_flights/index.html"
  end

  # GET: /assigned_flights/new
  get "/assigned_flights/new" do
    erb :"/assigned_flights/new.html"
  end

  # POST: /assigned_flights
  post "/assigned_flights" do
    redirect "/assigned_flights"
  end

  # GET: /assigned_flights/5
  get "/assigned_flights/:id" do
    erb :"/assigned_flights/show.html"
  end

  # GET: /assigned_flights/5/edit
  get "/assigned_flights/:id/edit" do
    erb :"/assigned_flights/edit.html"
  end

  # PATCH: /assigned_flights/5
  patch "/assigned_flights/:id" do
    redirect "/assigned_flights/:id"
  end

  # DELETE: /assigned_flights/5/delete
  delete "/assigned_flights/:id/delete" do
    redirect "/assigned_flights"
  end
end
