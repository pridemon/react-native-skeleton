module.exports = {
  root: true,
  extends: ['@react-native-community', 'plugin:sonarjs/recommended'],
  plugins: ['sonarjs'],
  rules: {
    'sonarjs/cognitive-complexity': 0,
    'sonarjs/no-duplicate-string': 1,
    'sonarjs/no-identical-functions': 1,
    'sonarjs/no-collapsible-if': 1,
  },
};
