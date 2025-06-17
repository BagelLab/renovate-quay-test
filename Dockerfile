FROM quay.io/rfcurated/istio/proxyv2:1.21.6-jammy-fips-rfcurated-rfhardened@sha256:7889510af58232f03dcea0f1929525b6910aebf4a9c02286c1f991841da607f9 AS one

FROM quay.io/rfcurated/istio/pilot:1.22.7-jammy-fips-rfcurated@sha256:5bbfe244228361a35fa4d3da34c39eb7713bdc74a943c2bce00d375987bc80b6 AS two

FROM quay.io/rfcurated/prometheus:3.3.1-jammy-fips-rfcurated-rfhardened@sha256:acfde71912f26c657c0adf82e8f6e8897f1c48344b485ee0253f139a9304ea4c AS three

FROM docker.io/busybox:1.0.0 AS four

FROM ghcr.io/mjnagel/uds-identity-config:0.2.0-dev AS five
