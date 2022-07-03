class NotificationsController < ApplicationController

  # GET: /notifications
  get "/notifications" do
    erb :"/notifications/index.html"
  end

  # GET: /notifications/new
  get "/notifications/new" do
    erb :"/notifications/new.html"
  end

  # POST: /notifications
  post "/notifications" do
    redirect "/notifications"
  end

  # GET: /notifications/5
  get "/notifications/:id" do
    erb :"/notifications/show.html"
  end

  # GET: /notifications/5/edit
  get "/notifications/:id/edit" do
    erb :"/notifications/edit.html"
  end

  # PATCH: /notifications/5
  patch "/notifications/:id" do
    redirect "/notifications/:id"
  end

  # DELETE: /notifications/5/delete
  delete "/notifications/:id/delete" do
    redirect "/notifications"
  end
end
