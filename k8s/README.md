# tools
小工具存放地

# resources.sh 
获取当前k8s集群所支持的资源及子资源对应的权限 

先执行 kubectl proxy --port=8080

sh resources.sh 
```
core bindings: create
core componentstatuses: get list
core configmaps: create delete deletecollection get list patch update watch
core endpoints: create delete deletecollection get list patch update watch
core events: create delete deletecollection get list patch update watch
core limitranges: create delete deletecollection get list patch update watch
core namespaces: create delete get list patch update watch
core namespaces/finalize: update
core namespaces/status: get patch update
core nodes: create delete deletecollection get list patch update watch
core nodes/proxy: create delete get patch update
core nodes/status: get patch update
core persistentvolumeclaims: create delete deletecollection get list patch update watch
core persistentvolumeclaims/status: get patch update
core persistentvolumes: create delete deletecollection get list patch update watch
core persistentvolumes/status: get patch update
core pods: create delete deletecollection get list patch update watch
core pods/attach: create get
core pods/binding: create
core pods/eviction: create
core pods/exec: create get
core pods/log: get
core pods/portforward: create get
core pods/proxy: create delete get patch update
core pods/status: get patch update
core podtemplates: create delete deletecollection get list patch update watch
core replicationcontrollers: create delete deletecollection get list patch update watch
core replicationcontrollers/scale: get patch update
core replicationcontrollers/status: get patch update
core resourcequotas: create delete deletecollection get list patch update watch
core resourcequotas/status: get patch update
core secrets: create delete deletecollection get list patch update watch
core serviceaccounts: create delete deletecollection get list patch update watch
core services: create delete get list patch update watch
core services/proxy: create delete get patch update
core services/status: get patch update
apiregistration.k8s.io apiservices: create delete deletecollection get list patch update watch
apiregistration.k8s.io apiservices/status: get patch update
extensions ingresses: create delete deletecollection get list patch update watch
extensions ingresses/status: get patch update
apps controllerrevisions: create delete deletecollection get list patch update watch
apps daemonsets: create delete deletecollection get list patch update watch
apps daemonsets/status: get patch update
apps deployments: create delete deletecollection get list patch update watch
apps deployments/scale: get patch update
apps deployments/status: get patch update
apps replicasets: create delete deletecollection get list patch update watch
apps replicasets/scale: get patch update
apps replicasets/status: get patch update
apps statefulsets: create delete deletecollection get list patch update watch
apps statefulsets/scale: get patch update
apps statefulsets/status: get patch update
events.k8s.io events: create delete deletecollection get list patch update watch
authentication.k8s.io tokenreviews: create
authorization.k8s.io localsubjectaccessreviews: create
authorization.k8s.io selfsubjectaccessreviews: create
authorization.k8s.io selfsubjectrulesreviews: create
authorization.k8s.io subjectaccessreviews: create
autoscaling horizontalpodautoscalers: create delete deletecollection get list patch update watch
autoscaling horizontalpodautoscalers/status: get patch update
batch jobs: create delete deletecollection get list patch update watch
batch jobs/status: get patch update
certificates.k8s.io certificatesigningrequests: create delete deletecollection get list patch update watch
certificates.k8s.io certificatesigningrequests/approval: update
certificates.k8s.io certificatesigningrequests/status: get patch update
networking.k8s.io networkpolicies: create delete deletecollection get list patch update watch
policy poddisruptionbudgets: create delete deletecollection get list patch update watch
policy poddisruptionbudgets/status: get patch update
policy podsecuritypolicies: create delete deletecollection get list patch update watch
rbac.authorization.k8s.io clusterrolebindings: create delete deletecollection get list patch update watch
rbac.authorization.k8s.io clusterroles: create delete deletecollection get list patch update watch
rbac.authorization.k8s.io rolebindings: create delete deletecollection get list patch update watch
rbac.authorization.k8s.io roles: create delete deletecollection get list patch update watch
storage.k8s.io csinodes: create delete deletecollection get list patch update watch
storage.k8s.io storageclasses: create delete deletecollection get list patch update watch
storage.k8s.io volumeattachments: create delete deletecollection get list patch update watch
storage.k8s.io volumeattachments/status: get patch update
admissionregistration.k8s.io mutatingwebhookconfigurations: create delete deletecollection get list patch update watch
admissionregistration.k8s.io validatingwebhookconfigurations: create delete deletecollection get list patch update watch
apiextensions.k8s.io customresourcedefinitions: create delete deletecollection get list patch update watch
apiextensions.k8s.io customresourcedefinitions/status: get patch update
scheduling.k8s.io priorityclasses: create delete deletecollection get list patch update watch
coordination.k8s.io leases: create delete deletecollection get list patch update watch
node.k8s.io runtimeclasses: create delete deletecollection get list patch update watch
discovery.k8s.io endpointslices: create delete deletecollection get list patch update watch
metrics.k8s.io nodes: get list
metrics.k8s.io pods: get list



```
