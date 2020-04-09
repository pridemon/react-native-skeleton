module.exports = {
  root: true,
  extends: ['@react-native-community', 'plugin:sonarjs/recommended'],
  parser: '@typescript-eslint/parser',
  plugins: ['sonarjs', '@typescript-eslint'],
  rules: {
    'sonarjs/cognitive-complexity': 0,
    'sonarjs/no-duplicate-string': 1,
    'sonarjs/no-identical-functions': 1,
    'sonarjs/no-collapsible-if': 1,
    'prefer-const': 2,
    '@typescript-eslint/indent': "off",
    '@typescript-eslint/camelcase': 0,
    '@typescript-eslint/explicit-function-return-type': [
      'error',
      {
        allowExpressions: false,
        allowTypedFunctionExpressions: true,
        allowHigherOrderFunctions: false,
      },
    ],
  },
};
