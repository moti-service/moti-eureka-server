## 🧩 MSA Service

### 🔧 사용 방법
- 모든 마이크로서비스는 **Eureka 서버 (포트 8761)** 를 통해 등록 및 연결됩니다.
- 브라우저에서 `http://localhost:8761` 접속 시, 등록된 서비스 목록을 확인할 수 있습니다.

### 📌 연결된 프로젝트 목록

#### 🚪 moti-gateway-service
- **Gateway 서비스**
- 각 마이크로서비스로 트래픽을 라우팅하는 진입점 역할
- 기본 포트: `80`

#### 🔐 moti-auth-service
- **인증 및 로그인 관련 마이크로서비스**
- OAuth2 기반 로그인 처리
- JWT 발급 및 Redis 기반 Refresh Token 관리
- gateway service를 통해 /auth-service/login형식으로 연결처리
  - localhost/auth-service/login

```shell
docker build -t koboolean/moti-eureka-server .

docker network create moti

cd docker

docker compose up -d
```

