class ErrorModel {
  String? statusMsg;
  String? message;

  ErrorModel({this.statusMsg, this.message});

  ErrorModel.fromJson(Map<String, dynamic> json) {
    statusMsg = json['statusMsg'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['statusMsg'] = this.statusMsg;
    data['message'] = this.message;
    return data;
  }
}
