# HoloInsight Community Kubernetes Helm Charts
[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)
![Release Charts](https://github.com/traas-stack/holoinsight-helm-charts/workflows/Release%20Charts/badge.svg?branch=main)
[![Releases downloads](https://img.shields.io/github/downloads/traas-stack/holoinsight-helm-charts/total.svg)](https://github.com/traas-stack/holoinsight-helm-charts/releases)

This repository contains the Helm Chart source code for the following 2 components.
- [HoloInsight](https://github.com/traas-stack/holoinsight)
- [HoloInsight-Agent](https://github.com/traas-stack/holoinsight)

The Helm Chart information of this repository can also be searched at [artifacthub.io](https://artifacthub.io/packages/search?org=holoinsight&sort=relevance&page=1).

This repository is maintained according to the guide in this document [Chart Releaser Action to Automate GitHub Page Charts](https://helm.sh/docs/howto/chart_releaser_action/).

# Usage
[Helm](https://helm.sh/) must be installed to use the charts. Please refer to Helm's [documentation](https://helm.sh/docs/) to get started.

Once Helm is set up properly, add the repo as follows:

```bash
helm repo add holoinsight https://traas-stack.github.io/holoinsight-helm-charts
```

You can then run `helm search repo holoinsight` to see the charts.

Check this [document](https://traas-stack.github.io/holoinsight-docs/operations/deployment/k8s.html) for more details.

# Update Chart Guide
1. Update Chart content
2. Update version/appVersion in Chart.yaml according to https://helm.sh/docs/topics/charts/ and https://semver.org/
3. Write changelogs in README.md of the Chart
4. Create a PR to main branch

# Licensing
[Apache 2.0 License](https://github.com/traas-stack/holoinsight-helm-charts/blob/main/LICENSE).

# Community and support
- Contact us via Email: traas_stack@antgroup.com
- WeChat Official Account [QR code](https://github.com/traas-stack/community/blob/main/holoinsight/contact-us/wechat-qrcode.jpg)
- DingTalk group [QR code](https://github.com/traas-stack/community/blob/main/holoinsight/contact-us/dingtalk-qrcode.jpg)
