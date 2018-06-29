cmake_minimum_required(VERSION 3.4.1)

set (tremolo_sources
	../external/tremolo/Tremolo/bitwise.c
	../external/tremolo/Tremolo/codebook.c
	../external/tremolo/Tremolo/dsp.c
	../external/tremolo/Tremolo/floor0.c
	../external/tremolo/Tremolo/floor1.c
	../external/tremolo/Tremolo/floor_lookup.c
	../external/tremolo/Tremolo/framing.c
	../external/tremolo/Tremolo/mapping0.c
	../external/tremolo/Tremolo/mdct.c
	../external/tremolo/Tremolo/misc.c
	../external/tremolo/Tremolo/res012.c
	../external/tremolo/Tremolo/treminfo.c
	../external/tremolo/Tremolo/vorbisfile.c
	)

add_library(tremolo SHARED ${tremolo_sources})

target_include_directories(tremolo PRIVATE ../external/tremolo/Tremolo include)

target_compile_options(tremolo PRIVATE -DONLY_C -D_GNU_SOURCE -funsigned-char -Wall -Wno-unused-variable)

target_link_libraries(tremolo PRIVATE log)

