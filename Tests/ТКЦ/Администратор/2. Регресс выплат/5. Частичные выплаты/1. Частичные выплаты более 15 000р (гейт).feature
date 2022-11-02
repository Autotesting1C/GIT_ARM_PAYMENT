﻿#language: ru

@tree

Функционал: <1. Частичные выплаты более 15 000р (гейт)>

//Контекст:

Сценарий: Идентификация участника перед выплатой
И я подключаю TestClient "ГСЛ" логин "Администратор" пароль ""
И Я закрываю все окна клиентского приложения
	И В командном интерфейсе я выбираю 'АРМ' 'Участники'
	Тогда открылось окно 'Участники: Участники'
	И я нажимаю на кнопку с именем 'ФормаНайти'
	Тогда открылось окно 'Найти'
	И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Фамилия Имя'
	И в поле с именем 'Pattern' я ввожу текст 'Участник Для Автотестов Не Трогать Руками'
	И я нажимаю на кнопку с именем 'Find'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Участник Для Автотестов Не Трогать Руками (Участники)'
	И я перехожу к закладке с именем "ГруппаСписокДокументов"
	И я нажимаю на кнопку с именем 'СписокДокументовРедактироватьДокумент'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Участник Для Автотестов Не Трогать Руками (Участники)' в течение 20 секунд
	Тогда открылось окно 'Участники: Участники'
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Участник Для Автотестов Не Трогать Руками (Участники)'
	И я перехожу к закладке с именем "ГруппаСписокДокументов"
	И я нажимаю на кнопку с именем 'СписокДокументовПодтвердитьДокумент'
	Тогда открылось окно 'Подтверждение документа'
	И я нажимаю на кнопку с именем 'Button0'
	Тогда открылось окно 'Участник Для Автотестов Не Трогать Руками (Участники)'
	И я нажимаю на кнопку с именем 'ФормаЗакрыть'
	Тогда открылось окно 'Участники: Участники'
	И Я закрываю окно 'Участники: Участники'
	И я закрываю сеанс текущего клиента тестирования


Сценарий: Открытие клиента тестирования для выплат
И я подключаю TestClient "ТКЦ" логин "Администратор" пароль ""
И Я закрываю все окна клиентского приложения
Сценарий: <Проверяем выплату Гейтовых билетов свыше 15000, но меньше 600 000 рублей. Безналичная выплата>

//Объявление переменных
И В командном интерфейсе я выбираю 'АРМ' 'Билеты для тестирования'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я активизирую поле с именем "НомерБилета"
И я запоминаю значение текущего поля как "НомерБилетаПерем"
И в таблице "Список" я активизирую поле с именем "ЗащитныйКод"
И я запоминаю значение текущего поля как "ЗащитныйКодПерем"
И в таблице "Список" я активизирую поле с именем "НомерТелефона"
И я запоминаю значение текущего поля как "НомерТелефонаПерем"
//Завершение объявления переменных

