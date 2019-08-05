# Use an official Python runtime as a parent image
# 设置基础镜像
FROM python:2.7-slim

# Set the working directory to /app test
# 设置工作目录（容器）
WORKDIR /app

# Copy the current directory contents into the container at /app
# 将代码文件复制到容器工作目录
ADD . /app

# Install any needed packages specified in requirements.txt
# 安装python相关依赖文件，可以指定镜像源
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
# 容器暴露端口
EXPOSE 80

# Define environment variable
# 定义容器内环境变量
ENV NAME World

# Run app.py when the container launches
# 执行入口文件
CMD ["python", "run.py"]

