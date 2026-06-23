# ExempelBrand Design Guide

Denne guide dokumenterer den komplette visuelle identitet for **ExempelBrand** — en fiktiv konsulentvirksomhed der bruges som demonstrationsinstans for dette designguide-workflow.

Guiden viser præcist hvad en **udfyldt** designguide ser ud. Alle sektioner indeholder konkrete værdier, eksempler og kode — ikke placeholders.

## Om ExempelBrand

ExempelBrand er en strategisk rådgivningsvirksomhed med en professionel, varm og direkte identitet. Paletten er navy, off-white og guld/kobber. Typografien er Playfair Display til overskrifter og Inter til brødtekst.

> "Klarhed er ikke et luksusprodukt. Det er en kompetence."

## Sådan er guiden struktureret

Guiden er opdelt i 10 sektioner (00–09), der tilsammen danner et komplet designsystem:

| Sektion | Indhold | Status |
|---|---|---|
| 0. Brandessens | Vision, mission, værdier og brandpersonlighed | Udfyldt |
| 1. Logo | Logoversioner, clearzone og brug/misbrug | Udfyldt |
| 2. Farver | Navy, off-white, guld/kobber — primær-, sekundær- og neutralpalette | Udfyldt |
| 3. Typografi | Playfair Display + Inter, hierarki og skala | Udfyldt |
| 4. Spacing og layout | 8px-baseret skala, 12-kolonnegrid, breakpoints | Udfyldt |
| 5. Ikonografi | Lucide outline, størrelser og anvendelsesregler | Udfyldt |
| 6. Billeder og illustration | Varm fotostil, line illustrations i navy og guld | Udfyldt |
| 7. Tone of voice | Stemme, sproglige regler og kanalspecifik tone | Udfyldt |
| 8. Design tokens | Komplet token-sæt i JSON og CSS custom properties | Udfyldt |
| 9. Komponenter | Knapper, formularer og kort til digitalt klientportal | Udfyldt |

## Design tokens

Alle tokens er tilgængelige i [`docs/assets/tokens.json`](assets/tokens.json) i Style Dictionary-format.

CSS custom properties genereret fra tokens indsættes i `docs/assets/extra.css` og er tilgængelige på tværs af alle sider i guiden.

## Vigtig note om sektion 9

> **Note:** Sektion 9 (Komponenter) er udelukkende relevant for projekter med et digitalt produkt eller en UI-tjeneste. ExempelBrand har et klientportal, så sektionen er udfyldt. For brands uden digital brugerflade kan sektionen springes over.

## Kom i gang

Start fra **0. Brandessens** og arbejd dig nedad. Sektion 8 (Design tokens) er fundamentet for al kodeimplementering — ved ændringer i brand-værdier er det den første fil der opdateres.
