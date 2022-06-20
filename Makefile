GOLDILOCKS_NAMESPACE := goldilocks

.PHONY: vpa
vpa:
	./scripts/namespace.sh ${GOLDILOCKS_NAMESPACE}
	helm repo add fairwinds-stable https://charts.fairwinds.com/stable
	helm repo update
	helm upgrade --install \
		vpa \
		fairwinds-stable/vpa \
		--version 1.4.0 \
		--values vpa/values.yaml \
		--namespace ${GOLDILOCKS_NAMESPACE}

.PHONY: goldilocks
goldilocks:
	./scripts/namespace.sh ${GOLDILOCKS_NAMESPACE}
	helm repo add fairwinds-stable https://charts.fairwinds.com/stable
	helm repo update
	helm upgrade --install \
		goldilocks \
		fairwinds-stable/goldilocks \
		--version 6.1.2 \
		--values goldilocks/values.yaml \
		--namespace ${GOLDILOCKS_NAMESPACE}