//Начало блока "Общая часть заполнения заявки на выплату"
И В командном интерфейсе я выбираю 'АРМ' 'АРМ выплат'
Когда открылось окно 'АРМ выплат'
И из выпадающего списка с именем "Игрок" я выбираю по строке 'Участник Для Автотестов Не Трогать Руками'
И я перехожу к следующему реквизиту
Когда открылось окно 'АРМ выплат'
И я устанавливаю флаг с именем 'ПолныйКомплектДокументов'
И я перехожу к закладке с именем "БлокДанныеОБилете"
И в поле с именем 'НомерБилетаПоле' я ввожу значение переменной "НомерБилетаПерем"
И в поле с именем 'НомерТелефона' я ввожу значение переменной "НомерТелефонаПерем"
И я устанавливаю флаг с именем 'ИспользоватьНомерТелефонаДляОтправкиЧека'
Когда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыВидОплаты"
И в таблице "Билеты" я выбираю текущую строку
И в таблице "Билеты" из выпадающего списка с именем "ВыплатыВидОплаты" я выбираю точное значение 'Безналичная оплата'
И в таблице "Билеты" я завершаю редактирование строки
И в таблице "Билеты" я активизирую поле с именем "ВыплатыДействительный"
И в таблице "Билеты" я устанавливаю флаг с именем 'ВыплатыДействительный'
//Объявление переменных
И в таблице "Билеты" я активизирую поле с именем "ВыплатыИгра"
И я запоминаю значение текущего поля как "ИграПерем"
И в таблице "Билеты" я активизирую поле "Тираж/Серия билета"
И я запоминаю значение текущего поля как "ТиражПерем"
Когда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыСуммаВыигрыша"
И я запоминаю значение текущего поля как "СуммаПерем"
И в таблице "Билеты" я завершаю редактирование строки
Тогда В панели открытых я выбираю 'Билеты для тестирования'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Билеты для тестирования'
И в поле с именем 'Игра' я ввожу значение переменной "ИграПерем"
И в поле с именем 'Тираж' я ввожу значение переменной "ТиражПерем"
И в поле с именем 'СуммаВыигрыша' я ввожу значение переменной "СуммаПерем"
И я нажимаю на кнопку 'Записать и закрыть'
И я жду закрытия окна 'Билеты для тестирования *' в течение 20 секунд
И Я закрываю окно 'Билеты для тестирования'
//Завершение объявления переменных
//Конец блока "Общая часть заполнения заявки на выплату"

//Начало блока "Актуализация резидентства"
И я нажимаю на кнопку с именем 'АктуализироватьРезидентство'
Тогда открылось окно 'Актуализация резидентства'
И из выпадающего списка с именем "СтатусНалогоплательщика" я выбираю точное значение 'Резидент'
И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
И я жду закрытия окна 'Актуализация резидентства' в течение 20 секунд
//Конец блока "Актуализация резидентства"

//Начало блока "Регистрация билета"
И в таблице "Билеты" я активизирую поле с именем "ВыплатыСтатусРегистрации"
И в таблице "Билеты" я выбираю текущую строку
Тогда открылось окно 'Введите номер телефона участника'
И в поле с именем 'InputFld' я ввожу значение переменной "НомерТелефонаПерем"
И я нажимаю на кнопку с именем 'OK'
Тогда открылось окно 'Введите код выигрыша участника'
И в поле с именем 'InputFld' я ввожу значение переменной "ЗащитныйКодПерем"
И я нажимаю на кнопку с именем 'OK'
Тогда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыОрганизатор"
//Конец блока "Регистрация билета"

//Начало блока "Создание Реестра выплат"
Когда открылось окно 'АРМ выплат'
И я перехожу к закладке с именем "СтраницаВыплаты"
И я перехожу к закладке с именем "БлокВРаботе"
И в таблице "ВыплатыВРаботе" я активизирую поле с именем "ВыплатыВРаботеИгрок"
Когда открылось окно 'АРМ выплат'
И я выбираю пункт контекстного меню с именем 'ВыплатыВРаботеНайти' на элементе формы с именем "ВыплатыВРаботе"
Тогда открылось окно 'Найти'
И из выпадающего списка "&Где искать" я выбираю точное значение 'Участник'
И из выпадающего списка "&Что искать" я выбираю по строке 'Участник Для Автотестов Не Трогать Руками'
И я нажимаю на кнопку '&Найти'
Тогда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыНомерСтроки"
И в таблице "Билеты" я активизирую поле с именем "ВыплатыОрганизатор"
И я выбираю пункт контекстного меню с именем 'ВыплатыВРаботеНайти' на элементе формы с именем "ВыплатыВРаботе"
Тогда открылось окно 'Найти'
И из выпадающего списка "&Где искать" я выбираю точное значение 'Номер билета'
И в поле '&Что искать' я ввожу значение переменной 'НомерБилетаПерем'
И я нажимаю на кнопку '&Найти'
Тогда открылось окно 'АРМ выплат'
И в таблице "Билеты" я активизирую поле с именем "ВыплатыНомерСтроки"
И я выбираю пункт контекстного меню с именем 'ВыплатыВРаботеКонтекстноеМенюСоздатьГрафикВыплат' на элементе формы с именем "ВыплатыВРаботе"
Тогда открылось окно 'График выплат * от *'

