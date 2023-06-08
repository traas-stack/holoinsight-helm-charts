## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

helm repo add holoinsight https://traas-stack.github.io/holoinsight-helm-charts

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
holoinsight` to see the charts.

To install the holoinsight chart:
    kubectl create namespace holoinsight-agent
    helm install -n holoinsight-agent holoinsight-server holoinsight/holoinsight-agent

To uninstall the chart:

    helm delete -n holoinsight-agent holoinsight-agent

## Changelogs
### To-1.0.0
- First version
