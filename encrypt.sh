#Шифрование файлов
echo Шифрование файла
echo Введите имя ПУБЛИЧНОГО ключа:
read public_key
echo Введите имя файла который необходимо зашифровать:
read file_name
openssl pkeyutl -encrypt -pubin -inkey $public_key -in $file_name -out encrypted_$file_name
echo Операция шифрования успешно завершена, шифрованный файл encypted_$file_name создан.
