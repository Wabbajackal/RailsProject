ActiveAdmin.register Schedule do
  permit_params :hunter_id, :vehicle_id, :target_id, :location_id, :total_cost, :start_date, :end_date
end
