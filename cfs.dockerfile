FROM cfs-base-image:latest

# Write all project files to the container
COPY cfs /cfs

# Place all work in this directory
WORKDIR /cfs

# Prepare PC-linux build 
RUN cp cfe/cmake/Makefile.sample Makefile
RUN cp -r cfe/cmake/sample_defs sample_defs
RUN sed -i 's/undef OSAL_DEBUG_PERMISSIVE_MODE/define OSAL_DEBUG_PERMISSIVE_MODE/g' sample_defs/default_osconfig.h
RUN make prep 
RUN make 
RUN make install
CMD cd build/exe/cpu1/ && ./core-cpu1