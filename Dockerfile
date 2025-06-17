FROM quay.io/rfcurated/istio/proxyv2:1.26.0-jammy-fips-rfcurated-rfhardened@sha256:a9a3957cbd2ab2d76e50ba49c8998a4b8a3f4c3e6d94068af852eff1e215fb22 AS one

FROM quay.io/rfcurated/istio/pilot:1.22.7-focal-fips-rfcurated AS two

FROM quay.io/rfcurated/prometheus:3.3.1-jammy-fips-rfcurated-rfhardened AS three

FROM docker.io/busybox:1.0.0 AS four

FROM ghcr.io/mjnagel/uds-identity-config:0.2.0-dev AS five
