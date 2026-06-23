# 5. Ikonografi

## Ikonstil

**Princip** — Alle ikoner følger ét konsekvent visuelt bibliotek og blandes aldrig med ikoner fra andre biblioteker.

**Begrundelse** — Ikonmix er en af de mest almindelige årsager til visuel inkonsistens — et enkelt bibliotek sikrer ensartet streg, størrelse og optisk vægt.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Bibliotek | [Indsæt: fx Lucide, Feather, Material Symbols] |
| Stil | Outline / Filled / Duotone |
| Standardstørrelse | 24px |
| Stregtykkelse | [Indsæt: fx 1.5px] |
| Farve | Arves fra `--color-neutral` eller konteksttekstfarve |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--icon-size-sm: 16px;
--icon-size-md: 24px;
--icon-size-lg: 32px;
--icon-color: var(--color-neutral);
```

---

## Ikonanvendelse

**Princip** — Ikoner bruges til at understøtte tekst, ikke erstatte den — kun velkendte universelle ikoner kan stå alene.

**Begrundelse** — Ikoner der bruges uden tekstlabel forudsætter fælles kulturel kontekst, som ikke altid er til stede hos alle brugere.

**Specifikation**

| Scenarie | Regel |
|---|---|
| Navigation | Altid med tekstlabel |
| CTA-knap | Valgfri — understøttende rolle |
| Status-indikator | Kan stå alene, men ledsag med `aria-label` |
| Dekorative ikoner | Markér med `aria-hidden="true"` |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```html
<!-- Funktionelt ikon (kræver label) -->
<button aria-label="Luk">
  <svg aria-hidden="true">...</svg>
</button>

<!-- Dekorativt ikon -->
<svg aria-hidden="true">...</svg>
```

---

## Brugerdefinerede ikoner

**Princip** — Brugerdefinerede ikoner skal visuelt matche det valgte biblioteks stil før de tages i brug.

**Begrundelse** — Et custom ikon der afviger visuelt fra bibliotekets stil forstyrrer den optiske konsistens.

**Specifikation**

| Krav | Detalje |
|---|---|
| Viewbox | 24×24 |
| Stregtykkelse | Matcher biblioteket |
| Corners | Matcher bibliotekets rounding |
| Filformat | SVG |
| Navngivning | `icon-[navn].svg` |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```
assets/icons/icon-[navn].svg
```
