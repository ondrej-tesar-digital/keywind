const defaultTheme = require('tailwindcss/defaultTheme');
const colors = require('tailwindcss/colors');

/**
 * @type { import('tailwindcss').Config }
 */
module.exports = {
  content: ['./theme/**/*.ftl'],
  experimental: {
    optimizeUniversalDefaults: true,
  },
  plugins: [require('@tailwindcss/forms')],
  theme: {
    extend: {
      colors: {
        primary: {
          100: '#edf5ff',
          200: '#d0e2ff',
          300: '#a6c8ff',
          400: '#78a9ff',
          500: '#4589ff',
          600: '#0f62fe',
          650: '#0353e9',
          700: '#0043ce',
          800: '#002d9c',
          900: '#001d6c',
          1000: '#001141',
        },
        secondary: {
          50: '#f9f9f9',
          100: '#f4f4f4',
          150: '#e5e5e5',
          200: '#e0e0e0',
          300: '#c6c6c6',
          400: '#a8a8a8',
          500: '#8d8d8d',
          600: '#6f6f6f',
          700: '#525252',
          750: '#4c4c4c',
          800: '#393939',
          900: '#262626',
          1000: '#161616',
        },
      
        provider: {
          apple: '#000000',
          bitbucket: '#0052CC',
          discord: '#5865F2',
          facebook: '#1877F2',
          github: '#181717',
          gitlab: '#FC6D26',
          google: '#4285F4',
          instagram: '#E4405F',
          linkedin: '#0A66C2',
          microsoft: '#5E5E5E',
          oidc: '#F78C40',
          openshift: '#EE0000',
          paypal: '#00457C',
          slack: '#4A154B',
          stackoverflow: '#F58025',
          twitter: '#1DA1F2',
        },
      },
      fontFamily: {
        sans: ['IBM Plex Sans'].concat(defaultTheme.fontFamily.sans),
      },
    },
  },
};
