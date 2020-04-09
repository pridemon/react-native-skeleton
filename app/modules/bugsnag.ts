import {Client, Configuration} from 'bugsnag-react-native';

const configuration = new Configuration('apiKey');
configuration.notifyReleaseStages = ['beta', 'production'];

export const bugsnag = new Client(configuration);