//Начало блока "Частичные выплаты"
И в таблице "График" я активизирую поле с именем "ГрафикДатаВыплаты"
И в таблице "График" в поле с именем 'ГрафикДатаВыплаты' я ввожу текст '03.11.2022'
И в таблице "График" я завершаю редактирование строки
И в таблице "График" я активизирую поле с именем "ГрафикСуммаВыигрыша"
И в таблице "График" в поле с именем 'ГрафикСуммаВыигрыша' я ввожу текст '3 000,00'
И в таблице "График" я завершаю редактирование строки
И в таблице "График" я нажимаю на кнопку с именем 'ГрафикДобавить'
И в таблице "График" я нажимаю кнопку выбора у реквизита с именем "ГрафикДатаВыплаты"
И в поле с именем "ГрафикДатаВыплаты" я ввожу текущую дату
И в таблице "График" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'ФормаПровести'
Тогда открылось окно 'График выплат * от *'
И Я закрываю окно 'График выплат * от *'
Тогда открылось окно 'АРМ выплат'
//Конец блока "Частичные выплаты"

//Продолжение блока "Создание Реестра выплат (1 выплата)"
И я нажимаю на кнопку с именем 'ОбновитьСписокВыплатВРаботе'
И в таблице "ВыплатыВРаботе" я активизирую поле с именем "ВыплатыВРаботеОплатить"
И в таблице "ВыплатыВРаботе" я изменяю флаг с именем 'ВыплатыВРаботеОплатить'
И в таблице "ВыплатыВРаботе" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'СформироватьРеестрВыплат'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Реестр выплат * от *'
И в таблице "Билеты" я нажимаю на кнопку с именем 'КнопкаРассчитатьНДФЛ'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Реестр выплат * от *'
И я активизирую поле с именем "Номер"
И я запоминаю значение текущего поля как "НомерРеестраВыплатПерем"
И я запоминаю заголовок формы в переменную "РеестрПерем"
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Реестр выплат * от *' в течение 20 секунд
//Конец блока "Создание Реестра выплат (1 выплата)"

//Начало блока "Групповое изменение реквизитов в Реестре выплат (проставление отметок об оплате)"
И В командном интерфейсе я выбираю 'Администрирование' 'Обслуживание'
Тогда открылось окно 'Обслуживание'
И я разворачиваю группу с именем "ГруппаКорректировкаДанных"
И я нажимаю на кнопку с именем 'ОбработкаГрупповоеИзменениеОбъектовГрупповоеИзменениеРеквизитов'
Тогда открылось окно 'Групповое изменение реквизитов'
И из выпадающего списка с именем "ПредставлениеИзменяемыхОбъектов" я выбираю по строке 'Реестр выплат'
И я перехожу к следующему реквизиту
Тогда открылось окно 'Групповое изменение реквизитов'

И я нажимаю на гиперссылку с именем "НастройкаОтбора"
Тогда открылось окно 'Выбор элементов для изменения'
И в таблице "КомпоновщикНастроекНастройкиОтбор" я нажимаю на кнопку с именем 'КомпоновщикНастроекНастройкиОтборДобавитьЭлементОтбора'
И в таблице "КомпоновщикНастроекНастройкиОтбор" из выпадающего списка с именем "КомпоновщикНастроекНастройкиОтборЛевоеЗначение" я выбираю точное значение 'Ссылка'
И я перехожу к следующему реквизиту
И в таблице "КомпоновщикНастроекНастройкиОтбор" из выпадающего списка с именем "КомпоновщикНастроекНастройкиОтборВидСравнения" я выбираю точное значение 'Равно'
И я перехожу к следующему реквизиту
И в таблице "КомпоновщикНастроекНастройкиОтбор" я нажимаю кнопку выбора у реквизита с именем "КомпоновщикНастроекНастройкиОтборПравоеЗначение"
Тогда открылось окно 'Реестр выплат'
И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройкиДинамическогоСписка'
И в таблице "Список" я активизирую поле с именем "Номер"
И я нажимаю на кнопку с именем 'ФормаОбновить'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюВыбрать' на элементе формы с именем "Список"
Тогда открылось окно 'Выбор элементов для изменения'
И в таблице "КомпоновщикНастроекНастройкиОтбор" я завершаю редактирование строки
Когда открылось окно 'Выбор элементов для изменения'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюОбновить' на элементе формы с именем "Список"
Дано Ожидаем завершения фонового формирования отчета в течение "5" секунд
Когда открылось окно 'Выбор элементов для изменения'

