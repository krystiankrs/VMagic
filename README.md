# VMagic - Projekt Automatyzacji Środowiska Wirtualnego

## Opis projektu

VMagic to projekt mający na celu stworzenie automatyzowanego środowiska wirtualnego z użyciem Vagrant i Ansible. W ramach projektu realizujemy konfigurację maszyn wirtualnych z różnymi systemami operacyjnymi, automatyzujemy provisioning i konfigurację, a także przygotowujemy dokumentację i testy.

---

## Technologie

- **Vagrant** – zarządzanie maszynami wirtualnymi
- **VirtualBox** – provider maszyn wirtualnych
- **Ansible** – automatyzacja konfiguracji (w kolejnych sprintach)
- **Git i GitHub** – kontrola wersji i zdalne repozytorium

---

## Instrukcja uruchomienia

1. **Pobierz repozytorium:**

   ```bash
   git clone <URL_REPOZYTORIUM>
   cd VMagic
   ```

2. **Uruchom maszyny wirtualne:**

   ```bash
   vagrant up
   ```

3. **Sprawdź działanie maszyn i folderów współdzielonych:**

   Zaloguj się do VM np. `vagrant ssh ubuntu` i sprawdź, czy folder `/home/vagrant/shared` działa prawidłowo.

4. **Testy:**

   Stwórz dowolny 'test.txt' w folderze /shared, a następnie uruchom skrypt testowy na hoście lub maszynie:

   ```bash
   ./tests/test_shared.sh
   ```

---

## Licencja

Projekt na licencji MIT (możesz dostosować według potrzeb).

