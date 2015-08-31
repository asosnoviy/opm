﻿
Перем УстановленныеПакеты;

Функция ПакетУстановлен(Знач ИмяПакета) Экспорт

	Возврат УстановленныеПакеты[ИмяПакета] <> Неопределено;

КонецФункции

Процедура Инициализация()
	
	КаталогБиблиотек = ПолучитьЗначениеСистемнойНастройки("lib.system");
	УстановленныеПакеты = Новый Соответствие;
	
	НайденныеФайлы = НайтиФайлы(КаталогБиблиотек, ПолучитьМаскуВсеФайлы());
	Для Каждого ФайлКаталога Из НайденныеФайлы Цикл
		Если ФайлКаталога.ЭтоКаталог() Тогда
			ДобавитьУстановленныйПакет(ФайлКаталога);
		КонецЕсли;
	КонецЦикла;
	
КонецПроцедуры

Процедура ДобавитьУстановленныйПакет(Знач ФайлКаталога)
	
	// TODO - здесь какое-то мета-описание нужно вместо Истины
	УстановленныеПакеты.Вставить(ФайлКаталога.Имя, Истина);
	
КонецПроцедуры

Инициализация();