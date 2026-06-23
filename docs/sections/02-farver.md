# 2. Farver

## Primærpalette

**Princip** — Navy og off-white er ExempelBrands signaturfarver og udgør 80% af alle visuelle flader.

**Begrundelse** — Navy signalerer autoritet og tillid. Off-white skaber luftighed og reducerer det "tunge" udtryk som rent sort-hvid fremkalder. Kombinationen er det klassiske professionelle konsulentsprog, opdateret med varme.

**Specifikation**

| Navn | Token | HEX | RGB | Anvendelse |
|---|---|---|---|---|
| Navy | `--color-primary` | `#0D2545` | `13, 37, 69` | Headere, primære CTA-knapper, høj-autoritetselementer |
| Navy lys | `--color-primary-light` | `#1A3D6B` | `26, 61, 107` | Hover-tilstand på navy-elementer |
| Navy dyb | `--color-primary-dark` | `#071525` | `7, 21, 37` | Aktiv tilstand og maksimal kontrast |
| Off-white | `--color-secondary` | `#F7F5F0` | `247, 245, 240` | Primær sidebaggrund og overflader |

**Visuelt eksempel**

<div style="display:flex;gap:8px;margin:16px 0;">
  <div style="flex:1;height:80px;background:#071525;border-radius:8px 0 0 8px;"></div>
  <div style="flex:2;height:80px;background:#0D2545;"></div>
  <div style="flex:1;height:80px;background:#1A3D6B;"></div>
  <div style="flex:3;height:80px;background:#F7F5F0;border-radius:0 8px 8px 0;border:1px solid #D6D3CB;"></div>
</div>
<p style="font-family:Inter,sans-serif;font-size:12px;color:#8A8678;margin-top:4px;">Navy Dyb / Navy / Navy Lys / Off-white</p>

**Kode / download**

```css
:root {
  --color-primary: #0D2545;      /* Navy — signaturfarve */
  --color-primary-light: #1A3D6B; /* Lys navy — hover */
  --color-primary-dark: #071525;  /* Dyb navy — aktiv */
  --color-secondary: #F7F5F0;     /* Off-white — baggrund */
}
```

---

## Accentpalette

**Princip** — Guld/kobber er ExempelBrands messingmoment og bruges sparsomt som præcisionspunktering.

**Begrundelse** — Accent-farven er ikke en brugsfarve. Den er en opmærksomhedsfarve. Brugt sparsomt på understregninger, premium-markører og udvalgte ikoner signalerer den "dette er det vigtigste på siden". Overforbrug dræber effekten.

**Specifikation**

| Navn | Token | HEX | RGB | Anvendelse |
|---|---|---|---|---|
| Guld | `--color-accent` | `#B08D57` | `176, 141, 87` | Understregninger, hero-ikoner, premium-signaler |
| Guld lys | `--color-accent-light` | `#CEAD78` | `206, 173, 120` | Hover-tilstand på accent-elementer |

**Visuelt eksempel**

<div style="display:flex;gap:8px;margin:16px 0;align-items:center;">
  <div style="width:60px;height:60px;background:#B08D57;border-radius:8px;"></div>
  <div style="width:60px;height:60px;background:#CEAD78;border-radius:8px;"></div>
  <div style="margin-left:16px;">
    <div style="font-family:'Playfair Display',Georgia,serif;font-size:24px;font-weight:700;color:#0D2545;border-bottom:3px solid #B08D57;display:inline-block;padding-bottom:2px;">ExempelBrand</div>
    <p style="font-family:Inter,sans-serif;font-size:12px;color:#8A8678;margin:8px 0 0;">Guld bruges her som understregning under primærtitlen.</p>
  </div>
</div>

**Kode / download**

```css
:root {
  --color-accent: #B08D57;       /* Guld — messingmomentet, bruges sparsomt */
  --color-accent-light: #CEAD78; /* Lys guld — hover */
}
```

---

## Neutralpalette

**Princip** — Neutralerne er lærredet — de holder alt det andet på plads uden at konkurrere.