И в таблице "КомпоновщикНастроекНастройкиОтбор" я нажимаю кнопку выбора у реквизита с именем "КомпоновщикНастроекНастройкиОтборПравоеЗначение"
Тогда открылось окно 'Реестр выплат'
И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройкиДинамическогоСписка'
И в таблице "Список" я активизирую поле с именем "Номер"
И я нажимаю на кнопку с именем 'ФормаОбновить'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюВыбрать' на элементе формы с именем "Список"
Тогда открылось окно 'Выбор элементов для изменения'
И в таблице "КомпоновщикНастроекНастройкиОтбор" я завершаю редактирование строки
Когда открылось окно 'Выбор элементов для изменения'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюОбновить' на элементе формы с именем "Список"
Дано Ожидаем завершения фонового формирования отчета в течение "5" секунд
И я нажимаю на кнопку с именем 'ФормаВыбратьИЗакрыть'

Тогда открылось окно 'Групповое изменение реквизитов'
И в таблице "РеквизитыОбъекта" я перехожу к строке:
	| 'Изменять' | 'Реквизит' |
	| 'Нет'      | 'Закрыт'   |
И в таблице "РеквизитыОбъекта" я активизирую поле с именем "РеквизитыОбъектаЗначение"
И в таблице "РеквизитыОбъекта" я выбираю текущую строку
И в таблице "РеквизитыОбъекта" из выпадающего списка с именем "РеквизитыОбъектаЗначение" я выбираю точное значение 'Да'
И в таблице "РеквизитыОбъекта" я завершаю редактирование строки
И в таблице "РеквизитыОбъекта" я перехожу к строке:
	| 'Изменять' | 'Реквизит'    |
	| 'Нет'      | 'Комментарий' |
И в таблице "РеквизитыОбъекта" я выбираю текущую строку
И в таблице "РеквизитыОбъекта" в поле с именем 'РеквизитыОбъектаЗначение' я ввожу текст 'Автотесты'
Когда открылось окно 'Групповое изменение реквизитов'
И в таблице "РеквизитыОбъекта" я перехожу к строке:
	| 'Изменять' | 'Реквизит' |
	| 'Нет'      | 'Дата'     |
И в таблице "РеквизитыОбъекта" я выбираю текущую строку
И в поле с именем "РеквизитыОбъектаЗначение" я ввожу текущую дату
И в таблице "РеквизитыОбъекта" я завершаю редактирование строки
Когда открылось окно 'Групповое изменение реквизитов'
И я перехожу к закладке с именем "СтраницаТабличнаяЧастьБилеты"
И в таблице "ТабличнаяЧастьБилеты" я перехожу к строке:
	| 'Изменять' | 'Реквизит'      |
	| 'Нет'      | 'Статус оплаты' |
И в таблице "ТабличнаяЧастьБилеты" я активизирую поле с именем "ТабличнаяЧастьБилетыЗначение"
И в таблице "ТабличнаяЧастьБилеты" я выбираю текущую строку
И в таблице "ТабличнаяЧастьБилеты" из выпадающего списка с именем "ТабличнаяЧастьБилетыЗначение" я выбираю точное значение 'Оплачен'
Когда открылось окно 'Групповое изменение реквизитов'
И в таблице "ТабличнаяЧастьБилеты" я перехожу к строке:
	| 'Изменять' | 'Реквизит'        |
	| 'Нет'      | 'Дата исполнения' |
