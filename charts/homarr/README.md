# Homarr

<img src="https://homarr.dev/img/logo.svg" align="right" width="92" alt="homarr logo">

![Version: 0.1.1](https://img.shields.io/badge/Version-0.1.1-informational?style=flat)
![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat)
![AppVersion: 0.14.2](https://img.shields.io/badge/AppVersion-0.14.2-informational?style=flat)

A Helm chart to deploy homarr for Kubernetes

**This chart is not maintained by the upstream project and any issues with the chart should be raised
[here](https://github.com/oben01/charts/issues/new?assignees=oben01&labels=bug&template=bug_report.yaml&name=homarr&version=0.1.1)**

## Requirements

## Dependencies

This chart has no dependencies.

## Installing the Chart

To install the chart with the release name `homarr`

### OCI (Recommended)

```console
helm install homarr oci://ghcr.io/oben01/charts/homarr
```

### Traditional

```console
helm repo add oben01 https://charts.oben01.com
helm repo update
helm install homarr oben01/homarr
```

## Uninstalling the Chart

To uninstall the `homarr` deployment

```console
helm uninstall homarr
```

The command removes all the Kubernetes components associated with the chart **including persistent volumes** and deletes the release.

## Configuration

Read through the [values.yaml](./values.yaml) file. It has several commented out suggested values.
Other values may be used from the [values.yaml](https://github.com/bjw-s/helm-charts/tree/a081de5/charts/library/common/values.yaml) from the [bjw-s common library](https://github.com/bjw-s/helm-charts/tree/a081de5/charts/library/common).

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

## Custom configuration

N/A

## Values

**Important**: When deploying an application Helm chart you can add more values from the bjw-s common library chart [here](https://github.com/bjw-s/helm-charts/tree/a081de5/charts/library/common)

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
| image.tag | string | `"latest"` | Overrides the image tag whose default is the chart appVersion |
| imagePullSecrets | list | `[]` | Secrets for Docker registry |
| ingress | object | `{"annotations":{},"enabled":false,"hosts":[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}],"ingressClassName":"","tls":[]}` | Ingress configuration |
| ingress.annotations | object | `{}` | Ingress annotations |
| ingress.enabled | bool | `false` | Enable ingress |
| ingress.hosts | list | `[{"host":"chart-example.local","paths":[{"path":"/","pathType":"ImplementationSpecific"}]}]` | Ingress hosts configuration |
| ingress.ingressClassName | string | `""` | Ingress class name |
| ingress.tls | list | `[]` | Ingress TLS configuration |
| nameOverride | string | `""` | Overrides chart's name |
| nodeSelector | object | `{}` | Node selectors for pod scheduling |
| persistence | list | `[{"accessMode":"ReadWriteOnce","enabled":true,"mountPath":"/app/data/configs","name":"homarr-config","size":"50Mi","storageClassName":"local-path"},{"accessMode":"ReadWriteOnce","enabled":true,"mountPath":"/app/database","name":"homarr-database","size":"50Mi","storageClassName":"local-path"},{"accessMode":"ReadWriteOnce","enabled":true,"mountPath":"/app/public/icons","name":"homarr-icons","size":"50Mi","storageClassName":"local-path"}]` | Persistent storage configuration |
| persistence[0].accessMode | string | `"ReadWriteOnce"` | Access mode |
| persistence[0].enabled | bool | `true` | Enable this persistent storage |
| persistence[0].mountPath | string | `"/app/data/configs"` | Mount path inside the pod |
| persistence[0].size | string | `"50Mi"` | Storage size |
| persistence[0].storageClassName | string | `"local-path"` | Storage class name |
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
