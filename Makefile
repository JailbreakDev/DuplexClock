export ARCHS = armv7 arm64

include theos/makefiles/common.mk

TWEAK_NAME = DuplexClock
DuplexClock_FILES = Tweak.xm
DuplexClock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += duplexclocksettings
include $(THEOS_MAKE_PATH)/aggregate.mk
