# 9. Komponenter (valgfri)

> **Disclaimer:** Denne sektion er valgfri og udfyldes kun for digitale produkter og UI-tjenester. Hvis projektet ikke har en digital brugerflade (app, webservice, SaaS-produkt eller lignende), kan denne sektion springes helt over.

---

## Knapper

**Princip** — Knapper følger et fast hierarki (primær, sekundær, ghost) og blandes aldrig vilkårligt.

**Begrundelse** — Knapvarianter kommunikerer handlingens relative vigtighed — brug af forkert variant forvirrer brugeren om hvad der sker ved klik.

**Specifikation**

| Variant | Token / klasse | Anvendelse |
|---|---|---|
| Primær | `.btn-primary` | Vigtigste CTA på en flade |
| Sekundær | `.btn-secondary` | Understøttende handlinger |
| Ghost / outline | `.btn-ghost` | Tertiær handling, destruktiv handling |
| Deaktiveret | `[disabled]` | Handling ikke tilgængelig |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
.btn-primary {
  background-color: var(--color-primary);
  color: var(--color-secondary);
  padding: var(--space-3) var(--space-5);
  border-radius: var(--radius-sm);
  font-size: var(--font-size-md);
  font-weight: var(--font-weight-heading);
  transition: background-color var(--transition-default);
}
```

---

## Formular-elementer

**Princip** — Alle formularfelter følger ét konsekvent visuelt mønster med klare fokus-, fejl- og deaktiverede tilstande.

**Begrundelse** — Brugere interagerer med formularer under kognitivt pres — konsistente tilstandsindikatorer reducerer fejl og frustration.

**Specifikation**

| Tilstand | Visuel indikator |
|---|---|
| Default | Border: `--color-accent` |
| Fokus | Border: `--color-primary`, `outline` med `--color-primary` |
| Fejl | Border: `--color-error`, fejlbesked under feltet |
| Deaktiveret | `opacity: 0.5`, `cursor: not-allowed` |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
input:focus {
  outline: 2px solid var(--color-primary);
  outline-offset: 2px;
  border-color: var(--color-primary);
}

input[aria-invalid="true"] {
  border-color: var(--color-error);
}
```

---

## Kort (Cards)

**Princip** — Kort er den primære container til at præsentere indhold i lister og grids.

**Begrundelse** — Et konsekvent kortmønster gør det muligt at genbruge layoutet på tværs af sektioner uden at genopfinde hjulet.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Padding | `--space-5` |
| Border radius | `--radius-md` |
| Skygge | `--shadow-md` |
| Hover-effekt | `--shadow-lg`, `translateY(-2px)` |
| Baggrund | `--color-secondary` |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
.card {
  padding: var(--space-5);
  border-radius: var(--radius-md);
  box-shadow: var(--shadow-md);
  background-color: var(--color-secondary);
  transition: box-shadow var(--transition-default),
              transform var(--transition-default);
}

.card:hover {
  box-shadow: var(--shadow-lg);
  transform: translateY(-2px);
}
```
