#coding: UTF-8
require 'telegram/bot'

TOKEN ='652258316:AAHLEGvJTLPTLOBOl54L3LJ46a7fHezs0m8'

ANSWERS = [
 #Положительные
 "Бесспорно",
 "Предрешено",
 "Сомнений быть не может",
 "Конечно да",
 "Можешь быть уверен в этом",
 #Нерешительно положительные
 "Мне кажется - да",
 "Вероятнеее всего",
 "Хорошие перспективы",
 "Знаки говорят - да",
 "Да",
 #Нейтральные
 "Пока что нет ясности, попробуй снова",
 "Спроси чуть позже",
 "Лучше не рассказывать",
 "Сейчас еще нельзая предсказать",
 "Сконцентрируйся и спроси опять",
 #Отрицательные
 "Даже не думай",
 "Мой ответ - нет",
 "Нет",
 "Перспективы не очень хорошие",
 "Весьма сомнительно"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/start', '/start start'
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "Здравствуй, #{message.from.first_name}")
		else
			bot.api.send_message(
				chat_id: message.chat.id,
				text: ANSWERS.sample)
		end
	end
end
