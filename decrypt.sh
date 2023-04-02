#Расшифровка файла
echo Расшифровка файлов
echo Введите имя ПРИВАТНОГО ключа:
read private_key
echo Введите имя файла, который необходимо расшифровать:
read file_name
openssl pkeyutl -decrypt -inkey $private_key -in $file_name -out decrypted_$file_name
echo Операция расшифровки успешно завершена, файл decrypted_$file_name успешно создан.
