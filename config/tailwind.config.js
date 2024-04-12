const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
      colors: {
        "color-primary": "#01051e",
        "color-primary-light": "#020726",
        "color-primary-dark": "#010417",
        "color-secondary": "#023D6C",
        "color-gray": "#333",
        "color-white": "#fff",
        "color-blob": "#A427DF",
        primary: { "900": "#2DAB6C" },
        secondary: { "900": "#023D6C"}
      }
    },
  },
  plugins: [
    require('flowbite/plugin'),
    require('@tailwindcss/forms'),
    require('@tailwindcss/aspect-ratio'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
