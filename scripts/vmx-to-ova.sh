#!/usr/bin/env bash

set -eux


if [ ! $(which ovftool) ]; then
    echo "ovftool must be available."
    exit 1
fi

SOURCE_DIR="output-${PACKER_BUILD_NAME}"

for vmx in "${SOURCE_DIR}"/*.vmx; do
  name=$(basename "${vmx}" .vmx)
  diskname=$(grep .vmdk "${vmx}" | head -n 1 | cut -f2 -d'"')
  vmware-vdiskmanager -t 5 -r "${SOURCE_DIR}/${diskname}" "${SOURCE_DIR}/${diskname}.stream" && mv -f "${SOURCE_DIR}/${diskname}.stream" "${SOURCE_DIR}/${diskname}"
  ovftool "${vmx}" "${SOURCE_DIR}/${name}.ova" || exit 1
done

#rm "${SOURCE_DIR}"/*.{vmdk,vmx,vmxf,vmsd,nvram}
