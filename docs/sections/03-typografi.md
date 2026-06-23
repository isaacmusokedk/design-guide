# 3. Typografi

## Primærskrifttype

**Princip** — Primærskrifttypen bruges til alle overskrifter og definerer brandets visuelle stemme i tekst.

**Begrundelse** — Typografisk konsistens er en af de mest undervurderede faktorer i brandgenkendelse — en velvalgt skrifttype er ligeså vigtig som logoet.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Familie | [Indsæt skrifttypenavn] |
| Vægt (overskrift) | 700 (Bold) |
| Vægt (underoverskrift) | 600 (SemiBold) |
| Kilde | [Google Fonts / Adobe Fonts / Lokalt] |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--font-family-heading: '[Skrifttypenavn]', sans-serif;
--font-weight-heading: 700;
--font-weight-subheading: 600;
```

---

## Sekundærskrifttype (brødtekst)

**Princip** — Brødtekstskrifttypen er optimeret til læsbarhed ved længere tekster og bruges til al løbende tekst.

**Begrundelse** — Brødtekst udgør langt størstedelen af den tekst brugeren læser — her er læsbarhed vigtigere end visuel markering.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Familie | [Indsæt skrifttypenavn] |
| Standardvægt | 400 (Regular) |
| Kursiv | 400 Italic |
| Linjehøjde | 1,5 |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--font-family-body: '[Skrifttypenavn]', serif;
--font-weight-body: 400;
--line-height-body: 1.5;
```

---

## Typografisk skala

**Princip** — Alle tekststørrelser er defineret i tokens og følger en konsekvent skala.

**Begrundelse** — En fast skala forhindrer arbitrære størrelsesvalg og sikrer visuelt hierarki på tværs af alle flader.

**Specifikation**

| Trin | Token | Størrelse | Anvendelse |
|---|---|---|---|
| xs | `--font-size-xs` | 12px | Hjælpetekst, labels |
| sm | `--font-size-sm` | 14px | Sekundær tekst |
| md | `--font-size-md` | 16px | Brødtekst (basis) |
| lg | `--font-size-lg` | 20px | Ingress, highlights |
| xl | `--font-size-xl` | 24px | H3 |
| 2xl | `--font-size-2xl` | 32px | H2 |
| 3xl | `--font-size-3xl` | 48px | H1 |

**Visuelt eksempel**

> Indsæt eksempel her

**Kode / download**

```css
--font-size-xs: 0.75rem;
--font-size-sm: 0.875rem;
--font-size-md: 1rem;
--font-size-lg: 1.25rem;
--font-size-xl: 1.5rem;
--font-size-2xl: 2rem;
--font-size-3xl: 3rem;
```
