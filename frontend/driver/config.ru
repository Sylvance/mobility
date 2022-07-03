require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

run ApplicationController
use EnergyUsagesController
use PaymentHistoriesController
use PaymentsController
use AssignedFlightsController
use FlightsController
use FlightHistoriesController
