# Copyright (C) 2017 Unlegacy-Android
# Copyright (C) 2017 The LineageOS Project
# Copyright (C) 2017-2018 AOSiP
# Copyright (C) 2019 AOSDP
# Copyright (C) 2020-2021 Fluid
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# proton OTA update package

PROTON_TARGET_PACKAGE := $(PRODUCT_OUT)/Proton-$(PROTON_VERSION).zip
SHA256 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/sha256sum

ifneq ($(IS_CIENV),true)
  CL_RED="\033[31m"
  CL_GRN="\033[32m"  
  CL_YLW="\033[33m"
endif

.PHONY: proton otapackage bacon
otapackage: $(INTERNAL_OTA_PACKAGE_TARGET)
proton: otapackage
	$(hide) ln -f $(INTERNAL_OTA_PACKAGE_TARGET) $(PROTON_TARGET_PACKAGE)
	$(hide) $(SHA256) $(PROTON_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(PROTON_TARGET_PACKAGE).sha256sum
	@echo -e ""
	@echo -e "${cya}Building ${bldcya}Proton! ${txtrst}";
	@echo -e ""
	@echo -e ${CL_YLW}"                                                                     "
	@echo -e ${CL_YLW}"                                                                     "
	@echo -e ${CL_YLW}"                                     ,,                              "                     
	@echo -e ${CL_YLW}"                                   ,,,                               "
	@echo -e ${CL_YLW}"                                 ,,,,.                               "
	@echo -e ${CL_YLW}"                               ,,,,,,                                "
	@echo -e ${CL_YLW}"                             ,,,,,,,                                 "
	@echo -e ${CL_YLW}"                           ,,,,,,,,                                  "
	@echo -e ${CL_YLW}"                         ,,,,,,,,,,                                  "
	@echo -e ${CL_YLW}"                      ,,,,,,,,,,,,                                   "
	@echo -e ${CL_YLW}"                            ,,,,,,,,,,,,                             "
	@echo -e ${CL_YLW}"                           ,,,,,,,,,,,                               "
	@echo -e ${CL_YLW}"                          ,,,,,,,,,,                                 "
	@echo -e ${CL_YLW}"                          ,,,,,,,,                                   "
	@echo -e ${CL_YLW}"                         ,,,,,,,                                     "
	@echo -e ${CL_YLW}"                        ,,,,,,                                       "
	@echo -e ${CL_YLW}"                        ,,,,                                         "
	@echo -e ${CL_YLW}"                       ,,,                                           "
	@echo -e ${CL_YLW}"                      ,,                                             "
	@echo -e ${CL_GRN}"----- Happy Flashing! -----"
	@echo -e ""
	@echo -e "zip: "$(PROTON_TARGET_PACKAGE)
	@echo -e "sha256: `cat $(PROTON_TARGET_PACKAGE).sha256sum | cut -d ' ' -f 1`"
	@echo -e "size:` ls -lah $(PROTON_TARGET_PACKAGE) | cut -d ' ' -f 5`"
	@echo -e ""

bacon: proton
