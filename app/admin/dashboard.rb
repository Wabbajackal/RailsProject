ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do
    # div class: "blank_slate_container", id: "dashboard_default_message" do
    #   span class: "blank_slate" do
    #     span I18n.t("active_admin.dashboard_welcome.welcome")
    #     small I18n.t("active_admin.dashboard_welcome.call_to_action")
    #   end
    # end

    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Orders" do
          ul do
            Schedule.all.each do |order|
              li link_to("#{order.start_date} / #{order.end_date} - - #{order.hunter.name} vs #{order.target.specie.name} - - $#{order.total_cost}", admin_schedule_path(order))
            end

            # Schedule.last(5).map do |order|
            #   li link_to(order.id, admin_order_path(order))
            # end
          end
        end
      end
    end
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end
