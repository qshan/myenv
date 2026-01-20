
#Solution, Doxygen + Graphviz
##install doxygen tools for ubuntu 22 server
sudo apt install doxygen graphviz
sudo apt-get install flex bison

cd llama.cpp
doxygen -g Doxyfile

##update Doxyfile
EXTRACT_ALL = YES          # 提取所有函数（即使无注释）
CALL_GRAPH = YES           # 生成函数调用图（被调函数→当前函数）
CALLER_GRAPH = YES         # 生成被调用图（当前函数→被调函数）
HAVE_DOT = YES             # 启用Graphviz的dot工具
DOT_PATH = /usr/bin/dot    # Graphviz的dot可执行文件路径
RECURSIVE = YES            # 递归分析子目录
INPUT = .                  # 分析当前目录所有代码（含src/、include/）
FILE_PATTERNS = *.c *.cpp *.h  # 分析C/C++文件

##generate file
doxygen Doxyfile

ls doc html index.html
