FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
RUN sudo apt-get update \
    && sudo apt-get install libgtest-dev -y
RUN sudo apt-get install cmake # install cmake
RUN cd /usr/src/gtest
RUN sudo cmake CMakeLists.txt
RUN sudo make
 
# copy or symlink libgtest.a and libgtest_main.a to your /usr/lib folder
RUN sudo cp *.a /usr/lib