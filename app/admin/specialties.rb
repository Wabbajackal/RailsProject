ActiveAdmin.register Specialty do

  permit_params :modifier

  # :specie_id, :hunter_id I don't want the admin to change specie or hunter
end
