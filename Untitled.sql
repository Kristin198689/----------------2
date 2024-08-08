-- Создание таблицы weather
CREATE TABLE weather (
    city VARCHAR(50),
    forecast_date DATE,
    temperature INTEGER
);

-- Вывод содержимого таблицы
SELECT 
    *
FROM
    weather;
-- Добавление данных в таблицу
INSERT INTO weather (city, forecast_date, temperature)
VALUES ('Берлин', '2023-08-29', 30);
-- Добавление дополнительных записей
INSERT INTO weather (city, forecast_date, temperature)
VALUES 
('Лондон', '2023-07-20', 22),
('Нью-Йорк', '2023-07-25', 28),
('Токио', '2023-08-15', 31);
 -- Запрос на получение содержимого таблицы
 SELECT 
    *
FROM
    weather;
  -- Изменение данных о температуре в Берлине
UPDATE weather 
SET 
    temperature = 26
WHERE
    city = 'Берлин'
        AND forecast_date = '2023-08-29'
-- Изменение названия города на "Paris" для записей с температурой выше 25 градусов
UPDATE weather 
SET 
    city = 'Paris'
WHERE
    temperature > 25;
 -- Добавление нового столбца min_temp
ALTER TABLE weather
ADD min_temp INTEGER;
 -- Установка значения min_temp в 0 для всех записей
 UPDATE weather 
SET 
    min_temp = 0;
