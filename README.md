# GitHub Action for [Firebase Hosting](https://firebase.google.com/docs/hosting) 🔥 

> **⚠️ Note:** To use this action, you must have access to the [GitHub Actions](https://github.com/features/actions) feature. GitHub Actions are currently only available in public beta. You can [apply for the GitHub Actions beta here](https://github.com/features/actions/signup/).

This simple action uses the vanilla [Firebase CLI](https://github.com/firebase/firebase-tools) to run `firebase deploy` to upload a static site to [Firebase Hosting](https://firebase.google.com/docs/hosting).


## Usage

### `workflow.yml` Example

This example checks out your repository and runs `firebase deploy` on the root of it. Assuming you have a [`firebase.json` file](https://firebase.google.com/docs/hosting/full-config) there, everything is taken care of automatically except your Firebase/Google Cloud [API Token](https://firebase.google.com/docs/cli#admin-commands), which should be declared as a [secret environment variable](https://developer.github.com/actions/managing-workflows/storing-secrets/) named `FIREBASE_TOKEN`. Obtain a token by running `firebase login:ci` on your local command line.

If you don't have a `firebase.json` file, you also need to specify a `FIREBASE_PROJECT_ID` environment variable with your Firebase project's unique ID.

You can add add optional `firebase deploy` [flags](https://firebase.google.com/docs/cli#deployment) by using `with: args:` under this step.

```yaml
jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: jakejarvis/firebase-deploy-action@master
      env:
        FIREBASE_TOKEN: ${{ secrets.FIREBASE_TOKEN }}
```


## License

This project is distributed under the [MIT license](LICENSE.md).
