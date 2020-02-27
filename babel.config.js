module.exports = api => {
  const productionPlugins = api.env('production') ? [['transform-remove-console']] : [];

  return {
    presets: ['module:metro-react-native-babel-preset'],
    plugins: [...productionPlugins],
  };
};
