Deface::Override.new(
  :virtual_path => "spree/admin/configurations/index",
  :name => "insert_buscape_into_admin_config_menu",
  :insert_after => "tbody[data-hook='admin_configurations_menu']",
  :text => %(<%= configurations_menu_item(t("buscape"), admin_buscapes_path, t("buscape_description")) %>)
)

Deface::Override.new(:virtual_path => "spree/admin/shared/_configuration_menu",
                     :name => "insert_buscape_into_admin_configuration_sidebar_menu",
                     :insert_bottom => "[data-hook='admin_configurations_sidebar_menu'], #admin_configurations_sidebar_menu[data-hook]",
                     :text => "<%= configurations_sidebar_menu_item t('buscape'), admin_buscapes_path %>",
                     :disabled => false)