FROM kicad/kicad:9.0

USER root
# The KiCad image by default sets up library tables in /home/kicad
# but we have to use the root user due to limitations set by GitHub actions
RUN cp -r /home/kicad/.config/kicad "$HOME/.config/"

COPY test-drc.sh /test-drc.sh
ENTRYPOINT [ "/test-drc.sh" ]
