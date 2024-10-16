# Copyright (C) 2022 The ClownUI Project
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

CLOWN_TARGET_PACKAGE := $(PRODUCT_OUT)/$(CLOWN_BUILD_VERSION).zip
SHA256 := prebuilts/build-tools/path/$(HOST_OS)-x86/sha256sum

.PHONY: clown
clown: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(CLOWN_TARGET_PACKAGE)
	$(hide) $(SHA256) $(CLOWN_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(CLOWN_TARGET_PACKAGE).sha256sum
	@echo "Done"
	@echo -e "\t ==================-Package complete-======================"
	@echo -e "\t ███████████████████████████████████████████████ "
	@echo -e "\t █─▄▄▄─█▄─▄███─▄▄─█▄─█▀▀▀█─▄█▄─▀█▄─▄█▄─██─▄█▄─▄█ "
	@echo -e "\t █─███▀██─██▀█─██─██─█─█─█─███─█▄▀─███─██─███─██ "
	@echo -e "\t ▀▄▄▄▄▄▀▄▄▄▄▄▀▄▄▄▄▀▀▄▄▄▀▄▄▄▀▀▄▄▄▀▀▄▄▀▀▄▄▄▄▀▀▄▄▄▀ "
	@echo -e "\t =========================================================="
	@echo -e "\t Zip: $(CLOWN_TARGET_PACKAGE)"
	@echo -e "\t SHA256: `cat $(CLOWN_TARGET_PACKAGE).sha256sum | awk '{print $$1}' `"
	@echo -e "\t Size: `du -sh $(CLOWN_TARGET_PACKAGE) | awk '{print $$1}' `"
	@echo -e "\t =========================================================="