И в таблице "ТабличнаяЧастьБилеты" я выбираю текущую строку
И в поле с именем "ТабличнаяЧастьБилетыЗначение" я ввожу текущую дату
И в таблице "ТабличнаяЧастьБилеты" я завершаю редактирование строки
Когда открылось окно 'Групповое изменение реквизитов'
И я нажимаю на кнопку с именем 'ФормаИзменить'
Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
И я перехожу к следующему реквизиту
И я нажимаю на кнопку с именем 'ФормаИзменить'
Тогда открылось окно 'Обслуживание'
И Я закрываю окно 'Обслуживание'
//Конец блока "Групповое изменение реквизитов в Реестре выплат (проставление отметок об оплате)"

//Начало блока "Проведение фискализации выигрыша"
И В командном интерфейсе я выбираю 'АРМ' 'Реестр выплат'
Тогда открылось окно 'Реестр выплат'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
Тогда открылось окно 'Найти'
И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Номер'
И в поле с именем 'Pattern' я ввожу значение переменной "НомерРеестраВыплатПерем"
И я нажимаю на кнопку с именем 'Find'
Тогда открылось окно 'Реестр выплат'
Когда открылось окно 'Реестр выплат'
И в таблице "Список" я активизирую поле с именем "Номер"
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Реестр выплат * от *'
И я нажимаю на кнопку с именем 'ФормаПечатьЧекаККМ'
Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
//Конец блока "Проведения фискализации выигрыша"

//Начало блока "Проверка успешности проставления идентификатора операции Ortax"
Когда открылось окно 'Реестр выплат * от *'
И В текущем окне я нажимаю кнопку командного интерфейса 'Фиксация выигрышей'
И в таблице "Список" я активизирую поле с именем "ВыигрышЗафиксирован"
И в таблице "Список" поле с именем "ВыигрышЗафиксирован" имеет значение "Да"
И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Реестр выплат * от *' в течение 20 секунд
//Конец блока "Проверка успешности проставления идентификатора операции Ortax"

//Начало блока "Создание Реестра выплат (2 выплата)"
Когда В панели открытых я выбираю 'АРМ выплат'
Тогда открылось окно 'АРМ выплат'
И я нажимаю на кнопку с именем 'ОбновитьСписокВыплатВРаботе'
И в таблице "ВыплатыВРаботе" я изменяю флаг с именем 'ВыплатыВРаботеОплатить'
И в таблице "ВыплатыВРаботе" я завершаю редактирование строки
И я нажимаю на кнопку с именем 'СформироватьРеестрВыплат'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Реестр выплат * от *'
И в таблице "Билеты" я нажимаю на кнопку с именем 'КнопкаРассчитатьНДФЛ'
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
Тогда открылось окно 'Реестр выплат * от *'
И я активизирую поле с именем "Номер"
И я запоминаю значение текущего поля как "НомерРеестраВыплатПерем"
И я запоминаю заголовок формы в переменную "РеестрПерем"
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Реестр выплат * от *' в течение 20 секунд
//Конец блока "Создание Реестра выплат (2 выплата)"

//Начало блока "Групповое изменение реквизитов в Реестре выплат (проставление отметок об оплате)"
И В командном интерфейсе я выбираю 'Администрирование' 'Обслуживание'
Тогда открылось окно 'Обслуживание'
И я разворачиваю группу с именем "ГруппаКорректировкаДанных"
И я нажимаю на кнопку с именем 'ОбработкаГрупповоеИзменениеОбъектовГрупповоеИзменениеРеквизитов'
Тогда открылось окно 'Групповое изменение реквизитов'
И из выпадающего списка с именем "ПредставлениеИзменяемыхОбъектов" я выбираю по строке 'Реестр выплат'
И я перехожу к следующему реквизиту
Тогда открылось окно 'Групповое изменение реквизитов'

