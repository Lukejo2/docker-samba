FROM alpine:latest
RUN apk --no-cache add samba
RUN mkdir -p /shared
COPY smb.conf /etc/samba/smb.conf
COPY entrypoint.sh entrypoint.sh

VOLUME [ "/shared" ]
EXPOSE 137/udp 138/udp 139 445
HEALTHCHECK --interval=60s --timeout=15s \
            CMD smbclient -L \\localhost -U % -m SMB3
ENTRYPOINT ["/bin/sh", "entrypoint.sh"]
