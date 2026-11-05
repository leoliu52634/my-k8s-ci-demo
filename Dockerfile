# 1. 指定使用官方的 Node.js 輕量版環境
FROM node:18-alpine

# 2. 在容器裡面建立一個工作目錄叫 /app
WORKDIR /app

# 3. 先複製套件清單並安裝依賴
COPY package*.json ./
RUN npm install

# 4. 把你寫好的程式碼全部複製到容器裡
COPY . .

# 5. 開放容器的 3000 通訊埠
EXPOSE 3000

# 6. 當容器啟動時，執行 node app.js
CMD ["node", "app.js"]