# Menggunakan Node.js sebagai base image
FROM node:14.21.3

# Menentukan direktori kerja di dalam kontainer
WORKDIR /app

# Menyalin seluruh kode proyek Anda ke dalam kontainer
COPY . .

# Menginstall dependensi yang dibutuhkan
RUN npm install

# deklarasi environtment yang dibutuhkan
ENV PORT=3000

# expose port 3000
EXPOSE 3000

# Menjalankan perintah untuk memulai aplikasi Express.js
CMD ["npm", "start"]