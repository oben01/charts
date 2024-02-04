# Homarr

<img src="https://raw.githubusercontent.com/oben01/charts/main/charts/homarr/icon.svg" align="right" width="92" alt="homarr logo">

![Version: 1.0.6](https://img.shields.io/badge/Version-1.0.6-informational?style=flat)
![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat)
![AppVersion: 0.14.6](https://img.shields.io/badge/AppVersion-0.14.6-informational?style=flat)

A Helm chart to deploy homarr for Kubernetes

**Homepage:** <https://oben01.github.io/charts/charts/homarr/>

**This chart is not maintained by the upstream project and any issues with the chart should be raised
[here](https://github.com/oben01/charts/issues/new?assignees=oben01&labels=bug&template=bug_report.yaml&name=homarr&version=1.0.6)**

## Source Code

* <https://github.com/ajnart/homarr>

## 📄 Requirements

Kubernetes: `>=1.22.0-0`

## 🍱 Dependencies

This chart has no dependencies.

## 🚀 Installing the Chart

To install the chart with the release name `homarr`

### OCI (Recommended)

```console
helm install homarr oci://ghcr.io/oben01/charts/homarr
```

### Traditional

```console
helm repo add oben01 https://oben01.github.io/charts/
helm repo update
helm install homarr oben01/homarr
```

## ➖ Uninstalling the Chart

To uninstall the `homarr` deployment

```console
helm uninstall homarr
```

The command removes all the Kubernetes components associated with the chart **including persistent volumes** and deletes the release.

## 🔧 Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`.

```console
helm install homarr \
  --set env.TZ="America/New York" \
    oben01/homarr
```

Alternatively, a YAML file that specifies the values for the above parameters can be provided while installing the chart.

```console
helm install homarr oben01/homarr -f values.yaml
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
| env.DEFAULT_COLOR_SCHEME | string | `"dark"` | Colors and preferences, possible values dark / light |
| env.TZ | string | `"Europe/Paris"` | Your local time zone |
| fullnameOverride | string | `""` | Overrides chart's fullname |
| image.pullPolicy | string | `"IfNotPresent"` | Image pull policy |
| image.repository | string | `"ghcr.io/ajnart/homarr"` | Image repository |
| image.tag | string | `"0.14.4"` | Overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | Secrets for Docker registry |
| ingress | object | `{"annotations":{},"enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"ingressClassName":"","tls":[]}` | Ingress configuration |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | Ingress hosts configuration |
| ingress.ingressClassName | string | `""` | Ingress class name |
| ingress.tls | list | `[]` | Ingress TLS configuration |
| nameOverride | string | `""` | Overrides chart's name |
| nodeSelector | object | `{}` | Node selectors for pod scheduling |
| persistence | list | `[{"accessMode":"ReadWriteOnce","enabled":false,"mountPath":"/app/data/configs","name":"homarr-config","size":"50Mi","storageClassName":"local-path"},{"accessMode":"ReadWriteOnce","enabled":false,"mountPath":"/app/database","name":"homarr-database","size":"50Mi","storageClassName":"local-path"},{"accessMode":"ReadWriteOnce","enabled":false,"mountPath":"/app/public/icons","name":"homarr-icons","size":"50Mi","storageClassName":"local-path"}]` | Persistent storage configuration |
| persistence[0].accessMode | string | `"ReadWriteOnce"` | homarr-config access mode |
| persistence[0].enabled | bool | `false` | Enable homarr-config persistent storage |
| persistence[0].mountPath | string | `"/app/data/configs"` | homarr-config mount path inside the pod |
| persistence[0].size | string | `"50Mi"` | homarr-config storage size |
| persistence[0].storageClassName | string | `"local-path"` | homarr-config storage class name |
| persistence[1].accessMode | string | `"ReadWriteOnce"` | homarr-database access mode |
| persistence[1].enabled | bool | `false` | Enable homarr-database persistent storage |
| persistence[1].mountPath | string | `"/app/database"` | homarr-database mount path inside the pod |
| persistence[1].size | string | `"50Mi"` | homarr-database storage size |
| persistence[1].storageClassName | string | `"local-path"` | homarr-database storage class name |
| persistence[2].accessMode | string | `"ReadWriteOnce"` | homarr-icons access mode |
| persistence[2].enabled | bool | `false` | Enable homarr-icons persistent storage |
| persistence[2].mountPath | string | `"/app/public/icons"` | homarr-icons mount path inside the pod |
| persistence[2].size | string | `"50Mi"` | homarr-icons storage size |
| persistence[2].storageClassName | string | `"local-path"` | homarr-icons storage class name |
| podAnnotations | object | `{}` | Pod annotations |
| podLabels | object | `{}` | Pod labels |
| podSecurityContext | object | `{}` | Pod security context |
| replicaCount | int | `1` | Number of replicas |
| resources | object | `{}` | Resource configuration |
| securityContext | object | `{}` | Security context |
| service | object | `{"port":7575,"targetPort":7575,"type":"ClusterIP"}` | Service configuration |
| service.port | int | `7575` | Service port |
| service.targetPort | int | `7575` | Service target port |
| service.type | string | `"ClusterIP"` | Service type |
| tolerations | list | `[]` | Node tolerations for pod scheduling |

---
Autogenerated from chart metadata using [helm-docs](https://github.com/norwoodj/helm-docs)
