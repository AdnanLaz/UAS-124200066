import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:uas_mobile_124200066/datamodel.dart';
import 'package:uas_mobile_124200066/kursmatauang.dart';
import 'package:uas_mobile_124200066/resources.dart';


class hasilconvertmatauangEUR extends StatefulWidget {
  const hasilconvertmatauangEUR({Key? key,}) : super(key: key);
  @override
  _hasilconvertmatauangEURState createState() => _hasilconvertmatauangEURState();
}

class _hasilconvertmatauangEURState extends State<hasilconvertmatauangEUR> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 127, 203, 151),
        title: Text('Kurs Mata Uang')
        ),
      body: _buildDetailCardBody(),
    );
  }

  Widget _buildDetailCardBody() {
    return Container(
      child: FutureBuilder(
        future: ConvertDataSource.instance.loadConvertEUR(),
        builder: (
          BuildContext context,
          AsyncSnapshot<dynamic> snapshot,
        ) {
          if (snapshot.hasError) {
            return _buildErrorSection();
          }
          if (snapshot.hasData) {
            convert convertModels = convert.fromJson(snapshot.data);
            return _buildSuccessSection(convertModels);
          }
          return _buildLoadingSection();
        },
      ),
    );
  }

  Widget _buildErrorSection() {
    return Text("Error");
  }

  Widget _buildEmptySection() {
    return Text("Empty");
  }

  Widget _buildLoadingSection() {
    return Center(
      child: CircularProgressIndicator(
      ),
    );
  }

  Widget _buildSuccessSection(convert data) {
          return Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 226, 254, 248),
            ),
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      child: Text("${data.newAmount}"),
                    ),
                  ],
                ),

              ],
            ),
          );
  }
}
