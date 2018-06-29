#include <android/log.h>

#define ALOGE(...) ((void)__android_log_write(ANDROID_LOG_ERROR, "tremolo", __VA_ARGS__))


