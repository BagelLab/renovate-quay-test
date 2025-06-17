FROM quay.io/rfcurated/istio/proxyv2:1.21.6-jammy-fips-rfcurated-rfhardened AS one

FROM quay.io/rfcurated/istio/pilot:1.22.7-focal-fips-rfcurated AS two

FROM quay.io/rfcurated/prometheus:3.3.1-jammy-fips-rfcurated-rfhardened AS three

FROM docker.io/busybox:1.37.0@sha256:f85340bf132ae937d2c2a763b8335c9bab35d6e8293f70f606b9c6178d84f42b AS four

FROM ghcr.io/mjnagel/uds-identity-config:0.2.0-dev AS five
