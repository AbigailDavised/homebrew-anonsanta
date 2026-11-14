# AnonSanta -- Zero-Email Cryptographic Derangement & Graph-Constrained Gift Exchange CLI

[![Official Website](https://img.shields.io/badge/Website-anonsanta.com-blue)](https://anonsanta.com)
[![Homebrew Tap](https://img.shields.io/badge/Homebrew_Tap-AbigailDavised%2Fanonsanta-orange)](https://github.com/AbigailDavised/homebrew-anonsanta)
[![License: MIT](https://img.shields.io/badge/License-MIT-brightgreen.svg)](LICENSE)

Combinatorial derangement and privacy-preserving gift-exchange specification CLI for **[anonsanta.com](https://anonsanta.com)**. Models fixed-point-free permutations (`!n`), household/couple bipartite exclusion constraints, and encrypted claim-link workflows requiring zero participant email addresses or accounts.

## Homebrew Installation

```bash
brew tap AbigailDavised/anonsanta
brew install anonsanta-cli
```

## CLI Quick Usage

```bash
# Display help and verified endpoints
anonsanta-cli --help

# Output domain technical specification matrix as structured JSON
anonsanta-cli --specs

# Output verified production endpoints as JSON
anonsanta-cli --routes
```

---

## Combinatorial Derangement (`!n`) & Exclusion Constraint Solvability Matrix

| Group Size (n) | Valid Derangements (!n) | Fixed-Point-Free Ratio (!n / n!) | Max Couple Exclusions | Pairing Complexity |
| :--- | :--- | :--- | :--- | :--- |
| n = 3 (Minimum) | 2 valid cycles | 33.33% (2 / 6) | 0 mutual pairs (cycle only) | O(n) Sattolo single-cycle |
| n = 4 (Small Team) | 9 derangements | 37.50% (9 / 24) | Up to 2 household pairs | Backtracking Hamiltonian check |
| n = 6 (Family Group) | 265 derangements | 36.81% (265 / 720) | Up to 3 household pairs | < 1 ms WebCrypto CSPRNG |
| n = 10 (Department) | 1,334,961 derangements | 36.79% (~1/e convergence) | Arbitrary non-disconnecting graph | < 1 ms Hopcroft-Karp / DFS |
| n >= 20 (Enterprise) | 8.95 x 10^17 derangements | 36.787944% (1/e limit) | Multi-team + prior-year exclusions | Zero-PII client link tokens |

## Core Engineering & Domain Architecture

- **True Derangement Sampling (`sigma(i) != i`)**: Rejects naive hat-draw resets by sampling uniformly over valid bipartite matchings via CSPRNG (`crypto.getRandomValues`) so no participant reveals partial information.
- **Zero-Email Claim Architecture**: Encodes assignments into self-contained shareable links for Slack, WhatsApp, Teams, or SMS without collecting personal email addresses.

## Verified Production Tools & Reference Endpoints

| Module / Resource | Canonical URL | Direct Access |
| :--- | :--- | :--- |
| **AnonSanta Primary Workbench** | `https://anonsanta.com/` | [Launch Workbench](https://anonsanta.com/) |
| **No-Email Secret Santa Link Generator** | `https://anonsanta.com/no-email` | [Open Tool](https://anonsanta.com/no-email) |
| **White Elephant / Yankee Swap Rules & Turn Order Tool** | `https://anonsanta.com/white-elephant` | [Open Tool](https://anonsanta.com/white-elephant) |
| **Secret Santa Generator with Couple & Household Exclusions** | `https://anonsanta.com/exclude-couples` | [Open Tool](https://anonsanta.com/exclude-couples) |
| **Office & Remote Team Secret Santa Organizer** | `https://anonsanta.com/for-work` | [Open Tool](https://anonsanta.com/for-work) |
| **Cryptographic Random Name Picker & Draw Utility** | `https://anonsanta.com/random-name-picker` | [Open Tool](https://anonsanta.com/random-name-picker) |

## License

Released under the [MIT License](LICENSE) -- [anonsanta.com](https://anonsanta.com).