И я нажимаю на гиперссылку с именем "НастройкаОтбора"
Тогда открылось окно 'Выбор элементов для изменения'
И в таблице "КомпоновщикНастроекНастройкиОтбор" я нажимаю на кнопку с именем 'КомпоновщикНастроекНастройкиОтборДобавитьЭлементОтбора'
И в таблице "КомпоновщикНастроекНастройкиОтбор" из выпадающего списка с именем "КомпоновщикНастроекНастройкиОтборЛевоеЗначение" я выбираю точное значение 'Ссылка'
И я перехожу к следующему реквизиту
И в таблице "КомпоновщикНастроекНастройкиОтбор" из выпадающего списка с именем "КомпоновщикНастроекНастройкиОтборВидСравнения" я выбираю точное значение 'Равно'
И я перехожу к следующему реквизиту
И в таблице "КомпоновщикНастроекНастройкиОтбор" я нажимаю кнопку выбора у реквизита с именем "КомпоновщикНастроекНастройкиОтборПравоеЗначение"
Тогда открылось окно 'Реестр выплат'
И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройкиДинамическогоСписка'
И в таблице "Список" я активизирую поле с именем "Номер"
И я нажимаю на кнопку с именем 'ФормаОбновить'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюВыбрать' на элементе формы с именем "Список"
Тогда открылось окно 'Выбор элементов для изменения'
И в таблице "КомпоновщикНастроекНастройкиОтбор" я завершаю редактирование строки
Когда открылось окно 'Выбор элементов для изменения'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюОбновить' на элементе формы с именем "Список"
Дано Ожидаем завершения фонового формирования отчета в течение "5" секунд
Когда открылось окно 'Выбор элементов для изменения'

И в таблице "КомпоновщикНастроекНастройкиОтбор" я нажимаю кнопку выбора у реквизита с именем "КомпоновщикНастроекНастройкиОтборПравоеЗначение"
Тогда открылось окно 'Реестр выплат'
И я нажимаю на кнопку с именем 'ФормаСтандартныеНастройкиДинамическогоСписка'
И в таблице "Список" я активизирую поле с именем "Номер"
И я нажимаю на кнопку с именем 'ФормаОбновить'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюВыбрать' на элементе формы с именем "Список"
Тогда открылось окно 'Выбор элементов для изменения'
И в таблице "КомпоновщикНастроекНастройкиОтбор" я завершаю редактирование строки
Когда открылось окно 'Выбор элементов для изменения'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюОбновить' на элементе формы с именем "Список"
Дано Ожидаем завершения фонового формирования отчета в течение "5" секунд
И я нажимаю на кнопку с именем 'ФормаВыбратьИЗакрыть'

Тогда открылось окно 'Групповое изменение реквизитов'
И в таблице "РеквизитыОбъекта" я перехожу к строке:
	| 'Изменять' | 'Реквизит' |
	| 'Нет'      | 'Закрыт'   |
И в таблице "РеквизитыОбъекта" я активизирую поле с именем "РеквизитыОбъектаЗначение"
И в таблице "РеквизитыОбъекта" я выбираю текущую строку
И в таблице "РеквизитыОбъекта" из выпадающего списка с именем "РеквизитыОбъектаЗначение" я выбираю точное значение 'Да'
И в таблице "РеквизитыОбъекта" я завершаю редактирование строки
И в таблице "РеквизитыОбъекта" я перехожу к строке:
	| 'Изменять' | 'Реквизит'    |
	| 'Нет'      | 'Комментарий' |
И в таблице "РеквизитыОбъекта" я выбираю текущую строку
И в таблице "РеквизитыОбъекта" в поле с именем 'РеквизитыОбъектаЗначение' я ввожу текст 'Автотесты'
Когда открылось окно 'Групповое изменение реквизитов'
И в таблице "РеквизитыОбъекта" я перехожу к строке:
	| 'Изменять' | 'Реквизит' |
	| 'Нет'      | 'Дата'     |
И в таблице "РеквизитыОбъекта" я выбираю текущую строку
И в поле с именем "РеквизитыОбъектаЗначение" я ввожу текущую дату
И в таблице "РеквизитыОбъекта" я завершаю редактирование строки
Когда открылось окно 'Групповое изменение реквизитов'
И я перехожу к закладке с именем "СтраницаТабличнаяЧастьБилеты"
И в таблице "ТабличнаяЧастьБилеты" я перехожу к строке:
	| 'Изменять' | 'Реквизит'      |
	| 'Нет'      | 'Статус оплаты' |
