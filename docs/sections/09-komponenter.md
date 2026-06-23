# 9. Komponenter (valgfri)

> **Disclaimer:** Denne sektion er valgfri og udfyldes kun for digitale produkter og UI-tjenester. ExempelBrand har et digitalt klientportal og et rapporterings-dashboard — denne sektion er derfor relevant.

---

## Knapper

**Princip** — Knapper følger et fast tre-niveau hierarki (primær, sekundær, ghost) og blandes aldrig vilkårligt.

**Begrundelse** — Knapvarianter kommunikerer handlingens relative vigtighed. En side med tre "primære" knapper har ingen primær handling. Hierarkiet er kun effektivt hvis det respekteres konsekvent.

**Specifikation**

| Variant | Token / klasse | Baggrund | Tekst | Anvendelse |
|---|---|---|---|---|
| Primær | `.btn-primary` | `--color-primary` | `--color-secondary` | Vigtigste CTA — max. én pr. flade |
| Sekundær / outline | `.btn-secondary` | Transparent | `--color-primary` | Understøttende handlinger ved siden af primær |
| Ghost | `.btn-ghost` | Transparent | `--color-neutral-700` | Tertiær handling, "Annuller", destruktive handlinger |
| Accent | `.btn-accent` | `--color-accent` | `--color-primary` | Premium-handlinger — download rapport, eksporter |
| Deaktiveret | `[disabled]` | `--color-neutral-200` | `--color-neutral-500` | Handling ikke tilgængelig — aldrig skjult, blot deaktiveret |

**Visuelt eksempel**

<div style="display:flex;gap:12px;align-items:center;padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;flex-wrap:wrap;">
  <button style="padding:10px 20px;background:#0D2545;color:#F7F5F0;border:none;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:pointer;">Primær</button>
  <button style="padding:10px 20px;background:transparent;color:#0D2545;border:2px solid #0D2545;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:pointer;">Sekundær</button>
  <button style="padding:10px 20px;background:transparent;color:#3D3A32;border:none;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:pointer;text-decoration:underline;text-underline-offset:3px;">Ghost</button>
  <button style="padding:10px 20px;background:#B08D57;color:#0D2545;border:none;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:pointer;">Accent</button>
  <button disabled style="padding:10px 20px;background:#EFEFEB;color:#8A8678;border:none;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;font-weight:600;cursor:not-allowed;opacity:0.7;">Deaktiveret</button>
</div>

**Kode / download**

```css
:root {
  --btn-radius: var(--radius-md);
  --btn-padding: var(--space-sm) var(--space-md);
  --btn-font-size: var(--font-size-md);
  --btn-font-weight: var(--font-weight-semibold);
  --btn-transition: background-color var(--transition-default),
                    border-color var(--transition-default),
                    color var(--transition-default);
}

.btn-primary {
  background-color: var(--color-primary);
  color: var(--color-secondary);
  padding: var(--btn-padding);
  border-radius: var(--btn-radius);
  font-size: var(--btn-font-size);
  font-weight: var(--btn-font-weight);
  border: 2px solid var(--color-primary);
  transition: var(--btn-transition);
  cursor: pointer;
}

.btn-primary:hover {
  background-color: var(--color-primary-light);
  border-color: var(--color-primary-light);
}

.btn-secondary {
  background-color: transparent;
  color: var(--color-primary);
  border: 2px solid var(--color-primary);
  padding: var(--btn-padding);
  border-radius: var(--btn-radius);
  font-size: var(--btn-font-size);
  font-weight: var(--btn-font-weight);
  transition: var(--btn-transition);
  cursor: pointer;
}

.btn-secondary:hover {
  background-color: var(--color-primary);
  color: var(--color-secondary);
}

.btn-accent {
  background-color: var(--color-accent);
  color: var(--color-primary);
  border: 2px solid var(--color-accent);
  padding: var(--btn-padding);
  border-radius: var(--btn-radius);
  font-size: var(--btn-font-size);
  font-weight: var(--btn-font-weight);
  transition: var(--btn-transition);
  cursor: pointer;
}

button[disabled] {
  background-color: var(--color-neutral-200);
  color: var(--color-neutral-500);
  border-color: var(--color-neutral-200);
  cursor: not-allowed;
  opacity: 0.7;
}
```

