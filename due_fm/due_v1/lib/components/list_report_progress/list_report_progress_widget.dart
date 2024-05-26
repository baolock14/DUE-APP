import 'package:due_v1/flutter_flow/flutter_flow_theme.dart';
import 'package:due_v1/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import '../../pages/c_b_user/c_b_request/c_b_detail_form/c_b_detail_form_widget.dart';
import '../../suco.dart';
import 'package:intl/intl.dart';

class ListReportProgressWidget extends StatelessWidget {
  final SuCo suCo;

  ListReportProgressWidget({required this.suCo});


  @override
  Widget build(BuildContext context) {
    String formatDateTime(int timestamp) {
      var date = DateTime.fromMillisecondsSinceEpoch(timestamp);
      var formattedDate = DateFormat('HH:mm MM/dd/yyyy').format(date);
      return formattedDate;
    }

    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Text(
                "Sự cố: ",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              Text(
                suCo.loaiSuCo,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              children: [
                Row(
                  children: [
                    const Text(
                      "Vị Trí: ",
                    ),
                    Text(suCo.vitriP),
                  ],
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    const Text(
                      "Tình Trạng: ",
                    ),
                    Text(
                      suCo.khanCap ? 'Khẩn cấp' : 'Bình thường',
                      style: TextStyle(
                        color: suCo.khanCap ? Colors.red : Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    const Text(
                      "Ngày tạo: ",
                    ),
                    Text(formatDateTime(suCo.ngayBatDau)),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Row(
                children: [
                  if (suCo.trangThai == 'a')
                    _buildStatusContainer('Tiếp nhận', Colors.amber),
                  if (suCo.trangThai == 'b')
                    _buildStatusContainer('Đang xử lý', Colors.orangeAccent),
                  if (suCo.trangThai == 'c')
                    _buildStatusContainer('Hoàn thành', Colors.green),
                  if (suCo.trangThai == 'd')
                    _buildStatusContainer('Xử lý lỗi', Colors.red),
                ],
              ),
              Expanded(child: Container()),
              GestureDetector(
                onTap: () async {
                  // context.pushNamed('CB_DetailForm');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CBDetailFormWidget(suCo: suCo)),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 15, top: 10),
                  padding: const EdgeInsets.only(left:10,right: 5),
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFA0CCFD),
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: const Offset(2, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Chi tiết',
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 5), // khoảng cách giữa văn bản và biểu tượng
                      Icon(
                        Icons.arrow_forward, // biểu tượng bạn muốn sử dụng
                        color: Colors.blueAccent, // màu của biểu tượng
                        size: 16, // kích thước của biểu tượng
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
Widget _buildStatusContainer(String statusText, Color color) {
  return Container(
    margin: const EdgeInsets.only(left: 15, top: 10),
    padding: const EdgeInsets.only(left: 15,right: 15),
    height: 30.0,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(20.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(2, 2),
        ),
      ],
    ),
    alignment: const AlignmentDirectional(0.0, 0.0),
    child: Text(
      statusText,
      style: const TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontWeight: FontWeight.bold),
    ),
  );
}
