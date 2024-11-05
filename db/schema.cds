namespace sap.support.bot;
using { managed } from '@sap/cds/common';

/**
 * Таблица ответов
 */
entity Answers : managed {
  key ID : UUID;            // Уникальный идентификатор ответа
  answer   : String;          // Текст ответа
}

/**
 * Таблица вопросов
 */
entity Questions : managed {
  key ID    : UUID;           // Уникальный идентификатор вопроса
  answer        : Association to Answers;   // Ссылка на ответ
  question      : String;         // Текст вопроса
  questionVector: String;    // Векторное представление вопроса, вычисляемое автоматически
}
