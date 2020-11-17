FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/

RUN sudo apt-get install libgtest-dev -y
RUN sudo apt-get install cmake -y
RUN sudo cmake /usr/src/gtest/CMakeLists.txt
RUN sudo make -C /usr/src/gtest
RUN sudo cp /usr/src/gtest/*.a /usr/lib