---

## Formular-elementer

**Princip** — Alle formularfelter følger ét konsekvent visuelt mønster med klare fokus-, fejl- og deaktiverede tilstande.

**Begrundelse** — ExempelBrands digitale portal kræver at klienter uploader dokumenter og udfylder intake-formularer. Klare tilstandsindikatorer reducerer fejl og sikrer at processen virker tillidsfuld fremfor teknisk.

**Specifikation**

| Tilstand | Baggrund | Border | Label-farve |
|---|---|---|---|
| Default | `--color-neutral-100` | `--color-neutral-300` | `--color-neutral-700` |
| Fokus | `--color-neutral-100` | `--color-primary` | `--color-primary` |
| Udfyldt | `--color-neutral-100` | `--color-neutral-700` | `--color-neutral-700` |
| Fejl | `#FFF5F6` | `--color-error` | `--color-error` |
| Deaktiveret | `--color-neutral-200` | `--color-neutral-300` | `--color-neutral-500` |

**Visuelt eksempel**

<div style="display:flex;flex-direction:column;gap:12px;padding:24px;background:#F7F5F0;border-radius:8px;margin:16px 0;max-width:400px;">
  <div>
    <label style="font-family:Inter,sans-serif;font-size:13px;font-weight:500;color:#3D3A32;display:block;margin-bottom:4px;">Virksomhedsnavn</label>
    <input type="text" placeholder="ExempelBrand A/S" style="width:100%;padding:10px 12px;border:1px solid #D6D3CB;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;color:#3D3A32;background:#FFFFFF;box-sizing:border-box;">
  </div>
  <div>
    <label style="font-family:Inter,sans-serif;font-size:13px;font-weight:500;color:#0D2545;display:block;margin-bottom:4px;">E-mail (fokus)</label>
    <input type="email" value="kontakt@eksempel.dk" style="width:100%;padding:10px 12px;border:2px solid #0D2545;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;color:#3D3A32;background:#FFFFFF;box-sizing:border-box;">
  </div>
  <div>
    <label style="font-family:Inter,sans-serif;font-size:13px;font-weight:500;color:#9B2335;display:block;margin-bottom:4px;">CVR-nummer (fejl)</label>
    <input type="text" value="12345" style="width:100%;padding:10px 12px;border:2px solid #9B2335;border-radius:6px;font-family:Inter,sans-serif;font-size:14px;color:#3D3A32;background:#FFF5F6;box-sizing:border-box;">
    <p style="font-family:Inter,sans-serif;font-size:12px;color:#9B2335;margin:4px 0 0;">CVR-nummeret skal være 8 cifre.</p>
  </div>
</div>

**Kode / download**

```css
.form-field label {
  font-family: var(--font-family-body);
  font-size: var(--font-size-sm);
  font-weight: var(--font-weight-medium);
  color: var(--color-neutral-700);
  display: block;
  margin-bottom: var(--space-xs);
}

input, textarea, select {
  width: 100%;
  padding: var(--space-sm) var(--space-md);
  border: 1px solid var(--color-neutral-300);
  border-radius: var(--radius-sm);
  font-family: var(--font-family-body);
  font-size: var(--font-size-md);
  color: var(--color-neutral-700);
  background-color: var(--color-neutral-100);
  transition: border-color var(--transition-fast);
}

input:focus {
  outline: none;
  border: 2px solid var(--color-primary);
}

input[aria-invalid="true"] {
  border: 2px solid var(--color-error);
  background-color: #FFF5F6;
}

input[disabled] {
  background-color: var(--color-neutral-200);
  color: var(--color-neutral-500);
  cursor: not-allowed;
}

.form-error {
  font-size: var(--font-size-xs);
  color: var(--color-error);
  margin-top: var(--space-xs);
}
```