**Begrundelse** — En varm gråskala (beige-undertone) holder paletten kohærent med off-white. Kolde gråtoner ville bryde den varme totalkarakter.

**Specifikation**

| Navn | Token | HEX | Anvendelse |
|---|---|---|---|
| Hvid | `--color-neutral-100` | `#FFFFFF` | Kortbaggrunde og modale overflader |
| Lys grå | `--color-neutral-200` | `#EFEFEB` | Alternerende tabelrækker, indpakkede sektioner |
| Border | `--color-neutral-300` | `#D6D3CB` | Borders, dividere, inputfelter default |
| Dæmpet tekst | `--color-neutral-500` | `#8A8678` | Hjælpetekst, sekundære labels, metadata |
| Brødtekst | `--color-neutral-700` | `#3D3A32` | Primær tekstfarve til al løbende tekst |
| Overskrifter | `--color-neutral-900` | `#1A1814` | Maksimal kontrast til displaytekst |

**Visuelt eksempel**

<div style="display:flex;gap:4px;margin:16px 0;border-radius:8px;overflow:hidden;">
  <div style="flex:1;height:48px;background:#FFFFFF;border:1px solid #D6D3CB;"></div>
  <div style="flex:1;height:48px;background:#EFEFEB;"></div>
  <div style="flex:1;height:48px;background:#D6D3CB;"></div>
  <div style="flex:1;height:48px;background:#8A8678;"></div>
  <div style="flex:1;height:48px;background:#3D3A32;"></div>
  <div style="flex:1;height:48px;background:#1A1814;"></div>
</div>

**Kode / download**

```css
:root {
  --color-neutral-100: #FFFFFF;  /* Hvid — kortbaggrunde */
  --color-neutral-200: #EFEFEB;  /* Lys grå — tabelrækker */
  --color-neutral-300: #D6D3CB;  /* Border-grå — dividere */
  --color-neutral-500: #8A8678;  /* Dæmpet — hjælpetekst */
  --color-neutral-700: #3D3A32;  /* Brødtekst — primær tekst */
  --color-neutral-900: #1A1814;  /* Overskrifter — maks. kontrast */
}
```

---

## Tilgængelighed og kontrastforhold

**Princip** — Alle tekst/baggrund-kombinationer overholder WCAG 2.1 AA som minimum — AAA hvor muligt.

**Begrundelse** — ExempelBrands klienter arbejder i professionelle kontekster med varierende skærmforhold. Et solidt kontrastforhold er ikke kun et lovkrav — det er et kvalitetssignal.

**Specifikation**

| Kombination | Kontrastforhold | WCAG-niveau |
|---|---|---|
| `--color-neutral-900` på `--color-secondary` | 16,4:1 | AAA |
| `--color-neutral-700` på `--color-secondary` | 9,2:1 | AAA |
| `--color-secondary` på `--color-primary` | 12,1:1 | AAA |
| `--color-neutral-500` på `--color-secondary` | 4,7:1 | AA |
| `--color-accent` på `--color-primary` | 4,8:1 | AA |
| `--color-neutral-500` på `--color-neutral-200` | 3,2:1 | AA (stor tekst) |

**Visuelt eksempel**

<div style="display:flex;gap:16px;margin:16px 0;flex-wrap:wrap;">
  <div style="padding:16px 20px;background:#0D2545;border-radius:8px;color:#F7F5F0;font-family:Inter,sans-serif;font-size:14px;font-weight:500;">
    Off-white på Navy — 12,1:1 AAA
  </div>
  <div style="padding:16px 20px;background:#F7F5F0;border-radius:8px;color:#1A1814;font-family:Inter,sans-serif;font-size:14px;font-weight:500;border:1px solid #D6D3CB;">
    Overskrift på Off-white — 16,4:1 AAA
  </div>
</div>

**Kode / download**

```css
/* Brug altid tokens — aldrig hardkodede farveværdier */
color: var(--color-neutral-700);
background-color: var(--color-secondary);
```
