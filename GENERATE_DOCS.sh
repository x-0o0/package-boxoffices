# 사전 정의
OUTPUT_DIRECTORY_PATH="./docs"
TARGET_NAME="BoxOffices"
HOSTING_BASE_PATH="package-boxoffices"
BUILD_PATH="./tmp"
DOCCARCHIVE_PATH="${BUILD_PATH}/Build/Products/Debug-iphoneos/BoxOffices.doccarchive"

#swift package --allow-writing-to-directory ${OUTPUT_DIRECTORY_PATH} \
#    generate-documentation --target ${TARGET_NAME} --disable-indexing \
#    --output-path ${OUTPUT_DIRECTORY_PATH} \
#    --transform-for-static-hosting \
#    --hosting-base-path ${HOSTING_BASE_PATH}

xcodebuild docbuild \
    -scheme ${TARGET_NAME} \
    -destination 'generic/platform=iOS' \
    -derivedDataPath ${BUILD_PATH}
    
$(xcrun --find docc) process-archive \
    transform-for-static-hosting ${DOCCARCHIVE_PATH} \
    --hosting-base-path ${HOSTING_BASE_PATH} \
    --output-path ${OUTPUT_DIRECTORY_PATH}
