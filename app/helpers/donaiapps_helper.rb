module DonaiappsHelper
    def client_items
        [
            {
                name: 'Home',
                path: root_path
            },
            {
                name: 'Who We Are',
                path: about_index_path
            },
            {
                name: 'Services',
                path: service_index_path
            },
            {
                name: 'Contact',
                path: contact_index_path
            }
        ].map do |item| {
          name: item[:name],
          path: item[:path],
          active: current_page?(item[:path])
        }
      end
    end
end
