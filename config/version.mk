# Copyright (C) 2016 The Pure Nexus Project
# Copyright (C) 2016 The JDCTeam
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

CLOWN_MOD_VERSION := Pennywise
CLOWN_ANDROID = 14.0.1
CLOWN_BUILD_TYPE := UNOFFICIAL
CLOWN_MAINTAINER ?= UNKNOWN

CLOWN_DATE_YEAR := $(shell date -u +%Y)
CLOWN_DATE_MONTH := $(shell date -u +%m)
CLOWN_DATE_DAY := $(shell date -u +%d)
CLOWN_DATE_HOUR := $(shell date -u +%H)
CLOWN_DATE_MINUTE := $(shell date -u +%M)
CLOWN_BUILD_DATE_UTC := $(shell date -d '$(CLOWN_DATE_YEAR)-$(CLOWN_DATE_MONTH)-$(CLOWN_DATE_DAY) $(CLOWN_DATE_HOUR):$(CLOWN_DATE_MINUTE) UTC' +%s)
CLOWN_BUILD_DATE := $(CLOWN_DATE_YEAR)$(CLOWN_DATE_MONTH)$(CLOWN_DATE_DAY)-$(CLOWN_DATE_HOUR)$(CLOWN_DATE_MINUTE)

CURRENT_DEVICE=$(shell echo "$(TARGET_PRODUCT)" | cut -d'_' -f 2,3)

ifeq ($(CLOWN_OFFICIAL), true)
   LIST = $(shell cat official/clown.devices)
    ifeq ($(filter $(CURRENT_DEVICE), $(LIST)), $(CURRENT_DEVICE))
      IS_OFFICIAL=true
      CLOWN_BUILD_TYPE := OFFICIAL

    endif
    ifneq ($(IS_OFFICIAL), true)
       CLOWN_BUILD_TYPE := UNOFFICIAL
       $(error Device is not official "$(CURRENT_DEVICE)")
    endif
endif

CLOWN_BUILD_VERSION := ClownUI-$(CLOWN_MOD_VERSION)-$(CLOWN_ANDROID)-$(CLOWN_BUILD_TYPE)-$(CURRENT_DEVICE)-$(shell date -u +%Y%m%d)
CLOWN_VERSION := ClownUI-$(CLOWN_MOD_VERSION)-$(CLOWN_ANDROID)-$(CLOWN_BUILD_TYPE)-$(CURRENT_DEVICE)-$(shell date -u +%Y%m%d)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.clown.version=$(CLOWN_MOD_VERSION) \
  ro.clown.android=$(CLOWN_ANDROID) \
  ro.clown.buildtype=$(CLOWN_BUILD_TYPE) \
  ro.clown.ziptype=$(CLOWN_BUILD_ZIP_TYPE) \
  ro.clown.build_date=$(CLOWN_BUILD_DATE) \
  ro.clown.build_date_utc=$(CLOWN_BUILD_DATE_UTC) \
  ro.aosp.revision=$(AOSP_REVISION) \
  ro.clown.maintainer=$(CLOWN_MAINTAINER)

CLOWN_DISPLAY_VERSION := $(CLOWN_MOD_VERSION)-$(CLOWN_ANDROID)-$(CLOWN_BUILD_TYPE)-$(CURRENT_DEVICE)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
  ro.clown.display.version=$(CLOWN_DISPLAY_VERSION)