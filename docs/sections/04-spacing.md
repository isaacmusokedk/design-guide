# 4. Spacing og layout

## Afstandsskala

**Princip** — Al spacing — margin, padding, gap — hentes fra en fast 8px-baseret skala og hardkodes aldrig direkte.

**Begrundelse** — ExempelBrand har mange flader: rapporter, præsentationer, webindhold og e-mail. En fælles spacing-skala er det tekniske fundament der holder disse flader visuelt sammenhængende, selv når de produceres af forskellige personer og værktøjer.

**Specifikation**

| Navn | Token | Rem | Px | Typisk anvendelse |
|---|---|---|---|---|
| xs | `--space-xs` | 0.25rem | 4px | Ikon-til-tekst, interne mikrogap i badges |
| sm | `--space-sm` | 0.5rem | 8px | Komprimerede listeelements padding, tætte tags |
| md | `--space-md` | 1rem | 16px | Standard knap-padding, inputfelter, kortindhold |
| lg | `--space-lg` | 2rem | 32px | Afstand mellem komponenter inden for en blok |
| xl | `--space-xl` | 4rem | 64px | Afstand mellem primære indholdsblokke og hero-elementer |
| 2xl | `--space-2xl` | 6rem | 96px | Side-top/bund-rytme på landingssider |

**Visuelt eksempel**

<div style="font-family:Inter,sans-serif;padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;">
  <div style="display:flex;align-items:center;gap:4px;margin-bottom:8px;">
    <div style="width:4px;height:20px;background:#0D2545;border-radius:2px;"></div>
    <span style="font-size:12px;color:#8A8678;">xs — 4px</span>
  </div>
  <div style="display:flex;align-items:center;gap:4px;margin-bottom:8px;">
    <div style="width:8px;height:20px;background:#0D2545;border-radius:2px;"></div>
    <span style="font-size:12px;color:#8A8678;">sm — 8px</span>
  </div>
  <div style="display:flex;align-items:center;gap:4px;margin-bottom:8px;">
    <div style="width:16px;height:20px;background:#0D2545;border-radius:2px;"></div>
    <span style="font-size:12px;color:#8A8678;">md — 16px</span>
  </div>
  <div style="display:flex;align-items:center;gap:4px;margin-bottom:8px;">
    <div style="width:32px;height:20px;background:#1A3D6B;border-radius:2px;"></div>
    <span style="font-size:12px;color:#8A8678;">lg — 32px</span>
  </div>
  <div style="display:flex;align-items:center;gap:4px;margin-bottom:8px;">
    <div style="width:64px;height:20px;background:#B08D57;border-radius:2px;"></div>
    <span style="font-size:12px;color:#8A8678;">xl — 64px</span>
  </div>
  <div style="display:flex;align-items:center;gap:4px;">
    <div style="width:96px;height:20px;background:#CEAD78;border-radius:2px;"></div>
    <span style="font-size:12px;color:#8A8678;">2xl — 96px</span>
  </div>
</div>

**Kode / download**

```css
:root {
  --space-xs: 0.25rem;  /* 4px  — mikrogap */
  --space-sm: 0.5rem;   /* 8px  — kompakt */
  --space-md: 1rem;     /* 16px — standard */
  --space-lg: 2rem;     /* 32px — komponentgap */
  --space-xl: 4rem;     /* 64px — sektionsgap */
  --space-2xl: 6rem;    /* 96px — sideniveau */
}
```

---

## Grid og kolonnelayout

**Princip** — Alle sidelayouts er baseret på et 12-kolonnegrid med definerede marginer og gutter.

**Begrundelse** — ExempelBrands konsulentindhold er tekst- og datatungt. Et 12-kolonnegrid giver fleksibiliteten til at skifte mellem to-kolonne-layouts (til rapport-sidebars) og fulde enkeltkolonner (til læsevenlige artikler) inden for samme system.

**Specifikation**

| Egenskab | Mobil | Tablet | Desktop |
|---|---|---|---|
| Kolonner | 4 | 8 | 12 |
| Gutter | 16px (`--space-md`) | 24px | 32px (`--space-lg`) |
| Ydermarginer | 16px | 32px | 64px (`--space-xl`) |
| Max. indholdsbredde | 100% | 100% | 1200px |

**Visuelt eksempel**

<div style="display:grid;grid-template-columns:repeat(12,1fr);gap:8px;padding:16px;background:#F7F5F0;border-radius:8px;margin:16px 0;">
  <div style="grid-column:1/4;background:#0D2545;border-radius:4px;height:32px;opacity:0.8;"></div>
  <div style="grid-column:4/13;background:#1A3D6B;border-radius:4px;height:32px;opacity:0.6;"></div>
  <div style="grid-column:1/7;background:#B08D57;border-radius:4px;height:32px;opacity:0.7;"></div>
  <div style="grid-column:7/13;background:#D6D3CB;border-radius:4px;height:32px;"></div>
</div>
<p style="font-family:Inter,sans-serif;font-size:12px;color:#8A8678;">12-kolonnegrid — typisk layout: 3 kolonner sidebar + 9 kolonner indhold, eller 6+6 til to-søjle.</p>

**Kode / download**

```css
:root {
  --grid-columns: 12;
  --grid-gutter: var(--space-lg);    /* 32px */
  --grid-margin: var(--space-xl);    /* 64px */
  --grid-max-width: 1200px;
}

.grid {
  display: grid;
  grid-template-columns: repeat(var(--grid-columns), 1fr);
  gap: var(--grid-gutter);
  max-width: var(--grid-max-width);
  margin-inline: auto;
  padding-inline: var(--grid-margin);
}
```

---

## Breakpoints

**Princip** — Layoutet tilpasses til tre breakpoints der dækker mobiltelefon, tablet og desktop.

**Begrundelse** — ExempelBrands primærflader er desktop-rapporter og præsentationer, men digitale leverancer læses hyppigt på mobil. Tre veldefinerede breakpoints er tilstrækkeligt — micro-breakpoints forøger kompleksiteten uden proportional gevinst.

**Specifikation**

| Navn | Token | Minimumsbredde | Primær anvendelse |
|---|---|---|---|
| Mobil | `--bp-mobile` | 0px | Enkelt kolonne, stakkede sektioner |
| Tablet | `--bp-tablet` | 768px | To kolonner, kollapseret navigation |
| Desktop | `--bp-desktop` | 1024px | Fuldt 12-kolonnegrid, sidepanel-layouts |
| Bred | `--bp-wide` | 1440px | Max-width aktiveres, store marginer |

**Visuelt eksempel**

> Primær klientbrug er desktop (1024px+). Mobil og tablet er sekundære, men ikke ignorerede.

**Kode / download**

```css
:root {
  --bp-mobile: 0px;
  --bp-tablet: 768px;
  --bp-desktop: 1024px;
  --bp-wide: 1440px;
}

/* Mobil-first tilgang */
@media (min-width: 768px) {
  /* Tablet-layouts */
}

@media (min-width: 1024px) {
  /* Desktop-layouts */
}
```
