#!/usr/bin/env bash

function mason_build {
    ${MASON_DIR}/mason install llvm ${MASON_VERSION}
    CLANG_PREFIX=$(${MASON_DIR}/mason prefix llvm ${MASON_VERSION})
    # copy bin
    mkdir -p "${MASON_PREFIX}/bin"
    cp -a "${CLANG_PREFIX}/bin/${MASON_NAME}" "${MASON_PREFIX}/bin/"
    cp -a "${CLANG_PREFIX}/bin/iwyu_tool.py" "${MASON_PREFIX}/bin/"

    # copy share
    mkdir -p "${MASON_PREFIX}/share"
    cp -r "${CLANG_PREFIX}/share/${MASON_NAME}" "${MASON_PREFIX}/share/"

}

function mason_cflags {
    :
}

function mason_ldflags {
    :
}

function mason_static_libs {
    :
}