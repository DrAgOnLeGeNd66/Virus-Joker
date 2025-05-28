# Virus Joker - Balatro Mod

## Description
A legendary negative joker that spreads its viral infection to other jokers in your collection. Watch as the countdown ticks down with each discard, building tension until the virus spreads to an unsuspecting victim!

## Features
- **Legendary Rarity**: Only obtainable through Spectral packs
- **Negative Edition**: Starts as a negative joker (doesn't take up joker slots)
- **Viral Spread Mechanic**: Every 20 discarded cards, a random non-negative joker becomes negative
- **Visual Feedback**: Real-time countdown showing discards remaining
- **Dramatic Effects**: "Virus Spread!" notification when infection occurs

## Card Details
- **Name**: Virus
- **Rarity**: Legendary (4)
- **Cost**: $50
- **Effect**: "Every 20 discards spread the Virus (Makes random joker negative)"
- **Compatibility**: Not compatible with Blueprint, Eternal, or Perishable

## Installation Instructions

### Requirements
- Balatro game
- Steamodded mod loader

### Installation Steps
1. Download the mod files
2. Navigate to your Balatro mods folder:
   - Windows: `%APPDATA%/Balatro/Mods/`
   - Mac: `~/Library/Application Support/Balatro/Mods/`
   - Linux: `~/.local/share/Balatro/Mods/`
3. Create a new folder called "Virus"
4. Place the following files in the Virus folder:
   - `Virus.lua` (main mod file)
   - `localization/en-us.lua` (localization file)
   - `virus.png` (sprite file - 71x95 pixels)
5. Launch Balatro with Steamodded
6. The mod should load automatically

## File Structure

Mods/
└── Virus/
├── Virus.lua
├── virus.png
└── localization/
└── en-us.lua

## How to Obtain
- Purchase Spectral packs from the shop
- The Virus joker has a chance to appear as one of the legendary jokers
- Can also be found in other sources of legendary jokers

## Strategy Tips
- Use the Virus strategically to make powerful jokers negative (freeing up slots)
- Count your discards carefully - the countdown helps track progress
- Combine with other discard-focused strategies
- Remember that negative jokers don't take up joker slots but keep their effects

## Technical Details
- Tracks individual card discards (not discard actions)
- Resets counter to 0 after each spread
- Only targets non-negative jokers for infection
- Shows real-time progress with popup messages

## Version History
- v1.0.0: Initial release

## Credits
- Created by: Tetsu
- Mod Framework: Steamodded
- Game: Balatro by LocalThunk

## Support
If you encounter any issues or bugs, please check that:
1. Steamodded is properly installed
2. All mod files are in the correct locations
3. The sprite file is the correct size (71x95 pixels)

Enjoy spreading the virus! 🦠