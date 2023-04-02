echo Генерация ключа
echo Введите название для ключа
read key_name
openssl genpkey -algorithm RSA -out private_$key_name.key -pkeyopt rsa_keygen_bits:8192
echo Создание приватного ключа завершено
echo Извлечение публичного ключа
openssl rsa -in private_$key_name.key -pubout -out public_$key_name.key
echo Создание ключей завершено, ключи private_$key_name.key и public_$key_name.key созданы.
