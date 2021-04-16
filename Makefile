default: test

RELEASE := helm-es-minikube
TIMEOUT := 1200s

install:
	helm upgrade --wait --timeout=$(TIMEOUT) --install --values values.yaml $(RELEASE) ../../

test: install
	helm test $(RELEASE)

purge:
	helm del $(RELEASE)
