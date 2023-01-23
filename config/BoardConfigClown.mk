include vendor/clown/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/clown/config/BoardConfigQcom.mk
endif

include vendor/clown/config/BoardConfigSoong.mk
