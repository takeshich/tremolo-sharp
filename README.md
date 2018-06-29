# tremolo-sharp

tremolo-sharp is a tremolo (native) binding for C# (which is mostly for
Xamarin.Android). The C# binding was written back in 2011 and it's back
with build script using cmake.

Starting Android N, access to system libraries are denied and tremolo was
one of those libraries. Therefore to reuse this binding, the native
libraries need to be built together. And since it is 2018 we have
EmbeddedNativeLibrary which makes embedding of those android native
libraries much easier than in 2011.

Tremolo is taken from AOSP which has its own build script (Android.bp),
so the build script is written from scratch here.
