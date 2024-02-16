#Область ПрограммныйИнтерфейс

// Функция - Выполнить прекомпиляцию
// Функция выполняет прекомпиляцию переданного кода
// Параметры:
//  стрКодНаВыполнение	  -	Строка - Код на выполнение
// 
// Возвращаемое значение:
//  Строка - Обработанный код, готовый для выполнения
//
Функция ВыполнитьПрекомпиляцию(стрКодНаВыполнение) Экспорт
	
	стрПодготовленныйКод = стрКодНаВыполнение;
	
	//Замена вызовов функций.
	стЗаменаВызововФункций = Новый Структура;
	стЗаменаВызововФункций.Вставить("СформироватьСообщениеДляОбъекта", "сшпОбработкаСобытий.ЗарегистрироватьСобытиеДляОбъекта");
	стЗаменаВызововФункций.Вставить("СформироватьСообщениеПоКлассуИнтеграции", "сшпОбработкаСобытий.ЗарегистрироватьСобытиеДляКлассаИнтеграции");
	
	Для Каждого ТекЭлемент Из стЗаменаВызововФункций Цикл
		
		стрПодготовленныйКод = СтрЗаменить(стрПодготовленныйКод, ТекЭлемент.Ключ, ТекЭлемент.Значение);
		
	КонецЦикла;
	
	Возврат стрПодготовленныйКод;
	
КонецФункции

#КонецОбласти