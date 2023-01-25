import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() {
  runApp(const SimpleMap());
}

class SimpleMap extends StatefulWidget {
  const SimpleMap({super.key});
  @override
  State<SimpleMap> createState() => _SimpleMapState();
}

class _SimpleMapState extends State<SimpleMap> {
  static const LatLng _kMapCenter = LatLng(24.842516, 46.652562);

  static const CameraPosition _kInitialPosition = CameraPosition(
    target: _kMapCenter,
    zoom: 13,
    tilt: 2,
    bearing: 0,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            const GoogleMap(
              initialCameraPosition: _kInitialPosition,
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 400,
                width: 430,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 170, 169, 169),
                      blurRadius: 20,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(40),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Can stay parked: ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '10 min',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          'Extend',
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.blueAccent),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      'RAV4',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Toyota RAV4 Hybrid SUV',
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Plate number: ',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          '1GFH875',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(100, 0, 100, 0),
                      child: Divider(
                        thickness: 4,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          color: Colors.blueAccent, borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(50, 15, 50, 15),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(
                              Icons.lock_open,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Unlock your car',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
