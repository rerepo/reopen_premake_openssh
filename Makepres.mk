LOCAL_PATH := $(call my-dir)

###################### openssh ######################
include $(CLEAR_VARS)

LOCAL_MODULE := openssh

LOCAL_PREMAKE_CONFIG_CMD := if [ ! -f $(LOCAL_PATH)/Makefile ]; then cd $(LOCAL_PATH); ./configure --prefix=$(TOPPREFIX)/premake/install --with-zlib=$(TOPPREFIX)/premake/zlib --with-ssl-dir=$(TOPPREFIX)/premake/openssl --without-openssl-header-check --disable-etc-default-login; fi

LOCAL_PREMAKE_MAKE_CMD := -C $(LOCAL_PATH)

LOCAL_PREMAKE_MAKE_CLEAN_CMD := -C $(LOCAL_PATH) distclean

LOCAL_PREMAKE_DEPEND_MODULE := libz openssl

include $(BUILD_SYSTEM)/premake.mk
