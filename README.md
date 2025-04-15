# 🚀 ShareLaTeX 中文增强版

基于 sharelatex/sharelatex 官方 Docker 镜像二次开发，新增首页定制、项目管理、中文翻译等功能，让 LaTeX 协作更高效！

## 📄 项目特点

- ✅ 完整保留 ShareLaTeX 原有功能
- 🇨🇳 增强中文支持和本地化界面
- 📊 优化项目管理和协作流程
- 🎨 定制化首页和用户体验

## 📁 文件说明

- `docker-compose.yml`: 启动配置文件，需要修改 image 内容和相关设置（如 email、banner 等）
- `Dockerfile`: 构建文件，基于 sharelatex/sharelatex 镜像，完整安装 TeXLive 2025 和 Windows 字体。**您可以基于这个文件构建您自己的镜像**。

## 📦 镜像列表

### docker hub （国外）

| 镜像名称               | 版本     | 描述                 |
| ---------------------- | -------- | -------------------- |
| fred1653/sharelatex-full | 0.1.2  | TeXLive 2025 版本， node v 20 版本 |
| fred1653/sharelatex-full | 0.1.1  | TeXLive 2020 版本， node v 18 版本 |

使用方法:

```bash
docker login --username=Username

docker pull fred1653/sharelatex-full:0.1.2
```

### Tencent Cloud (国内)

| 镜像名称               | 版本     | 描述                 |
| ---------------------- | -------- | -------------------- |
| fred1653/sharelatex-full | 0.1.2  | TeXLive 2025 版本， node v 20 版本 |
| fred1653/sharelatex-full | 0.1.1  | TeXLive 2020 版本， node v 18 版本 |

使用方法:

```bash
docker login ccr.ccs.tencentyun.com --username=YOUR_ID

docker pull ccr.ccs.tencentyun.com/overleaf/sharelatex-full:[tag]
```

## 🔧 使用方法

### 1️⃣ 安装 Docker 和 Docker Compose

```bash
sudo snap install docker --classic
```

或者参考docker官方文档：官方文档：URL_ADDRESS.docker.com/engine/install/ubuntu/

### 2️⃣ 制定自己的镜像

根据需求修改 Dockerfile，然后构建自定义镜像。

### 3️⃣ 启动服务

修改 docker-compose.yml 中的环境变量（email、banner 等），然后启动服务：

```bash
docker-compose up -d
```

或者使用修改后的[toolkit](https://github.com/overleaf/toolkit)启动并管理项目，toolkit的配置需要在toolkit/lib/config-seed/variables.env中修改。

### 4️⃣ 访问系统

- 🔑 管理员注册：http://{ip}:{port}/launchpad

- 🚪 用户登录：http://{ip}:{port}/login

## 🚧 WIP

基于 web 包进行优化开发，敬请期待更多功能！

## 🤝 贡献指南

欢迎提交 Issue 或 Pull Request 来帮助改进项目。
