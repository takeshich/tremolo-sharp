
ANDROID_NDK_HOME = ~/android-ndk-r17b
ANDROID_ABIS = armeabi-v7a arm64-v8a x86 x86_64

all:
	for abi in $(ANDROID_ABIS); do \
		mkdir -p build/$$abi ; \
		cd build/$$abi ; \
		cmake -DCMAKE_TOOLCHAIN_FILE=$(ANDROID_NDK_HOME)/build/cmake/android.toolchain.cmake -DANDROID_NDK=$(ANDROID_NDK_HOME) -DCMAKE_BUILD_TYPE=Debug -DANDROID_ABI=$$abi ../../ ; \
		make ; \
		cd ../.. ; \
	done

clean:
	for abi in $(ANDROID_ABIS); do \
		cd build/$$abi ; \
		make clean ; \
		cd ../.. ; \
		rm -rf build/$$abi ; \
	done