И в таблице "ТабличнаяЧастьБилеты" я активизирую поле с именем "ТабличнаяЧастьБилетыЗначение"
И в таблице "ТабличнаяЧастьБилеты" я выбираю текущую строку
И в таблице "ТабличнаяЧастьБилеты" из выпадающего списка с именем "ТабличнаяЧастьБилетыЗначение" я выбираю точное значение 'Оплачен'
Когда открылось окно 'Групповое изменение реквизитов'
И в таблице "ТабличнаяЧастьБилеты" я перехожу к строке:
	| 'Изменять' | 'Реквизит'        |
	| 'Нет'      | 'Дата исполнения' |
И в таблице "ТабличнаяЧастьБилеты" я выбираю текущую строку
И в поле с именем "ТабличнаяЧастьБилетыЗначение" я ввожу текущую дату
И в таблице "ТабличнаяЧастьБилеты" я завершаю редактирование строки
Когда открылось окно 'Групповое изменение реквизитов'
И я нажимаю на кнопку с именем 'ФормаИзменить'
Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
И я перехожу к следующему реквизиту
И я нажимаю на кнопку с именем 'ФормаИзменить'
Тогда открылось окно 'Обслуживание'
И Я закрываю окно 'Обслуживание'
//Конец блока "Групповое изменение реквизитов в Реестре выплат (проставление отметок об оплате)"

//Начало блока "Проведение фискализации выигрыша"
И В командном интерфейсе я выбираю 'АРМ' 'Реестр выплат'
Тогда открылось окно 'Реестр выплат'
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюНайти' на элементе формы с именем "Список"
Тогда открылось окно 'Найти'
И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'Номер'
И в поле с именем 'Pattern' я ввожу значение переменной "НомерРеестраВыплатПерем"
И я нажимаю на кнопку с именем 'Find'
Тогда открылось окно 'Реестр выплат'
Когда открылось окно 'Реестр выплат'
И в таблице "Список" я активизирую поле с именем "Номер"
И в таблице "Список" я выбираю текущую строку
Тогда открылось окно 'Реестр выплат * от *'
И я нажимаю на кнопку с именем 'ФормаПечатьЧекаККМ'
Дано Ожидаем завершения фонового формирования отчета в течение "10" секунд
//Конец блока "Проведения фискализации выигрыша"

//Начало блока "Проверка успешности проставления идентификатора операции Ortax"
Когда открылось окно 'Реестр выплат * от *'
И В текущем окне я нажимаю кнопку командного интерфейса 'Фиксация выигрышей'
И в таблице "Список" я активизирую поле с именем "ВыигрышЗафиксирован"
И в таблице "Список" поле с именем "ВыигрышЗафиксирован" имеет значение "Да"
И В текущем окне я нажимаю кнопку командного интерфейса 'Основное'
И я нажимаю на кнопку с именем 'ФормаПровестиИЗакрыть'
И я жду закрытия окна 'Реестр выплат * от *' в течение 20 секунд
//Конец блока "Проверка успешности проставления идентификатора операции Ortax"

//Начало блока "Удаление выплаченного билета в РС Билеты для тестирования"

И В панели открытых я выбираю 'Билеты для тестирования'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я нажимаю на кнопку с именем 'СписокНайти'
Тогда открылось окно 'Найти'
И из выпадающего списка с именем "FieldSelector" я выбираю точное значение 'ID билета'
И в поле с именем 'Pattern' я ввожу значение переменной "НомерБилетаПерем"
И я нажимаю на кнопку с именем 'Find'
Тогда открылось окно 'Билеты для тестирования'
И в таблице "Список" я активизирую поле с именем "Номер"
И я выбираю пункт контекстного меню с именем 'СписокКонтекстноеМенюУдалить' на элементе формы с именем "Список"
Тогда открылось окно '1С:Предприятие'
И я нажимаю на кнопку с именем 'Button0'
//Конец блока "Удаление выплаченного билета в РС Билеты для тестирования"

И Я закрываю все окна клиентского приложения

И я закрываю сеанс текущего клиента тестирования