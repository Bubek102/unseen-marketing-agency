# Unseen Marketing Agency 🚀
Automatyczna agencja marketingowa dla **Unseen** ([unseen.com.pl](https://unseen.com.pl)).

## Misja
Wdrażanie rozwiązań AI i automatyzacji dla małych i średnich przedsiębiorstw (MŚP) w przystępnych cenach.
Systemy dostosowane do konkretnych potrzeb biznesu:
- Wprowadzanie zamówień ze zdjęć (OCR / Multimodal)
- Skanowanie wizytówek i natychmiastowe tworzenie kontaktów CRM
- Voiceboty: automatyczne odbieranie i wykonywanie połączeń
- Inteligentna asysta e-mail: tłumaczenia jednym kliknięciem, proponowanie odpowiedzi
- Chatboty, szybkie strony WWW, kalkulatory dedykowane branżom

## Architektura Systemu Agencji
1. **Kreacja & Strategia** (`content/`):
   - Baza scenariuszy do Reels / TikTok / YouTube Shorts
   - Haki uwagowe (Hook -> Problem -> Mechanizm -> Call to Action)
2. **Baza Danych & Pipeline** (`database/`):
   - Modele danych postów, metryk, wariantów treści
3. **Automatyzacja & Publikacja** (`integrations/`):
   - Composio + Wavespeed pod kątem generowania i dystrybucji wideo
4. **Załoga Agentów** (`agents/`):
   - Strateg, Researcher, Scriptwriter, Database Engineer, Auditor/Weryfikator
