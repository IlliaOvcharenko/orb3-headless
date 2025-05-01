INSTALL_PARENT_FOLDER=$1
# INSTALL_PARENT_FOLDER="~/codebase/build-dist-orb3"
cd build && \
cmake --install . --prefix ${INSTALL_PARENT_FOLDER}/orb3-headless-arm64 && \
find ${INSTALL_PARENT_FOLDER}/orb3-headless-arm64/include/ -depth -type d -empty -delete && \
cd ${INSTALL_PARENT_FOLDER} && \
zip -r orb3-headless-arm64.zip orb3-headless-arm64/