---

## Kort (Cards)

**Princip** — Kort er ExempelBrands primære container til at præsentere indsigter, rapporter og tjenestebeskrivelser i lister og grids.

**Begrundelse** — Et konsekvent kortmønster er særlig vigtigt i et klientportal hvor brugerne scanner en liste af rapporter og analyser. Konsistente kort reducerer kognitiv belastning.

**Specifikation**

| Egenskab | Token | Værdi |
|---|---|---|
| Baggrund | `--color-neutral-100` | `#FFFFFF` |
| Padding | `--space-lg` | `32px` |
| Border radius | `--radius-md` | `8px` |
| Border | `--color-neutral-300` | `1px solid #D6D3CB` |
| Skygge default | `--shadow-sm` | Subtil |
| Skygge hover | `--shadow-md` | Løftet |
| Hover transform | `translateY(-2px)` | Bevidst subtil |
| Accent-top (premium) | `--color-accent` 3px top-border | Guld-top til featured cards |

**Visuelt eksempel**

<div style="display:grid;grid-template-columns:1fr 1fr;gap:16px;margin:16px 0;">
  <div style="padding:24px;background:#FFFFFF;border-radius:8px;border:1px solid #D6D3CB;box-shadow:0 1px 3px rgba(13,37,69,0.08);">
    <p style="font-family:Inter,sans-serif;font-size:11px;font-weight:600;color:#8A8678;margin:0 0 8px;letter-spacing:1px;text-transform:uppercase;">Q2 Analyse</p>
    <p style="font-family:'Playfair Display',Georgia,serif;font-size:18px;font-weight:700;color:#1A1814;margin:0 0 8px;line-height:1.3;">Vækst i nordisk marked</p>
    <p style="font-family:Inter,sans-serif;font-size:13px;color:#8A8678;margin:0;">Leveret 12. juni 2026</p>
  </div>
  <div style="padding:24px;background:#FFFFFF;border-radius:8px;border:1px solid #D6D3CB;border-top:3px solid #B08D57;box-shadow:0 4px 12px rgba(13,37,69,0.12);">
    <p style="font-family:Inter,sans-serif;font-size:11px;font-weight:600;color:#B08D57;margin:0 0 8px;letter-spacing:1px;text-transform:uppercase;">Anbefalet</p>
    <p style="font-family:'Playfair Display',Georgia,serif;font-size:18px;font-weight:700;color:#1A1814;margin:0 0 8px;line-height:1.3;">Strategisk prioriteringsanalyse</p>
    <p style="font-family:Inter,sans-serif;font-size:13px;color:#8A8678;margin:0;">Leveret 20. juni 2026</p>
  </div>
</div>

**Kode / download**

```css
.card {
  padding: var(--space-lg);
  border-radius: var(--radius-md);
  border: 1px solid var(--color-neutral-300);
  box-shadow: var(--shadow-sm);
  background-color: var(--color-neutral-100);
  transition: box-shadow var(--transition-default),
              transform var(--transition-default);
}

.card:hover {
  box-shadow: var(--shadow-md);
  transform: translateY(-2px);
}

/* Featured / premium card */
.card--featured {
  border-top: 3px solid var(--color-accent);
}

.card__eyebrow {
  font-size: var(--font-size-xs);
  font-weight: var(--font-weight-semibold);
  color: var(--color-neutral-500);
  letter-spacing: 0.08em;
  text-transform: uppercase;
  margin-bottom: var(--space-sm);
}

.card--featured .card__eyebrow {
  color: var(--color-accent);
}

.card__title {
  font-family: var(--font-family-heading);
  font-size: var(--font-size-h3);
  font-weight: var(--font-weight-bold);
  color: var(--color-neutral-900);
  margin-bottom: var(--space-sm);
  line-height: var(--line-height-heading);
}
```
