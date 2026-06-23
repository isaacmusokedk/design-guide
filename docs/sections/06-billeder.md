# 6. Billeder og illustration

## Fotostil

**Princip** — ExempelBrands fotografier er rolige, lyse og menneskelige — aldrig dramatiske stockbilleder eller generiske handshake-billeder.

**Begrundelse** — Konsulentbranchen har et imagery-problem: den er fuld af mænd i jakkesæt foran whiteboards og uigennemskuelige infografik. ExempelBrand differentierer sig med en fotostil der signalerer nærhed og professionalisme fremfor distanceret autoritet.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Farvesignatur | Varm og neutral — undgå oversaturerede farver og blåfiltre |
| Lysopsætning | Naturligt eller blødgjort studiolys — ingen hård kontrast |
| Perspektiv | Øjenhøjde — aldrig fugleperspektiv på mennesker |
| Motiv-fokus | Mennesker i rolig koncentration / autentiske arbejdsøjeblikke / arkitektur med luft og frirum |
| Bearbejdning | Minimal — let farmebalancejustering, ingen kunstige presets |
| Farver at undgå | Stærkt rød, stærkt blå (kolde toner) — bevarer navy som det eneste "stærke" element |
| Stock-fotografer | Unsplash, Pexels — søg på "professional meeting natural light", "office candid warm" |

**Visuelt eksempel**

<div style="display:flex;gap:16px;margin:16px 0;flex-wrap:wrap;">
  <div style="flex:1;min-width:200px;height:140px;background:linear-gradient(135deg, #E8DCC8 0%, #C9B99A 100%);border-radius:8px;display:flex;align-items:center;justify-content:center;">
    <span style="font-family:Inter,sans-serif;font-size:12px;color:#3D3A32;text-align:center;padding:8px;">Varm, naturlig tone<br><em>Eksempelfoto her</em></span>
  </div>
  <div style="flex:1;min-width:200px;height:140px;background:linear-gradient(135deg, #D6DDE8 0%, #A8B8CC 100%);border-radius:8px;display:flex;align-items:center;justify-content:center;position:relative;">
    <div style="position:absolute;top:8px;right:8px;background:#9B2335;color:#FFFFFF;font-family:Inter,sans-serif;font-size:10px;font-weight:600;padding:2px 6px;border-radius:4px;">UNDGÅ</div>
    <span style="font-family:Inter,sans-serif;font-size:12px;color:#3D3A32;text-align:center;padding:8px;">Kold blå tone<br><em>Bryder paletten</em></span>
  </div>
</div>

**Kode / download**

```css
/* Billeder altid med object-fit og aspektforhold-token */
:root {
  --aspect-ratio-hero: 16 / 9;
  --aspect-ratio-card: 4 / 3;
  --aspect-ratio-portrait: 3 / 4;
  --aspect-ratio-square: 1 / 1;
}

img {
  object-fit: cover;
  object-position: center;
}
```

---

## Illustrationssprog

**Princip** — ExempelBrand bruger line-illustrations i Navy og Guld til at visualisere koncepter og processer der er svære at fotografere.

**Begrundelse** — Konsulentindhold er abstrakt. Flotte flat illustrations giver liv til procesdiagrammer, rapportforsider og præsentationer — forudsat de er konsistente i stil, streg og farve. Illustrationer og fotografier bruges aldrig på samme flade.

**Specifikation**

| Egenskab | Værdi |
|---|---|
| Stil | Line / outline — ingen fills, ingen gradienter undtagen subtile navy-baggrunde |
| Farvepalette | Navy (`#0D2545`), Off-white (`#F7F5F0`), Guld-accent (`#B08D57`) — maksimalt tre farver |
| Streg | 1.5–2px — lettere end ikoner for at signalere illustrationssprog |
| Hjørner | Afrundede — bløde former fremfor skarpe kanter |
| Filformat | SVG (altid) — aldrig PNG til illustrationer |
| Stil-reference | Undgå: 3D render, karakter-illustrationer, emoji-agtig stil |
| Stil-reference | Foretruk: arkitektonisk line art, abstrakte formsammensætninger, procesflows |

**Visuelt eksempel**

<div style="padding:24px;background:#0D2545;border-radius:8px;margin:16px 0;display:flex;justify-content:center;">
  <svg width="200" height="100" viewBox="0 0 200 100" fill="none" xmlns="http://www.w3.org/2000/svg">
    <!-- Enkel procesillustration -->
    <circle cx="30" cy="50" r="20" stroke="#F7F5F0" stroke-width="1.5"/>
    <circle cx="100" cy="50" r="20" stroke="#B08D57" stroke-width="1.5"/>
    <circle cx="170" cy="50" r="20" stroke="#F7F5F0" stroke-width="1.5"/>
    <line x1="52" y1="50" x2="78" y2="50" stroke="#F7F5F0" stroke-width="1.5" stroke-dasharray="4,2"/>
    <line x1="122" y1="50" x2="148" y2="50" stroke="#F7F5F0" stroke-width="1.5" stroke-dasharray="4,2"/>
    <text x="30" y="55" text-anchor="middle" fill="#F7F5F0" font-family="Inter" font-size="10">01</text>
    <text x="100" y="55" text-anchor="middle" fill="#B08D57" font-family="Inter" font-size="10">02</text>
    <text x="170" y="55" text-anchor="middle" fill="#F7F5F0" font-family="Inter" font-size="10">03</text>
  </svg>
