module ApplicationHelper
    def menu_items
        [
          {
          name: 'Dashboard',
          path: dashboard_index_path,
          icon: '
              <svg class="w-[19px] h-[19px] text-gray-500 transition duration-75 group-hover:text-gray-900 dark:text-gray-400 dark:group-hover:text-white" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 21 21">
                <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M11.15 5.6h.01m3.337 1.913h.01m-6.979 0h.01M5.541 11h.01M15 15h2.706a1.957 1.957 0 0 0 1.883-1.325A9 9 0 1 0 2.043 11.89 9.1 9.1 0 0 0 7.2 19.1a8.62 8.62 0 0 0 3.769.9A2.013 2.013 0 0 0 13 18v-.857A2.034 2.034 0 0 1 15 15Z"/>
              </svg>
            '
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
