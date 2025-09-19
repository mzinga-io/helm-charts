# MZinga Helm Charts


[![License](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/license/mit)

Repository containing MZinga related helm charts.

## Setup

You must install [make](https://www.gnu.org/software/make/) to install and setup git hooks on this repo.

After installing it run:

```console
make setup
```

## Usage

[Helm](https://helm.sh) must be installed to use the charts.
Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```console
helm repo add mzingaio https://mzinga-io.github.io/helm-charts
```

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
mzingaio` to see the charts.

To install the mzinga chart:

  ```console
    helm install mzinga mzingaio/mzinga
  ```

To uninstall the chart:

  ```console
    helm uninstall mzinga
  ```

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
Chart documentation is available in [mzinga directory](https://github.com/mzinga-io/helm-charts/blob/main/charts/mzinga/README.md).

## Contributing

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
We'd love to have you contribute! Please refer to our [contribution guidelines](https://github.com/mzinga-io/helm-charts/blob/main/CONTRIBUTING.md) for details.

## License

<!-- Keep full URL links to repo files because this README syncs from main to gh-pages.  -->
[MIT License](https://github.com/mzinga-io/helm-charts/blob/main/LICENSE).
