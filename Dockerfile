FROM quay.io/rfcurated/istio/proxyv2:1.21.6-jammy-fips-rfcurated-rfhardened AS one

FROM quay.io/rfcurated/istio/pilot:1.22.7-focal-fips-rfcurated AS two

FROM quay.io/rfcurated/prometheus:3.3.1-jammy-fips-rfcurated-rfhardened AS three

FROM docker.io/busybox:1.0.0 AS four

FROM ghcr.io/mjnagel/uds-identity-config:0.3.0-dev@sha256:e8ba20075f74040e7c81d5655e096ba9202c16800448b247813d0bd64aa87534 AS five
