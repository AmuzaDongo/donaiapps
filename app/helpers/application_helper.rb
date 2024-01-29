module ApplicationHelper
    def menu_items
        [
          {
            name: 'Dashboard',
            path: dashboard_index_path
          },
          {
            name: 'Services',
            path: services_path
          },
          {
            name: 'Invoices',
            path: dashboard_index_path
          },
          {
            name: 'Clients',
            path: dashboard_index_path
          },
          {
            name: 'Showcase',
            path: showcases_path
          },
          {
            name: 'Testmonials',
            path: testmonials_path
          },
          {
            name: 'News',
            path: news_index_path
          },
        ].map do |item| {
          name: item[:name],
          path: item[:path],
          icon: item[:icon],
          active: current_page?(item[:path])
        }
      end
    end
end
