# Cavanagh Family theme for Unraid Themer

A dark Cavanagh-branded preset for **Unraid 7** and [Unraid Themer](https://github.com/benjaminmue/unraid-themer), prepared for the Braavos server.

Canonical repository: [KaHooli/cavanagh-unraid-theme](https://github.com/KaHooli/cavanagh-unraid-theme)

It uses the authoritative colours, crest/wordmark artwork, typography, gold-line treatment and motto from the supplied **Cavanagh Family Authentik Theme 3.9**:

> *Síocháin agus Fairsinge*

## What changed in this edition

- `cavanagh-family.css` now follows Unraid Themer's preset format and ends with its required dark-base marker.
- The preset uses Unraid 7's Dynamix and UUI custom properties, including Community Apps compatibility tokens.
- The supplied background and wordmark are loaded through Unraid Themer's own cached Background image and Logo controls.
- Dashboard spacer rows are transparent, allowing the Cavanagh artwork to show between tiles while the tiles remain opaque.
- Unraid Themer handles activation, persistence, base-theme pairing and rollback.
- No file is appended to `/boot/config/go`, and no generated Unraid stylesheet is modified.
- Semantic array, disk-health and warning colours remain available for their original meanings.

## Install

### 1. Install Unraid Themer

In **Plugins → Install Plugin**, paste:

```text
https://github.com/benjaminmue/unraid-themer/raw/refs/heads/main/unraid-themer.plg
```

Unraid Themer is currently described by its author as beta software. Review its repository and keep a current flash backup before installing.

### 2. Copy this package to the flash drive

Clone or download this repository, then copy the complete `cavanagh-unraid-theme` folder to:

```text
/boot/config/plugins/cavanagh-unraid-theme
```

### 3. Add the preset and artwork

Open **Tools → Terminal** and run:

```sh
bash /boot/config/plugins/cavanagh-unraid-theme/install.sh
```

The helper only copies the preset to Unraid Themer's persistent and live preset folders and places the two selected artwork files in a persistent source folder.

### 4. Apply in Unraid Themer

Open **Settings → Utilities → Unraid Themer** and set:

| Setting | Value |
|---|---|
| Enable Unraid Themer | `Yes` |
| Theme preset | `Cavanagh Family` |
| Background image | `/boot/config/plugins/unraid.themer/cavanagh-assets/background-dark.webp` |
| Dim for legibility | `40%` recommended; adjust between `35–50%` to taste |
| Logo | `/boot/config/plugins/unraid.themer/cavanagh-assets/cavanagh-logo-dark.svg` |
| Icon set | `Default`, unless you prefer another Themer icon set |

Click **Apply**, then hard-refresh the browser with `Ctrl+Shift+R` or `Cmd+Shift+R`.

Unraid Themer will cache the artwork under its own web path and pair this preset with the built-in Black base automatically. If you use the Gray sidebar layout, it preserves that layout family and uses its dark base.

## Manual installation

If you do not want to run the helper:

1. Copy `cavanagh-family.css` to both:

   ```text
   /boot/config/plugins/unraid.themer/presets/cavanagh-family.css
   /usr/local/emhttp/plugins/unraid.themer/presets/cavanagh-family.css
   ```

2. Put `assets/background-dark.webp` and `assets/cavanagh-logo-dark.svg` somewhere persistent on the server.
3. Enter those absolute source paths in Unraid Themer's **Background image** and **Logo** fields.
4. Select **Cavanagh Family**, enable Themer and click **Apply**.

The first destination survives reboots; the second makes the preset visible immediately in the running WebGUI. Unraid Themer restores flash-backed configuration and assets on boot.

## Upgrade

Replace the package folder and run `install.sh` again. It overwrites only the Cavanagh preset and its two source artwork files. Reapply the preset in Unraid Themer and hard-refresh.

## Remove

First select another preset (or disable Unraid Themer) and click **Apply**. Then run:

```sh
bash /boot/config/plugins/cavanagh-unraid-theme/uninstall.sh
```

If desired, clear Unraid Themer's **Background image** and **Logo** fields and Apply to remove its cached copies. The removal helper does not uninstall Unraid Themer and does not touch other presets.

## Branding reference

The palette is:

| Role | Colour |
|---|---|
| Cavanagh Red | `#8F171B` |
| Deep Oxblood | `#4A0C10` |
| Antique Gold | `#C69A45` |
| Warm Ivory | `#F5EFE3` |
| Charcoal | `#151515` |
| Near Black | `#0C0C0D` |

The dark logo retains the original heraldic lion, serif family wordmark, centred short gold line and dot, and the motto *Síocháin agus Fairsinge*. The UI uses Unraid Themer's bundled Inter face for operational text and Georgia-style serif headings as a restrained link to the wordmark.

## Files

```text
cavanagh-family.css             Unraid Themer-compatible dark preset
assets/cavanagh-logo-dark.svg   Recommended 7:1 dark wordmark and motto
assets/background-dark.webp     Recommended 2560×1440 dark artwork
assets/cavanagh-logo-light.svg  Original light wordmark (reference/alternate)
assets/background-light.webp    Original light background (reference/alternate)
assets/cavanagh-icon-*.svg      Original standalone crest variants
assets/favicon-*.svg            Original favicon variants
install.sh                      Copies only into Unraid Themer's folders
uninstall.sh                    Removes only the Cavanagh preset/source files
preview.html                    Offline visual reference
```

## Compatibility note

The preset follows the current Unraid Themer theme contract as of 14 August 2026: a single CSS preset below 512 KB, no `@import`, no external `url()`, and `/*! themer-base: black */` as the final line. Unraid Themer and the Unraid 7 WebGUI can change, so review the theme after major upgrades.
