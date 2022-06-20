# goldilocks-deploy
Helm deployment of Fairwinds Goldilocks project

Example values file for VPA with prometheus (VPA recommend only) and Goldilocks with ingress (nginx) and TLS (via cert-manager, not included)

## Assumptions
* Prometheus is already installed in a `monitoring` namespace
* cert-manager is installed to handle HTTPS

## VPA

Confirm values files are accurate for your desired setup and run `make vpa`

## Goldilocks

Confirm values files are accurate for your desired setup and run `make goldilocks`
