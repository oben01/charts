# Dashdot

<img src="https://raw.githubusercontent.com/oben01/charts/main/charts/dashdot/icon.svg" align="right" width="92" alt="dashdot logo">

![Version: 1.2.1](https://img.shields.io/badge/Version-1.2.1-informational?style=flat)
![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat)
![AppVersion: 5.9.0](https://img.shields.io/badge/AppVersion-5.9.0-informational?style=flat)

A Helm chart to deploy dashdot for Kubernetes

**Homepage:** <https://oben01.github.io/charts/charts/dashdot/>

**This chart is not maintained by the upstream project and any issues with the chart should be raised
[here](https://github.com/oben01/charts/issues/new?assignees=oben01&labels=bug&template=bug_report.yaml&name=dashdot&version=1.2.1)**

## Source Code

* <https://github.com/MauriceNino/dashdot>

## 📄 Requirements

Kubernetes: `>=1.22.0-0`

## 🍱 Dependencies

This chart has no dependencies.

## 🚀 Installing the Chart

To install the chart with the release name `dashdot`

### OCI (Recommended)

```console
helm install dashdot oci://ghcr.io/oben01/charts/dashdot
```

### Traditional

```console
helm repo add oben01 https://oben01.github.io/charts/
helm repo update
helm install dashdot oben01/dashdot
```

## ➖ Uninstalling the Chart

To uninstall the `dashdot` deployment

```console
helm uninstall dashdot
```

The command removes all the Kubernetes components associated with the chart **including persistent volumes** and deletes the release.

## 🔧 Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

```console
helm install dashdot \
  --set env.TZ="America/New York" \
    oben01/dashdot
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart.

```console
helm install dashdot oben01/dashdot -f values.yaml
```

## 🎨 Custom configuration

N/A

## 🗃 Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Node affinity for pod scheduling |
| autoscaling | object | `{"enabled":false,"maxReplicas":100,"minReplicas":1,"targetCPUUtilizationPercentage":80}` | Autoscaling configuration |
| autoscaling.enabled | bool | `false` | Enable autoscaling |
| autoscaling.maxReplicas | int | `100` | Maximum replicas |
| autoscaling.minReplicas | int | `1` | Minimum replicas |
| autoscaling.targetCPUUtilizationPercentage | int | `80` | Target CPU utilization for autoscaling |
| env.DASHDOT_ALWAYS_SHOW_PERCENTAGES | bool | `false` | To always show the current percentage of each graph in the top-left corner. Without enabling this, they will only be shown on lower resolution devices (mobile phones). |
| env.DASHDOT_CPU_LABEL_LIST | string | `"brand,model,cores,threads,frequency"` | The available options are: brand, model, cores, threads, frequency. |
| env.DASHDOT_CUSTOM_HOST | string | `nil` | If you want to show a custom host in the server widget (needs DASHDOT_SHOW_HOST enabled to work). |
| env.DASHDOT_ENABLE_CPU_TEMPS | bool | `false` | If you want to show the CPU temperature in the graph. This will probably not work on a VPS, so you need to try it on your own if this works. For home servers it might work just fine. |
| env.DASHDOT_GPU_LABEL_LIST | string | `"brand, model, memory"` | The available options are: brand, model, memory. |
| env.DASHDOT_NETWORK_LABEL_LIST | string | `"type,speed_up,speed_down,interface_speed"` | The available options are: type, speed_up, speed_down, interface_speed, public_ip. |
| env.DASHDOT_OS_LABEL_LIST | string | `"os,arch,up_since"` | The available options are: os, arch, up_since, dash_version. |
| env.DASHDOT_PAGE_TITLE | string | `"dash."` | If you want to show a custom string in the browser page title. |
| env.DASHDOT_RAM_LABEL_LIST | string | `"brand,size,type,frequency"` | The available options are: brand, size, type, frequency. |
| env.DASHDOT_SHOW_DASH_VERSION | string | `nil` | If you want to show the version number of your dash. instance on the bottom right of the page, or alternatively on the GitHub icon (hover). The available options are: bottom_right, icon_hover. |
| env.DASHDOT_SHOW_HOST | bool | `false` | If you want to show the host part in the server widget (e.g. dash. -> dash.mauz.dev). |
| env.DASHDOT_STORAGE_LABEL_LIST | string | `"brand,size,type"` | The available options are: brand, size, type. |
| env.DASHDOT_USE_IMPERIAL | bool | `false` | Shows any units in the imperial system, instead of the default metric. |
| env.DASHDOT_WIDGET_LIST | string | `"os,cpu,storage,ram,network"` | The available options are: os, cpu, storage, ram, network, gpu. |
| env.TZ | string | `"Europe/Paris"` | Your local time zone |
| fullnameOverride | string | `""` | Overrides chart's fullname |
| image | object | `{"pullPolicy":"IfNotPresent","repository":"mauricenino/dashdot","tag":"5.9.2"}` | Number of replicas |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"mauricenino/dashdot"` | Image repository |
| image.tag | string | `"5.9.2"` | Overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | Secrets for Docker registry |
| ingress | object | `{"annotations":{},"enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/"}]}],"ingressClassName":"","tls":[]}` | Ingress configuration |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/"}]}]` | Ingress hosts configuration |
| ingress.ingressClassName | string | `""` | Ingress class name |
| ingress.tls | list | `[]` | Ingress TLS configuration |
| nameOverride | string | `""` | Overrides chart's name |
| nodeSelector | object | `{}` | Node selectors for pod scheduling |
| podAnnotations | object | `{}` | Pod annotations |
| podLabels | object | `{}` | Pod labels |
| podSecurityContext | object | `{"privileged":true}` | Pod security context |
| podSecurityContext.privileged | bool | `true` | needed to determine the memory and storage info. |
| replicaCount | int | `1` |  |
| resources | object | `{}` | Resource configuration |
| securityContext | object | `{}` | Security context |
| service | object | `{"port":3001,"targetPort":3001,"type":"ClusterIP"}` | Service configuration |
| service.port | int | `3001` | Service port |
| service.targetPort | int | `3001` | Service target port |
| service.type | string | `"ClusterIP"` | Service type |
| serviceAccount.annotations | object | `{}` |  |
| serviceAccount.automount | bool | `true` |  |
| serviceAccount.create | bool | `true` |  |
| serviceAccount.name | string | `""` |  |
| tolerations | list | `[]` | Node tolerations for pod scheduling |
| volumeMounts | list | `[]` |  |
| volumes | list | `[]` |  |

---
Autogenerated from chart metadata using [helm-docs](https://github.com/norwoodj/helm-docs)
