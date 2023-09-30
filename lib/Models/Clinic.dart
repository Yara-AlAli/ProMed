class Clinic {
  String Name, Place, PreviewStartEnd, Picture, TelephoneNumber, MobileNumber;
  List<String> AvailableHours, RestTimes;
  int Price, PreviewLength, BreakAppointments;
  bool Online;
  Clinic(
      this.AvailableHours,
      this.BreakAppointments,
      this.Name,
      this.Online,
      this.Picture,
      this.Place,
      this.PreviewLength,
      this.PreviewStartEnd,
      this.Price,
      this.RestTimes,
      this.TelephoneNumber,
      this.MobileNumber);
}
