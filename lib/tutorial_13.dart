import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class MyApp13 extends StatefulWidget {
  const MyApp13({super.key});

  @override
  State<MyApp13> createState() => _MyApp13State();
}

class _MyApp13State extends State<MyApp13> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  Future<void> getLocationData() async {
    try {
      bool serviceEnabled;
      LocationPermission permission;

      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        debugPrint('Location service tidak aktif');
        return;
      }

      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.deniedForever) {
        debugPrint('Permission lokasi ditolak permanen');
        return;
      }

      if (permission == LocationPermission.denied) {
        debugPrint('Permission lokasi ditolak');
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      debugPrint('=== Lokasi Saat Ini ===');
      debugPrint('Latitude: ${position.latitude}');
      debugPrint('Longitude: ${position.longitude}');

      List<Location> kampus = await locationFromAddress(
        'Telkom University, Bandung, Indonesia',
      );

      debugPrint('=== Koordinat Alamat Kampus ===');
      debugPrint('Latitude Kampus: ${kampus.first.latitude}');
      debugPrint('Longitude Kampus: ${kampus.first.longitude}');
      
      List<Placemark> placemarks = await placemarkFromCoordinates(
        52.2165157,
        6.9437819,
      );

      Placemark place = placemarks.first;

      debugPrint('=== Alamat dari Koordinat ===');
      debugPrint('Jalan: ${place.street}');
      debugPrint('Kota: ${place.locality}');
      debugPrint('Negara: ${place.country}');
    } catch (e) {
      debugPrint('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Cek Debug Console untuk melihat hasil lokasi'),
      ),
    );
  }
}