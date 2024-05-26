
class SuCo {
  String chiTiet;
  String hinhAnh;
  String id;
  bool khanCap;
  String loaiSuCo;
  int ngayBatDau;
  int ngayTiepNhan;
  int ngayXuLy;
  String trangThai;
  String vitriP;
  int ngayHoanThanh;
  String nguoiTiepNhan;
  String motaHoanThanh;

  SuCo({
    required this.chiTiet,
    required this.hinhAnh,
    required this.id,
    required this.khanCap,
    required this.loaiSuCo,
    required this.ngayBatDau,
    required this.ngayTiepNhan,
    required this.ngayXuLy,
    required this.trangThai,
    required this.vitriP,
    required this.nguoiTiepNhan,
    required this.ngayHoanThanh,
    required this.motaHoanThanh,
  });

  factory SuCo.fromJson(Map<String, dynamic> json) {
    return SuCo(
      chiTiet: json['chiTiet'],
      hinhAnh: json['hinhAnh'],
      id: json['id'],
      khanCap: json['khanCap'],
      loaiSuCo: json['loaiSuCo'],
      ngayBatDau: json['ngayBatDau'],
      ngayTiepNhan: json['ngayTiepNhan'],
      ngayXuLy: json['ngayXuLy'],
      trangThai: json['trangThai'],
      vitriP: json['vitriP'],
      nguoiTiepNhan :json['nguoiTiepNhan'],
      ngayHoanThanh :json['ngayHoanThanh'],
      motaHoanThanh: json['motaHoanThanh'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'chiTiet': chiTiet,
      'hinhAnh': hinhAnh,
      'id': id,
      'khanCap': khanCap,
      'loaiSuCo': loaiSuCo,
      'ngayBatDau': ngayBatDau,
      'ngayTiepNhan': ngayTiepNhan,
      'ngayXuLy': ngayXuLy,
      'trangThai': trangThai,
      'vitriP': vitriP,
      'motaHoanThanh': motaHoanThanh,
      'nguoiTiepNhan': nguoiTiepNhan,
      'ngayHoanThanh': ngayHoanThanh,
    };
  }
}
