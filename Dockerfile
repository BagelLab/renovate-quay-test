FROM quay.io/rfcurated/istio/proxyv2:1.21.6-jammy-fips-rfcurated-rfhardened AS one

FROM quay.io/rfcurated/istio/pilot:1.22.7-jammy-fips-rfcurated AS two

FROM quay.io/rfcurated/prometheus:3.3.1-jammy-fips-rfcurated-rfhardened AS three

FROM docker.io/busybox:1.0.0 AS four

FROM ghcr.io/mjnagel/uds-identity-config:0.2.0-dev AS five