</div>

**Kode / download**

```
assets/illustrations/process-[navn].svg
assets/illustrations/concept-[navn].svg
assets/illustrations/cover-[navn].svg
```

---

## Billedbeskæring og placering

**Princip** — Beskæring følger et fast sæt aspektforhold og fokuspunkt-regler — ingen tilfældig beskæring.

**Begrundelse** — Inkonsekvent beskæring giver et uroligt udtryk i grid- og kortvisninger, særligt i rapporter med mange billeder.

**Specifikation**

| Format | Token | Aspektforhold | Fokuspunkt |
|---|---|---|---|
| Hero / banner | `--aspect-ratio-hero` | 16:9 | Centreret eller øverste tredjedel |
| Kort / thumbnail | `--aspect-ratio-card` | 4:3 | Centreret |
| Portræt (teammedlem) | `--aspect-ratio-portrait` | 3:4 | Ansigt i øverste tredjedel |
| Kvadratisk (avatar, ikon) | `--aspect-ratio-square` | 1:1 | Centreret |

**Visuelt eksempel**

<div style="display:flex;gap:12px;margin:16px 0;align-items:flex-end;">
  <div style="width:80px;height:45px;background:#D6D3CB;border-radius:4px;display:flex;align-items:center;justify-content:center;font-family:Inter,sans-serif;font-size:9px;color:#8A8678;">16:9</div>
  <div style="width:60px;height:45px;background:#D6D3CB;border-radius:4px;display:flex;align-items:center;justify-content:center;font-family:Inter,sans-serif;font-size:9px;color:#8A8678;">4:3</div>
  <div style="width:34px;height:45px;background:#D6D3CB;border-radius:4px;display:flex;align-items:center;justify-content:center;font-family:Inter,sans-serif;font-size:9px;color:#8A8678;">3:4</div>
  <div style="width:45px;height:45px;background:#D6D3CB;border-radius:4px;display:flex;align-items:center;justify-content:center;font-family:Inter,sans-serif;font-size:9px;color:#8A8678;">1:1</div>
</div>

**Kode / download**

```css
img {
  object-fit: cover;
  object-position: center;
  aspect-ratio: var(--aspect-ratio-card);
}

.hero img {
  aspect-ratio: var(--aspect-ratio-hero);
  object-position: center top; /* Fokus øverste del */
}

.avatar img {
  aspect-ratio: var(--aspect-ratio-square);
  border-radius: var(--radius-full);
}
```

---

## Anbefalede stockbilledkilder

**Princip** — StockSnap.io er primærkilden til kommerciel produktion. Pexels er den daglige arbejdskilde. Begge er verificerede og juridisk rene til kommerciel brug uden attribution-krav.

**Begrundelse** — Ikke alle royalty-free platforme er juridisk ækvivalente. CC0 Public Domain (StockSnap.io) er den absolutte øverste sikkerhedsmargin — ingen begrænsninger, ingen attribution, ingen redistribution-klausul. Pexels License er næsten tilsvarende robust med høj kvalitet og bred dækning. Unsplash bruges til kureret editorial-indhold. Pixabay undgås i kommerciel produktion (se advarsel nedenfor).

**Verificerede kilder**

| Kilde | URL | Licens | Brugssituation |
|---|---|---|---|
| StockSnap.io | stocksnap.io | CC0 Public Domain | Kommerciel produktion — juridisk reneste valg, ingen begrænsninger |
| Pexels | pexels.com | Pexels License | Daglig arbejdskilde — høj kvalitet, bred dækning, videoer inkluderet |
| Unsplash | unsplash.com | Unsplash License | Kureret editorial og lifestyle — høj æstetisk standard |
| Pixabay | pixabay.com | Pixabay License (proprietar) | Undgås i kommerciel produktion — se advarsel nedenfor |

**Primæranbefalinger**

- **Kommerciel produktion:** StockSnap.io (CC0) — brug dette som første valg når leverancen er betalt klientarbejde eller markedsføring.
- **Daglig designproduktion:** Pexels — stort bibliotek, god søgefunktion, video inkluderet.
- **Editorial og lifestyle-æstetik:** Unsplash — strengt kureret, konsistent høj kvalitet.

**Advarsel: Pixabay**

Pixabay skiftede licensmodel i 2019 fra CC0 til en proprietær Pixabay License. Platformen yder nul indemnification ved licensbrud fra uploadere — risikoen for tredjepartsrettigheder bæres af den der downloader. Brug ikke Pixabay til kommerciel produktion. De øvrige tre kilder dækker alle relevante behov.

**Søgeord der matcher ExempelBrands fotostil**

```
"professional meeting natural light"
"office candid warm"
"collaboration minimal"
"workplace authentic"
```
