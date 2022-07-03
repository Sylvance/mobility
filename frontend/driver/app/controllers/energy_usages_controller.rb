class EnergyUsagesController < ApplicationController

  # GET: /energy_usages
  get "/energy_usages" do
    erb :"/energy_usages/index.html"
  end

  # GET: /energy_usages/new
  get "/energy_usages/new" do
    erb :"/energy_usages/new.html"
  end

  # POST: /energy_usages
  post "/energy_usages" do
    redirect "/energy_usages"
  end

  # GET: /energy_usages/5
  get "/energy_usages/:id" do
    erb :"/energy_usages/show.html"
  end

  # GET: /energy_usages/5/edit
  get "/energy_usages/:id/edit" do
    erb :"/energy_usages/edit.html"
  end

  # PATCH: /energy_usages/5
  patch "/energy_usages/:id" do
    redirect "/energy_usages/:id"
  end

  # DELETE: /energy_usages/5/delete
  delete "/energy_usages/:id/delete" do
    redirect "/energy_usages"
  end
end
