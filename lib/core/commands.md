# For Localization
```bash
dart run easy_localization:generate -S "assets/translations/" -O "lib/core/translations";
dart run easy_localization:generate -S "assets/translations/" -O "lib/core/translations" -o "locale_keys.g.dart" -f keys
```

# Generates files once
```bash
dart run build_runner build --delete-conflicting-outputs
```

# Remove generated files
```bash
dart run build_runner clean
```

# Fix imports
```bash
dart fix --apply 
```