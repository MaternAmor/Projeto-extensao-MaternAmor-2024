// import 'package:geolocator/geolocator.dart';

// Future<Position?> getCurrentLocation() async {
//   bool serviceEnabled;
//   LocationPermission permission;

//   // Verifica se os serviços de localização estão habilitados
//   serviceEnabled = await Geolocator.isLocationServiceEnabled();
//   if (!serviceEnabled) {
//     // Serviços de localização não estão habilitados
//     return null;
//   }

//   // Verifica as permissões de localização
//   permission = await Geolocator.checkPermission();
//   if (permission == LocationPermission.denied) {
//     permission = await Geolocator.requestPermission();
//     if (permission == LocationPermission.denied) {
//       // Permissão de localização negada
//       return null;
//     }
//   }

//   if (permission == LocationPermission.deniedForever) {
//     // Permissão de localização permanentemente negada
//     return null;
//   }

//   // Obtém a localização atual
//   return await Geolocator.getCurrentPosition(
//     desiredAccuracy: LocationAccuracy.high,
//   );
// }
