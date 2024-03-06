# This is a multi-staged containerfile 

# Stage 1: Builder 
FROM alpine AS builder
COPY data.txt .

# Stage 2: Final 
FROM fedora AS final 
COPY --from=builder /data.txt /data.txt
